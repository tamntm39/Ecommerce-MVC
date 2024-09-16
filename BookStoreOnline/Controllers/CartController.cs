﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BookStoreOnline.Areas.Admin.Models;
using BookStoreOnline.Models;
using PayPal.Api;
using static BookStoreOnline.Areas.Admin.Constants.Constants;

namespace BookStoreOnline.Controllers
{
    public class CartController : Controller
    {
        NhaSachEntities db = new NhaSachEntities();
        // GET: Cart
        public ActionResult Index()
        {
            return View();
        }
        public List<CartItem> GetCart()
        {
            List<CartItem> myCart = Session["GioHang"] as List<CartItem>;


            if (myCart == null)
            {
                myCart = new List<CartItem>();
                Session["GioHang"] = myCart;
            }
            return myCart;
        }

        public ActionResult AddToCart(FormCollection product)
        {
            List<CartItem> myCart = GetCart();

            int id = int.Parse(product["ProductID"]);
            int quantity = int.Parse(product["Quantity"]);

            CartItem sanPham = myCart.FirstOrDefault(p => p.MaSanPham == id);
            if (sanPham == null)
            {
                sanPham = new CartItem(id);
                sanPham.SoLuong = quantity;
                myCart.Add(sanPham);
            }
            else
            {
                sanPham.SoLuong += quantity;
            }
            return RedirectToAction("GetCartInfo", "Cart");
        }
        private int GetTotalNumber()
        {
            int totalNumber = 0;
            List<CartItem> myCart = GetCart();
            if (myCart != null)
                totalNumber = myCart.Sum(sp => sp.SoLuong);
            return totalNumber;
        }

        public ActionResult AddSingleProduct(int id)
        {
            List<CartItem> myCart = GetCart();


            int quantity = 1;

            CartItem sanPham = myCart.FirstOrDefault(p => p.MaSanPham == id);
            if (sanPham == null)
            {
                sanPham = new CartItem(id);
                sanPham.SoLuong = quantity;
                myCart.Add(sanPham);
            }
            else
            {
                sanPham.SoLuong += quantity;
            }
            return RedirectToAction("GetCartInfo", "Cart");
        }

        public ActionResult Remove(int id)
        {
            List<CartItem> myCart = GetCart();
            CartItem Product = myCart.FirstOrDefault(p => p.MaSanPham == id);
            myCart.Remove(Product);
            return RedirectToAction("GetCartInfo", "Cart");
        }

        private decimal GetTotalPrice()
        {
            decimal totalPrice = 0;
            List<CartItem> myCart = GetCart();
            if (myCart != null)
                totalPrice = myCart.Sum(sp => sp.FinalPrice());
            return totalPrice;
        }



        public ActionResult GetCartInfo()
        {
            List<CartItem> myCart = GetCart();

            if (myCart == null || myCart.Count == 0)
            {
                return RedirectToAction("NullCart", "Cart");
            }
            ViewBag.TotalNumber = GetTotalNumber();
            ViewBag.TotalPrice = GetTotalPrice();
            return View(myCart);
        }

        public ActionResult Update(FormCollection product)
        {
            int id = int.Parse(product["ProductID"]);
            int quantity = int.Parse(product["Quantity"]);

            List<CartItem> myCart = GetCart();
            CartItem sanPham = myCart.FirstOrDefault(p => p.MaSanPham == id);
            sanPham.SoLuong = quantity;
            return RedirectToAction("GetCartInfo", "Cart");
        }

        public ActionResult CartPartial()
        {
            ViewBag.TotalNumber = GetTotalNumber();

            return PartialView();
        }

        public ActionResult NullCart()
        {
            return View();
        }

        public ActionResult InsertOrder(string address, string discountCode)
        {
            DONHANG donHang = new DONHANG();
            var khachHangDaDangNhap = (KHACHHANG)Session["TaiKhoan"];
            donHang.ID = khachHangDaDangNhap.MaKH;
            donHang.NgayDat = DateTime.Now.Date;
            donHang.DiaChi = string.IsNullOrEmpty(address) ? khachHangDaDangNhap.DiaChi : address;
            donHang.TrangThai = StatusOrder.NoInform.ToString();
            decimal totalOrder = GetTotalPrice();
            donHang.TrangThaiThanhToan = StatusPayment.Unpaid.ToString();
            donHang.PhuongThucThanhToan = TypePayment.COD.ToString();
            donHang.TongTien = (int)totalOrder;
            if (!string.IsNullOrEmpty(discountCode))
            {
                KHUYENMAI kMai = db.KHUYENMAIs.FirstOrDefault(x => x.MaKM == discountCode);
                decimal newTotalPrice = default;
                if (kMai != null)
                { 
                    List<DONHANG> donHangDaMua = db.DONHANGs.Where(x => x.ID == khachHangDaDangNhap.MaKH && x.MaKM == discountCode).ToList();
                    if (donHangDaMua.Count < kMai.SoLanDung)
                    {
                        if (kMai.SoTienMuaHangToiThieu <= totalOrder)
                        {
                            newTotalPrice = totalOrder - kMai.SoTienKM;
                            donHang.TongTien = (int)newTotalPrice;
                            donHang.MaKM = discountCode;
                        } 
                    }
                    
                }
            }    

            db.DONHANGs.Add(donHang);
            db.SaveChanges();

            List<CartItem> cartItems = GetCart();
            foreach (var item in cartItems)
            {
                CHITIETDONHANG chiTietDonHang = new CHITIETDONHANG();
                chiTietDonHang.MaDonHang = donHang.MaDonHang;
                chiTietDonHang.MaSanPham = item.MaSanPham;
                chiTietDonHang.SoLuong = item.SoLuong;
                //prod.UnitPrice = item.FinalPrice();

                db.CHITIETDONHANGs.Add(chiTietDonHang);
                db.SaveChanges();
            }
            Session["GioHang"] = null;
            return RedirectToAction("Index/" + khachHangDaDangNhap.MaKH, "Order");
        }

        public ActionResult FailureView()
        {
            return View();
        }
        public ActionResult SuccessView()
        {
            return View();
        }

        public ActionResult PaymentWithPaypal(string Cancel = null)
        {
            //getting the apiContext  
            APIContext apiContext = PaypalConfiguration.GetAPIContext();
            try
            {
              
                string payerId = Request.Params["PayerID"];
                if (string.IsNullOrEmpty(payerId))
                {
                     
                    string baseURI = Request.Url.Scheme + "://" + Request.Url.Authority + "/cart/PaymentWithPayPal?";
                   
                    var guid = Convert.ToString((new Random()).Next(100000));
                  
                    var createdPayment = this.CreatePayment(apiContext, baseURI + "guid=" + guid);
                    var links = createdPayment.links.GetEnumerator();
                    string paypalRedirectUrl = null;
                    while (links.MoveNext())
                    {
                        Links lnk = links.Current;
                        if (lnk.rel.ToLower().Trim().Equals("approval_url"))
                        {
                            paypalRedirectUrl = lnk.href;
                        }
                    }
                    // saving the paymentID in the key guid  
                    Session.Add(guid, createdPayment.id);
                    return Redirect(paypalRedirectUrl);
                }
                else
                {
                    // This function exectues after receving all parameters for the payment  
                    var guid = Request.Params["guid"];
                    var executedPayment = ExecutePayment(apiContext, payerId, Session[guid] as string);
                    //If executed payment failed then we will show payment failure message to user  
                    if (executedPayment.state.ToLower() != "approved")
                    {
                        return View("FailureView");
                    }
                }
            }
            catch (Exception ex)
            {
                return View("FailureView");
            }
            //on successful payment, show success page to user.  
            return View("SuccessView");
        }
        private PayPal.Api.Payment payment;
        private Payment ExecutePayment(APIContext apiContext, string payerId, string paymentId)
        {
            var paymentExecution = new PaymentExecution()
            {
                payer_id = payerId
            };
            this.payment = new Payment()
            {
                id = paymentId
            };
            return this.payment.Execute(apiContext, paymentExecution);
        }
        private Payment CreatePayment(APIContext apiContext, string redirectUrl)
        {
           /* List<CartItem> listSanPham = Session["GioHang"] as List<CartItem>;
            //create itemlist and add item objects to it  
            var itemList = new ItemList()
            {
                items = new List<Item>()
            };
            //Adding Item Details like name, currency, price etc  

            foreach (var item in listSanPham)
            {
                itemList.items.Add(new Item()
                {
                    name = item.TenSanPham,
                    currency = "USD",
                    price = item.Gia.ToString(),
                    quantity = item.SoLuong.ToString(),
                    sku = item.MaSanPham.ToString(),
                });
            }*/

            //Testtttttttttttttttttttttttttttttttttttttttttttttttttt

           //create itemlist and add item objects to it  
            var itemList = new ItemList()
            {
                items = new List<Item>()
            };
            //Adding Item Details like name, currency, price etc  
            itemList.items.Add(new Item()
            {
                name = "Giá sản phẩm",
                currency = "USD",
                price = "0",
                quantity = "1",
                sku = "sku"
            });
       
            var payer = new Payer()
            {
                payment_method = "paypal"
            };
            // Configure Redirect Urls here with RedirectUrls object  
            var redirUrls = new RedirectUrls()
            {
                cancel_url = redirectUrl + "&Cancel=true",
                return_url = redirectUrl
            };
            // Adding Tax, shipping and Subtotal details  
            var details = new Details()
            {
                tax = "0",
                shipping = "0",
                subtotal = "22.4"
            };
            //Final amount with details  
            var amount = new Amount()
            {
                currency = "USD",
                total = "22.4", // Total must be equal to sum of tax, shipping and subtotal.  
                details = details
            };
            var transactionList = new List<Transaction>();
            // Adding description about the transaction  
            var paypalOrderId = DateTime.Now.Ticks;
            transactionList.Add(new Transaction()
            {
                description = $"Invoice #{paypalOrderId}",
                invoice_number = paypalOrderId.ToString(), //Generate an Invoice No    
                amount = amount,
                item_list = itemList
            });
            this.payment = new Payment()
            {
                intent = "sale",
                payer = payer,
                transactions = transactionList,
                redirect_urls = redirUrls
            };
            // Create a payment using a APIContext  
            return this.payment.Create(apiContext);
        }
        [HttpPost]
        public JsonResult ApplyDiscount(string discountCode)
        {
            // Dummy logic to calculate new total price
            KHUYENMAI kMai = db.KHUYENMAIs.FirstOrDefault(x => x.MaKM == discountCode);
            bool status = false;
            string errorMessage = string.Empty;
            decimal newTotalPrice = default;
            decimal discountAmount = default;
            if (kMai == null)
            {
                status = false;
                errorMessage = "Mã KM này không tồn tại";
            }
            else
            {
                var khachHangDaDangNhap = (KHACHHANG)Session["TaiKhoan"];
                List<DONHANG> donHang = db.DONHANGs.Where(x => x.ID == khachHangDaDangNhap.MaKH && x.MaKM == discountCode).ToList();
                if (donHang.Count >= kMai.SoLanDung)
                {
                    status = false;
                    errorMessage = "Khách hàng đã đạt quá số lần dùng mã";
                }
                else
                {
                    decimal totalOrder = GetTotalPrice();
                    if (kMai.SoTienMuaHangToiThieu > totalOrder)
                    {
                        status = false;
                        errorMessage = $"Gía trị đơn hàng chưa đủ yêu cầu dùng mã. Tối thiểu phải là: {kMai.SoTienMuaHangToiThieu}";
                    }
                    else
                    {
                        status = true;
                        newTotalPrice = totalOrder - kMai.SoTienKM;
                        discountAmount = kMai.SoTienKM;
                    }
                };
            }
            return Json(new
            {
                success = status,
                newTotalPrice,
                discountAmount,
                errorMessage
            });

        }

    }
}