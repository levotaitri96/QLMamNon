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
    
    public partial class Tbl_ChiTietDiemDanh
    {
        public int maChiTietDiemDanh { get; set; }
        public string trangThai { get; set; }
        public Nullable<int> maDiemDanh { get; set; }
        public string maGV { get; set; }
        public string maLoai { get; set; }
        public string maLop { get; set; }
    
        public virtual Tbl_DiemDanh Tbl_DiemDanh { get; set; }
        public virtual Tbl_GiaoVien Tbl_GiaoVien { get; set; }
        public virtual Tbl_LoaiLop Tbl_LoaiLop { get; set; }
        public virtual Tbl_LopHoc Tbl_LopHoc { get; set; }
    }
}
