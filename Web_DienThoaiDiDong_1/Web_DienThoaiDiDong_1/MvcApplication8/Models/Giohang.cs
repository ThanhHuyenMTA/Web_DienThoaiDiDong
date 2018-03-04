using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication8.Models
{
    public class Giohang
    {
        DienThoaiDiDong1Entities1 db = new DienThoaiDiDong1Entities1();
        public int sanpham_id { get; set;}
        public string sanpham_name { get; set; }
        public string hinhanh_sp { get; set; }
        public int gia_sp { get; set; }
        public int soluong_sp { get; set; }
        public int thanhtien
        {
            get { return soluong_sp * gia_sp; }
        }

        //hàm tạo giỏ hàng

        public Giohang(int masp)
        {
            sanpham_id = masp;
            sanpham sp = db.sanphams.Single(n => n.sanpham_id == masp);
            sanpham_name = sp.sanpham_name;
            hinhanh_sp = sp.hinhanh_sp;
            gia_sp = Int32.Parse(sp.gia_sanpham.ToString());
            soluong_sp = 1;
        }
    }
}