using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication8.Models;
using MvcApplication8.Areas.Admin.Controllers;

namespace MvcApplication8.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        //
        // GET: /Admin/Login/

        DienThoaiDiDong1Entities1 db = new DienThoaiDiDong1Entities1();
        public ActionResult Login()
        {
            return View();
        }
       
        [HttpPost]
        public ActionResult Dangnhap(FormCollection f,string url )
        {
            
           
            string s_taikhoan = f["txtEmail"].ToString();
            string s_matkhau = f["txtPassword"].ToString();
            User ad = db.Users.SingleOrDefault(n => n.Taikhoan == s_taikhoan && n.Matkhau == s_matkhau);
            if (ad != null)
            {
                ViewBag.Thongbao = "Đăng nhập thành công!";
                //luu lại tài khoản
                Session["Taikhoan"] = ad;
                Session["tenadmin"] = s_taikhoan;
                return RedirectToAction("TrangchuAdmin", "TrangchuAdmin");
                
            }
            ViewBag.Thongbao = " Tên tài khoản hoặc mật khẩu không đúng!!!";
            return View();
        }       

    }
}
