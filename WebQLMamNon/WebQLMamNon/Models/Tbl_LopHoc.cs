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
    
    public partial class Tbl_LopHoc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_LopHoc()
        {
            this.Tbl_ChiTietDiemDanh = new HashSet<Tbl_ChiTietDiemDanh>();
            this.Tbl_PhanCong = new HashSet<Tbl_PhanCong>();
            this.Tbl_PhanLop = new HashSet<Tbl_PhanLop>();
        }
    
        public string maLop { get; set; }
        public string tenLop { get; set; }
        public int soLuongHS { get; set; }
        public string maLoai { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_ChiTietDiemDanh> Tbl_ChiTietDiemDanh { get; set; }
        public virtual Tbl_LoaiLop Tbl_LoaiLop { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_PhanCong> Tbl_PhanCong { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_PhanLop> Tbl_PhanLop { get; set; }
    }
}
