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
            this.Tbl_DiemDanh = new HashSet<Tbl_DiemDanh>();
            this.Tbl_HocPhi = new HashSet<Tbl_HocPhi>();
            this.Tbl_PhanLop = new HashSet<Tbl_PhanLop>();
        }
    
        public string maHS { get; set; }
        public string hoTenCha { get; set; }
        public string hoTenMe { get; set; }
        public string hoTen { get; set; }
        public string soDTNha { get; set; }
        public Nullable<System.DateTime> ngaySinh { get; set; }
        public string email { get; set; }
        public string diaChi { get; set; }
        public string gioiTinh { get; set; }
        public string hinhAnh { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_DiemDanh> Tbl_DiemDanh { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_HocPhi> Tbl_HocPhi { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_PhanLop> Tbl_PhanLop { get; set; }
    }
}
