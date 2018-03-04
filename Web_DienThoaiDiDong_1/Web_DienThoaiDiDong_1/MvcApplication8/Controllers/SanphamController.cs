using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication8.Models;

namespace MvcApplication8.Controllers
{
    public class SanphamController : Controller
    {
        //
        // GET: /Sanpham/
        DienThoaiDiDong1Entities1 db = new DienThoaiDiDong1Entities1();
        // Điện thoại mới
        public PartialViewResult DienThoaiMoiPartial()
        {
            ////Trả về một phần của HTML
            return PartialView(db.sanphams.Where(n => n.moi == 1).ToList());   
        }
        // sản phẩm theo mục
        public ViewResult SanPhamTheoMuc(string MaDanhMuc)
        {
            theloaisp theloai = db.theloaisps.SingleOrDefault(n => n.theloai_id == MaDanhMuc);
            if (theloai == null)
            {
                ViewBag.danhmuc = "Đang cập nhật";
                return null;
            }
            else
            {
                
                return View(db.sanphams.Where(n => n.theloai_id == MaDanhMuc).ToList());
            }

        }
        // chi tiết sản phẩm
        public ViewResult ChiTietSanPham(int masp)
        {
            ////Trả về trang HTML đầy đủ
            return View(db.sanphams.SingleOrDefault(n => n.sanpham_id == masp));
        }
        // sản phẩm liên quan
        public PartialViewResult SanPhamLienQuan(string theloai_id)
        {
            return PartialView(db.sanphams.Where(n => n.theloai_id == theloai_id).ToList());
        }

    }
}
