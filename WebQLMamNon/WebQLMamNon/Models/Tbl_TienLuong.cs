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
    
    public partial class Tbl_TienLuong
    {
        public System.DateTime tenThangLuong { get; set; }
        public double heSoLuong { get; set; }
        public int soNgayLam { get; set; }
        public int luongNgay { get; set; }
        public string maGV { get; set; }
        public int soTien { get; set; }
    
        public virtual Tbl_GiaoVien Tbl_GiaoVien { get; set; }
    }
}