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
    
    public partial class Tbl_HocSinh
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_HocSinh()
        {
            this.Tbl_ChiTietHocPhi = new HashSet<Tbl_ChiTietHocPhi>();
            this.Tbl_CTDiemDanhHS = new HashSet<Tbl_CTDiemDanhHS>();
            this.Tbl_PhanLop = new HashSet<Tbl_PhanLop>();
        }
    
        public int maHS { get; set; }
        public string hoTenCha { get; set; }
        public string hoTenMe { get; set; }
        public string hoTen { get; set; }
        public string soDTNha { get; set; }
        public Nullable<System.DateTime> ngaySinh { get; set; }
        public string email { get; set; }
        public string diaChi { get; set; }
        public string gioiTinh { get; set; }
        public string hinhAnh { get; set; }
        public string maLoai { get; set; }
        public Nullable<int> maTonGiao { get; set; }
        public Nullable<int> maDanToc { get; set; }
        public Nullable<int> maNgheNghiepMe { get; set; }
        public Nullable<int> maNgheNghiepCha { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_ChiTietHocPhi> Tbl_ChiTietHocPhi { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_CTDiemDanhHS> Tbl_CTDiemDanhHS { get; set; }
        public virtual Tbl_DanToc Tbl_DanToc { get; set; }
        public virtual Tbl_LoaiLop Tbl_LoaiLop { get; set; }
        public virtual Tbl_NgheNghiepCha Tbl_NgheNghiepCha { get; set; }
        public virtual Tbl_NgheNghiepMe Tbl_NgheNghiepMe { get; set; }
        public virtual Tbl_TonGiao Tbl_TonGiao { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_PhanLop> Tbl_PhanLop { get; set; }
    }
}
