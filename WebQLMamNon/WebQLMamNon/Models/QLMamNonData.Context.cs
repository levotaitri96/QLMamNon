﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QuanLyMamNonEntities : DbContext
    {
        public QuanLyMamNonEntities()
            : base("name=QuanLyMamNonEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Tbl_BaiViet> Tbl_BaiViet { get; set; }
        public virtual DbSet<Tbl_ChiTietDiemDanh> Tbl_ChiTietDiemDanh { get; set; }
        public virtual DbSet<Tbl_ChiTietHocPhi> Tbl_ChiTietHocPhi { get; set; }
        public virtual DbSet<Tbl_ChiTietLuong> Tbl_ChiTietLuong { get; set; }
        public virtual DbSet<Tbl_CTDiemDanhHS> Tbl_CTDiemDanhHS { get; set; }
        public virtual DbSet<Tbl_DanToc> Tbl_DanToc { get; set; }
        public virtual DbSet<Tbl_DiemDanh> Tbl_DiemDanh { get; set; }
        public virtual DbSet<Tbl_DiemDanhHS> Tbl_DiemDanhHS { get; set; }
        public virtual DbSet<Tbl_GiaoVien> Tbl_GiaoVien { get; set; }
        public virtual DbSet<Tbl_HocPhi> Tbl_HocPhi { get; set; }
        public virtual DbSet<Tbl_HocSinh> Tbl_HocSinh { get; set; }
        public virtual DbSet<Tbl_LoaiBaiViet> Tbl_LoaiBaiViet { get; set; }
        public virtual DbSet<Tbl_LoaiLop> Tbl_LoaiLop { get; set; }
        public virtual DbSet<Tbl_LopHoc> Tbl_LopHoc { get; set; }
        public virtual DbSet<Tbl_NamHoc> Tbl_NamHoc { get; set; }
        public virtual DbSet<Tbl_NgheNghiepCha> Tbl_NgheNghiepCha { get; set; }
        public virtual DbSet<Tbl_NgheNghiepMe> Tbl_NgheNghiepMe { get; set; }
        public virtual DbSet<Tbl_PhanCong> Tbl_PhanCong { get; set; }
        public virtual DbSet<Tbl_PhanLop> Tbl_PhanLop { get; set; }
        public virtual DbSet<Tbl_TaiKhoan> Tbl_TaiKhoan { get; set; }
        public virtual DbSet<Tbl_ThangHoc> Tbl_ThangHoc { get; set; }
        public virtual DbSet<Tbl_TienLuong> Tbl_TienLuong { get; set; }
        public virtual DbSet<Tbl_TonGiao> Tbl_TonGiao { get; set; }
    }
}
