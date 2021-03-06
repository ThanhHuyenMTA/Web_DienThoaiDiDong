﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication8.Models;
namespace MvcApplication8.Controllers
{
    public class GiohangController : Controller
    {
        //
        // GET: /Giohang/
        //xây dựng phương thức

       
      
        DienThoaiDiDong1Entities1 db = new DienThoaiDiDong1Entities1();

        #region Giỏ hàng
        //Lấy giỏ hàng
        public List<Giohang> LayGiohang()
        {
            List<Giohang> listgiohang = Session["Giohang"] as List<Giohang>;//ép kiểu
            if (listgiohang == null)
            {
                //nếu giỏ hàng không tồn tại thì mình tiến hành tạo list giỏ hàng
                listgiohang = new List<Giohang>();
                Session["Giohang"] = listgiohang;
            }
            return listgiohang;
        }

        //thêm giỏ hàng
        public ActionResult ThemGiohang(int ma_sp, string url)
        {
            sanpham sp = db.sanphams.SingleOrDefault(n =>n.sanpham_id==ma_sp);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //khởi tạo giỏ hàng &lấy ra session giohang
            List<Giohang> listGiohang = LayGiohang();
            //kiểm tra sách đã tồn tại trong session[Giohang] hay chưa?
            Giohang gh_sp = listGiohang.Find(n => n.sanpham_id == ma_sp);
            if (gh_sp == null)
            {
                gh_sp = new Giohang(ma_sp);
                //add sản phẩm mới vào list
                listGiohang.Add(gh_sp);
                return Redirect(url);
            }
            else
            {
                gh_sp.soluong_sp++;
                return Redirect(url);
            }
        }

        //cập nhật giỏ hàng
        public ActionResult CapnhatGiohang(int ma_sp, FormCollection f)
        {
            //kiểm tra mã sản phẩm 
            sanpham sp = db.sanphams.SingleOrDefault(n => n.sanpham_id == ma_sp);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //lấy giỏ hàng từ session
            List<Giohang> listGiohang = LayGiohang();
            //kiểm tra sản phẩm có tồn tại  trong session
            Giohang gh_sp = listGiohang.SingleOrDefault(n => n.sanpham_id == ma_sp);
            //nếu tồn tại cho sửa
            if (gh_sp != null)
            {
                gh_sp.soluong_sp = int.Parse(f["txtSoluong"].ToString());
                //phut 14
            }

            //kh gửi biến model ,chỉ gọi về nỏ nên kh trả về view
            //lấy giá trị từ giỏ hàng
            return RedirectToAction("Giohang");

        }

        //xóa giỏ hàng
        public ActionResult XoaGiohang(int ma_sp)
        {
            //kiểm tra mã sản phẩm 
            sanpham sp = db.sanphams.SingleOrDefault(n => n.sanpham_id == ma_sp);
            //nếu ghép sai mã sản phẩm thì trả về trang lỗi
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //lấy giỏ hàng từ session
            List<Giohang> listGiohang = LayGiohang();
            //kiểm tra sản phẩm có tồn tại  trong session
            Giohang gh_sp = listGiohang.SingleOrDefault(n => n.sanpham_id == ma_sp);
            //nếu tồn tại cho sửa
            if (gh_sp != null)
            {
                listGiohang.RemoveAll(n => n.sanpham_id == ma_sp);


            }
            if (listGiohang.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            return RedirectToAction("Giohang");

        }
        //Xây dựng trang giỏ hàng

        public ActionResult Giohang()
        {
            if (Session["Giohang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<Giohang> listGiohang = LayGiohang();
            return View(listGiohang);
        }

        //tính tổng số lượng và tổng tiền
        public int tongSL()
        {
            int tong_sl = 0;
            List<Giohang> listGiohang = Session["Giohang"] as List<Giohang>;
            if (listGiohang != null)
            {
                tong_sl = listGiohang.Sum(n => n.soluong_sp);
            }
            return tong_sl;
        }

        //tính tiền
        public int Tongtien()
        {
            int tongtien = 0;
            List<Giohang> listGiohang = Session["Giohang"] as List<Giohang>;
            if (listGiohang != null)
            {
                tongtien = listGiohang.Sum(n => n.thanhtien);
            }
            return tongtien;
        }

        //Tạo partial Gior hàng
        public ActionResult GiohangPartial()
        {
            if (tongSL() == 0)
            {
                return PartialView();
            }
            ViewBag.Tongsoluong = tongSL();
            ViewBag.Tongtien = Tongtien();
            return PartialView();
        }

        //Xây dựng 1 view cho người dùng chỉnh sửa giỏ hàng
        public ActionResult SuaGiohang()
        {
            if (Session["Giohang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<Giohang> listGiohang = LayGiohang();
            return View(listGiohang);
        }

        #endregion

        #region Đặt hàng
        [HttpPost]
        public ActionResult Dathang()
        {
            //kiểm tra đăng nhập
            if (Session["Taikhoan"] == null || Session["Taikhoan"].ToString() == "")
            {
                return RedirectToAction("Dangnhap", "Nguoidung");
            }

            //Kiểm tra Hóa đơn
            if (Session["Giohang"] == null)
            {
                RedirectToAction("Index", "Home");
            }
            //thêm đơn đặt hàng
            hoadon hd = new hoadon();
            khachhang kh = (khachhang)Session["Taikhoan"];
            List<Giohang> gh = LayGiohang();
            hd.khachhang_id = kh.khachhang_id;
            hd.ngaydat = DateTime.Now;

            db.hoadons.Add(hd);
            //lưu vào hóa đơn
            db.SaveChanges();
            //thêm chi tiết hóa đơn 
            foreach (var item in gh)
            {
                chitiethoadon cthd = new chitiethoadon();
                cthd.hoadon_id = hd.hoadon_id;
                cthd.sanpham_id = item.sanpham_id;
                cthd.soluong = item.soluong_sp;
                cthd.dongia = (Int32)item.gia_sp;
                db.chitiethoadons.Add(cthd);
            }
            //lưu vào chi tiết hóa đơn
            db.SaveChanges();
            return RedirectToAction("Index", "Home");
        }




        #endregion
    }
}
