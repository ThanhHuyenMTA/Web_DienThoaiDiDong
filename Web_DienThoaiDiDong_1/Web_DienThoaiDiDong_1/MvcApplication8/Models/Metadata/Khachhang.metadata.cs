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
    [MetadataTypeAttribute(typeof(khachhangMetadata))]
    public partial class khachhang //trùng với bên class khách hàng
    {
        internal sealed class khachhangMetadata //internal chỉ dùng cho class này thui
        {
            [Display(Name = "Mã khách hàng")]//thuoc tinh display để đặt lại tên cho cột.
            [Required(ErrorMessage = "{0} Không được để trống")]  //kiểm tra rỗng
            public string khachhang_id { get; set; }

            [Display(Name = "Tên khách hàng")]//thuoc tinh display để đặt lại tên cho cột.
            [Required(ErrorMessage = "{0} Không được để trống")]  //kiểm tra rỗng

            public string khachhang_name { get; set; }

            [Display(Name = "Ngày sinh")]//thuoc tinh display để đặt lại tên cho cột.
            [Required(ErrorMessage = "{0} Không được để trống")]  //kiểm tra rỗng
            [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")] //định dạng dữ liệu
            [DataType(DataType.Date)]//dùng để hỗ trợ kiểu dữ liệu ngày
            public Nullable<System.DateTime> khachhang_ns { get; set; }



            [Display(Name = "Địa chỉ")]//thuoc tinh display để đặt lại tên cho cột.
            [Required(ErrorMessage = "{0} Không được để trống")]  //kiểm tra rỗng

            public string khachhang_diachi { get; set; }

            [Display(Name = "Số điện thoại")]//thuoc tinh display để đặt lại tên cho cột.
            [Required(ErrorMessage = "{0} Không được để trống")]  //kiểm tra rỗng

            public string khachhang_sdt { get; set; }

            [Display(Name = "Tài khoản")]//thuoc tinh display để đặt lại tên cho cột.
            [Required(ErrorMessage = "{0} Không được để trống")]  //kiểm tra rỗng

            public string khachhang_taikhoan { get; set; }

            [Display(Name = "Mật khẩu")]//thuoc tinh display để đặt lại tên cho cột.
            [Required(ErrorMessage = "{0} Không được để trống")]  //kiểm tra rỗng

            public string khachhang_matkhau { get; set; }
        }
            
    }
}