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
    
    public partial class Tbl_ChiTietHocPhi
    {
        public int maChiTietHP { get; set; }
        public Nullable<int> maHP { get; set; }
        public Nullable<double> soTien { get; set; }
        public Nullable<int> soNgayHoc { get; set; }
        public Nullable<int> maHS { get; set; }
    
        public virtual Tbl_HocPhi Tbl_HocPhi { get; set; }
        public virtual Tbl_HocSinh Tbl_HocSinh { get; set; }
    }
}