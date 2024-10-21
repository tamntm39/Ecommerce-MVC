using BookStoreOnline.Areas.Admin.Models;
using BookStoreOnline.Core;
using BookStoreOnline.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;

namespace BookStoreOnline.Areas.Admin.Controllers
{
    public class AuthController : Controller
    {
        private NhaSachEntities db = new NhaSachEntities();
        // GET: Admin/Login
        public ActionResult Login()
        {
            if (Session["TaiKhoan"] != null)
            {
                return RedirectToAction("Index", "Dashboard");
            }
            return View();
        }
        [HttpPost]
        public ActionResult Login(LoginViewModel taikhoan, NHANVIEN nv)
        {
            if (ModelState.IsValid)
            {
                // Kiểm tra định dạng email
                if (string.IsNullOrEmpty(nv.Email) || !nv.Email.EndsWith("@gmail.com", StringComparison.OrdinalIgnoreCase))
                {
                    ViewBag.ThongBaoEmail = "Email phải có định dạng @gmail.com";
                    return View();
                }


                // Mã hóa mật khẩu và kiểm tra thông tin đăng nhập
                string matKhau = Extension.GetMd5Hash(taikhoan.Password);
                var account = db.NHANVIENs.FirstOrDefault(k => k.Email == taikhoan.Email && k.MatKhau == matKhau);
                if (account != null)
                {
                    Session["TaiKhoan"] = account;
                    return RedirectToAction("Index", "Dashboard");
                }
                else
                {
                    ModelState.AddModelError("", "Tài khoản hoặc mật khẩu không chính xác!");
                }
            }

            // Nếu có lỗi, hiển thị lại form đăng nhập
            return View(taikhoan);
        }

        public ActionResult Logout()
        {
            Session["TaiKhoan"] = null;
            return RedirectToAction("Login", "Auth");
        }
    }
}