using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;
using CrystalDecisions.CrystalReports.Engine;
using System.IO;

namespace WebQLMamNon.Controllers
{
    public class InBaoCaoController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: InBaoCao
        public ActionResult BaoCaoLuong(string maNamHoc, string maThang)
        {
            if(maNamHoc== null && maThang== null)
            {
                ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
                ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");
            }
            else
            {
                ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
                ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");
                var baocaoluong = db.Tbl_TienLuong.Where(x => x.maNamHoc == maNamHoc && x.maThang == maThang).ToList();
                int d = 0;
                foreach(var item in baocaoluong)
                {
                     d = item.maLuong;
                   
                    
                }
                var chitiet = db.Tbl_ChiTietLuong.Where(x => x.maLuong == d).ToList(); ViewBag.a = chitiet;
            }
           
            return View();
        }
        public ActionResult InLuongTheoThang()
        {
            ReportDocument rd = new ReportDocument();
            rd.Load(Path.Combine(Server.MapPath("~/Reports/Luong.rpt")));
            var e = db.Tbl_ChiTietLuong.ToList();
            rd.SetDataSource(db.Tbl_ChiTietLuong.Select(p => new
            {
                soNgayLam= p.soNgayLam,
                soTien= p.soTien,
                maChiTietLuong=  p.maChiTietLuong,
                maLuong= p.maLuong,
                maGV=  p.maGV
                //hoten=  p.Tbl_GiaoVien.hoTen
            }).ToList());
            
            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Stream stream = rd.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            stream.Seek(0, SeekOrigin.Begin);
            return File(stream, "application/pdf", "Luong.pdf");

        }
    }
}