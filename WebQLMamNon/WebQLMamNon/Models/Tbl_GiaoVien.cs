//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebQLMamNon.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tbl_GiaoVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_GiaoVien()
        {
            this.Tbl_ChiTietDiemDanh = new HashSet<Tbl_ChiTietDiemDanh>();
            this.Tbl_ChiTietLuong = new HashSet<Tbl_ChiTietLuong>();
            this.Tbl_PhanCong = new HashSet<Tbl_PhanCong>();
            this.Tbl_TaiKhoan = new HashSet<Tbl_TaiKhoan>();
        }
    
        public string maGV { get; set; }
        public string trinhDo { get; set; }
        public string hoTen { get; set; }
        public string soDT { get; set; }
        public Nullable<System.DateTime> ngaySinh { get; set; }
        public string email { get; set; }
        public string diaChi { get; set; }
        public string gioiTinh { get; set; }
        public string hinhAnh { get; set; }
        public Nullable<int> maTonGiao { get; set; }
        public Nullable<int> maDanToc { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_ChiTietDiemDanh> Tbl_ChiTietDiemDanh { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_ChiTietLuong> Tbl_ChiTietLuong { get; set; }
        public virtual Tbl_DanToc Tbl_DanToc { get; set; }
        public virtual Tbl_TonGiao Tbl_TonGiao { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_PhanCong> Tbl_PhanCong { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_TaiKhoan> Tbl_TaiKhoan { get; set; }
    }
}
