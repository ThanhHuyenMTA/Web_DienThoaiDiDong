//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MvcApplication8.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class hoadon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public hoadon()
        {
            this.chitiethoadons = new HashSet<chitiethoadon>();
        }
    
        public int hoadon_id { get; set; }
        public Nullable<System.DateTime> ngaygiao { get; set; }
        public Nullable<System.DateTime> ngaydat { get; set; }
        public string dathanhtoan { get; set; }
        public string tinhtranggiaohang { get; set; }
        public string khachhang_id { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitiethoadon> chitiethoadons { get; set; }
        public virtual khachhang khachhang { get; set; }
    }
}