using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;
using CrystalDecisions.CrystalReports.Engine;
using System.IO;
using System.Text;

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
        public ActionResult InLuongTheoThang(string loai)
        {
            int a = Convert.ToInt32(TempData["maluongin"]);
            //var ctll = db.Tbl_ChiTietLuong.Where(x => x.maLuong == a).ToList();
            
            //foreach(var item in ctll)
            //{
            //    Tbl_InLuong inluong = new Tbl_InLuong();
            //    inluong.maGV = item.maGV;
            //    inluong.maLuong = item.maLuong;
            //    inluong.soNgayLam = Convert.ToInt32( item.soNgayLam);
            //    inluong.soTien = Convert.ToInt32( item.soTien);
            //    inluong.hoTen = item.Tbl_GiaoVien.hoTen;
            //    db.Tbl_InLuong.Add(inluong);
            //    db.SaveChanges();
            //}

            // Insert into Tbl_InLuong
            StringBuilder strSQL = new StringBuilder();
            strSQL.Append(" INSERT INTO [Tbl_InLuong] ");
            strSQL.Append(" 	([hoTen] ");
            strSQL.Append(" 	,[soNgayLam] ");
            strSQL.Append(" 	,[soTien] ");
            strSQL.Append(" 	,[maGV] ");
            strSQL.Append(" 	,[maLuong]) ");
            strSQL.Append(" SELECT ");
            strSQL.Append(" 	GV.hoTen ");
            strSQL.Append(" 	, CTL.soNgayLam ");
            strSQL.Append(" 	, CTL.soTien ");
            strSQL.Append(" 	, GV.maGV ");
            strSQL.Append(" 	, CTL.maLuong ");
            strSQL.Append(" FROM ");
            strSQL.Append(" 	Tbl_GiaoVien GV ");
            strSQL.Append(" 	, Tbl_ChiTietLuong CTL ");
            strSQL.Append(" 	, Tbl_TienLuong TL ");
            strSQL.Append(" WHERE ");
            strSQL.Append(" 	GV.maGV = CTL.maGV ");
            strSQL.Append(" 	AND CTL.maLuong = TL.maLuong ");
            strSQL.Append(" 	AND CTL.maLuong = '" + a.ToString() + "' ");
            db.Database.ExecuteSqlCommand(strSQL.ToString());
            db.SaveChanges();

            // print report
            ReportDocument rd = new ReportDocument();
            rd.Load(Path.Combine(Server.MapPath("~/Reports/Luong.rpt")));

            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Stream stream = rd.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            stream.Seek(0, SeekOrigin.Begin);

            // Delete worktable
            strSQL = new StringBuilder();     
            strSQL.Append(" DELETE FROM ");
            strSQL.Append(" 	Tbl_InLuong ");
            strSQL.Append(" WHERE ");
            strSQL.Append(" 	maLuong = '" + a + "' ");
            db.Database.ExecuteSqlCommand(strSQL.ToString());
            db.SaveChanges();
            //foreach (var item in ctll)
            //{
            //    var ab = db.Tbl_InLuong.Where(x => x.maLuong == a && x.maGV==item.maGV).FirstOrDefault();
            //    db.Tbl_InLuong.Remove(ab);
            //    db.SaveChanges();
            //}

            return File(stream, "application/pdf", "Luong.pdf");
            // return Redirect(loai);
            
        }
    }
}