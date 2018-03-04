using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication8.Models;
using System.Data.Entity;


namespace MvcApplication8.Controllers
{
    public class NguoidungController : Controller
    {
        //
        // GET: /Nguoidung/

        //khởi tạo database->  truy xuất dữ liệu
        DienThoaiDiDong1Entities1 db = new DienThoaiDiDong1Entities1();
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet] //phương thức truyền 
        public ActionResult Dangky()
        {
            return View();
        }
        [HttpPost]//pt truyền các giá trị value
        [ValidateAntiForgeryToken]
        public ActionResult Dangky(khachhang kh, string url)
        {
            if (ModelState.IsValid)
            {
                //cho dữ liệu vào databse ->table khachhang
                db.khachhangs.Add(kh);
                //lưu vào cơ sở dữ liệu
                db.SaveChanges();
                Session["Taikhoan"] = kh;
                Session["tentaikhoan"] = kh.khachhang_taikhoan;
                return RedirectToAction("Index", "Home");
            }
            return View();

        }
        public ActionResult Dangnhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Dangnhap(FormCollection f,string url)
        {

            string s_taikhoan = f["txttaikhoan"].ToString();
            string s_matkhau = f["txtmatkhau"].ToString();
            khachhang kh = db.khachhangs.SingleOrDefault(n => n.khachhang_taikhoan == s_taikhoan && n.khachhang_matkhau == s_matkhau);
            if (kh != null)
            {
                ViewBag.Thongbao = "Đăng nhập thành công!";
                //luu lại tài khoản
                Session["Taikhoan"] = kh;
                Session["tentaikhoan"] = s_taikhoan;
                return RedirectToAction("Index","Home");
            }

            ViewBag.Thongbao = " Tên tài khoản hoặc mật khẩu không đúng!!!";
            return View();
        }
    }
}
