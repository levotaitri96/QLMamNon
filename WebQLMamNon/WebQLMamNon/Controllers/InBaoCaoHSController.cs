using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class InBaoCaoHSController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: InBaoCaoHS
        public ActionResult InDanhSachHSTheoLop(string malop, string manamhoc)
        {
            string a = Session["malopin"].ToString();
            string b = Session["manamin"].ToString();
            var pl = db.Tbl_PhanLop.Where(x => x.maNamHoc == b && x.maLop == a ).ToList();

            foreach (var item in pl)
            {
                Tbl_InDanhSachHS inpc = new Tbl_InDanhSachHS();               
                inpc.idPhanLop = item.idPhanLop;
                inpc.maLop = item.maLop;
                inpc.hoTenHS = item.Tbl_HocSinh.hoTen;
                inpc.maNamHoc = item.maNamHoc;
                inpc.tenLop = item.Tbl_LopHoc.tenLop;
                inpc.tenNamHoc = item.Tbl_NamHoc.tenNamHoc;
                inpc.ngaySinh =Convert.ToDateTime(item.Tbl_HocSinh.ngaySinh);
                inpc.soDTNha = item.Tbl_HocSinh.soDTNha;
                inpc.diaChi = item.Tbl_HocSinh.diaChi;
                inpc.gioiTinh = item.Tbl_HocSinh.gioiTinh;
                db.Tbl_InDanhSachHS.Add(inpc);
                db.SaveChanges();
            }

            ReportDocument rd = new ReportDocument();
            rd.Load(Path.Combine(Server.MapPath("~/Reports/InDanhSachHS.rpt")));
            rd.Refresh();

            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            Stream stream = rd.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
            stream.Seek(0, SeekOrigin.Begin);

            foreach (var item in pl)
            {
                var dss = db.Tbl_InDanhSachHS.ToList().Where(x => x.maLop == a && x.maNamHoc == b).FirstOrDefault();
                db.Tbl_InDanhSachHS.Remove(dss);
                db.SaveChanges();
            }

            return File(stream, "application/pdf", "InDanhSachHS.pdf");
        }
    }
}