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
    
    public partial class Tbl_PhanLop
    {
        public int idPhanLop { get; set; }
        public string maNamHoc { get; set; }
        public string maLop { get; set; }
        public string maLoai { get; set; }
        public Nullable<int> maHS { get; set; }
    
        public virtual Tbl_HocSinh Tbl_HocSinh { get; set; }
        public virtual Tbl_LoaiLop Tbl_LoaiLop { get; set; }
        public virtual Tbl_LopHoc Tbl_LopHoc { get; set; }
        public virtual Tbl_NamHoc Tbl_NamHoc { get; set; }
    }
}
