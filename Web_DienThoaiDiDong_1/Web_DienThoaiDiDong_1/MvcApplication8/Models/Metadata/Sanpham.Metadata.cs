using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//thêm 2 thư viện
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;


namespace MvcApplication8.Models
{
    //dùng để lưu các thuộc tính như thay đổi tên hay kiểm tra valication không bị thay đổi...
    //lúc cập nhật lại dữ liệu không bị mất
    [MetadataTypeAttribute(typeof(sanphamMetadata))]
    public partial class sanpham
    {
         internal sealed class sanphamMetadata //internal chỉ dùng cho class này thui
         {
             [Display(Name = "Mã sản phẩm")]//thuoc tinh display để đặt lại tên cho cột.
             public int sanpham_id { get; set; }
             [Display(Name = "Tên sản phẩm")]//thuoc tinh display để đặt lại tên cho cột.
             public string sanpham_name { get; set; }
             [Display(Name = "Giá")]//thuoc tinh display để đặt lại tên cho cột.

             public Nullable<int> gia_sanpham { get; set; }
             [Display(Name = "Số lượng")]//thuoc tinh display để đặt lại tên cho cột.

             public Nullable<int> soluong_sp { get; set; }
             [Display(Name = "Thể loại")]//thuoc tinh display để đặt lại tên cho cột.
            
             public string theloai_id { get; set; }
             [Display(Name = "Hình ảnh")]//thuoc tinh display để đặt lại tên cho cột.

             public string hinhanh_sp { get; set; }
             [Display(Name = "Hình ảnh")]//thuoc tinh display để đặt lại tên cho cột.

             public string hinhanh_sp1 { get; set; }
             [Display(Name = "Hình ảnh")]//thuoc tinh display để đặt lại tên cho cột.

             public string hinhanh_sp3 { get; set; }
             [Display(Name = "Hình ảnh")]//thuoc tinh display để đặt lại tên cho cột.

             public string hinhanh_sp4 { get; set; }
             [Display(Name = "Kích thước h/ả")]//thuoc tinh display để đặt lại tên cho cột.

             public string kichthuoc_hinhanh { get; set; }
             [Display(Name = "Camera trước")]//thuoc tinh display để đặt lại tên cho cột.

             public string camera_truoc { get; set; }
             [Display(Name = "Camera sau")]//thuoc tinh display để đặt lại tên cho cột.

             public string camera_sau { get; set; }
             [Display(Name = "Hệ điều hành")]//thuoc tinh display để đặt lại tên cho cột.

             public string he_dieu_hanh { get; set; }
             [Display(Name = "CPU")]//thuoc tinh display để đặt lại tên cho cột.

             public string cpu { get; set; }
             [Display(Name = "RAM")]//thuoc tinh display để đặt lại tên cho cột.

             public string ram { get; set; }
             [Display(Name = "Bộ nhớ trong")]//thuoc tinh display để đặt lại tên cho cột.

             public string bo_nho_trong { get; set; }
             [Display(Name = "Thẻ nhớ")]//thuoc tinh display để đặt lại tên cho cột.

             public string the_nho { get; set; }
              [Display(Name = "SIM")]//thuoc tinh display để đặt lại tên cho cột.

             public string sim { get; set; }
              [Display(Name = "Kết nối")]//thuoc tinh display để đặt lại tên cho cột.

             public string ket_noi { get; set; }
              [Display(Name = "PIN")]//thuoc tinh display để đặt lại tên cho cột.

             public string pin { get; set; }
              [Display(Name = "Mô tả")]//thuoc tinh display để đặt lại tên cho cột.

             public string chuthich { get; set; }
             [Display(Name = "Sp mới")]//thuoc tinh display để đặt lại tên cho cột.
            // [DisplayFormat(DataFormatString = "{1/0}")] //định dạng dữ liệu
             public Nullable<int> moi { get; set; }
             [Display(Name = "Style")]//thuoc tinh display để đặt lại tên cho cột.
           //  [DisplayFormat(DataFormatString = "{1/0}")] //định dạng dữ liệu

             public Nullable<int> style { get; set; }
         }
    }
}