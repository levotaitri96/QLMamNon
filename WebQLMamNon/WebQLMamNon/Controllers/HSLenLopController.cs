using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class HSLenLopController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: HSLenLop
        public ActionResult Index(string maLop)
        {
            ViewBag.maLops = db.Tbl_LopHoc.ToList();
            ViewBag.maNamHocs = db.Tbl_NamHoc.ToList();

            return View(db.Tbl_PhanLop.ToList());
        }
        [HttpPost]
        public ActionResult LenLop(string maLop)
        {
            var manam = db.Tbl_PhanLop.Where(x => x.maLop == maLop).FirstOrDefault();
            var e = db.Tbl_PhanLop.Where(x => x.maLop == maLop && x.maNamHoc == manam.maNamHoc).FirstOrDefault();
            int a = Convert.ToInt32(e.maNamHoc);
            a = a + 1;
            e.maNamHoc = a.ToString();
            var lophoc = db.Tbl_LopHoc.Where(x => x.maLop == maLop).FirstOrDefault();
            lophoc.maNamHoc = e.maNamHoc;
            if (e.maLoai == "L01")
            {
                e.maLoai = "L02";
                var tenlop = db.Tbl_LopHoc.Where(x => x.maLop == e.maLop).FirstOrDefault();
                string abc = tenlop.tenLop.Substring(3);
                tenlop.tenLop = "Chồi" + abc;

            }
            else if (e.maLoai == "L02")
            {
                e.maLoai = "L03";
                var tenlop = db.Tbl_LopHoc.Where(x => x.maLop == e.maLop).FirstOrDefault();
                string abc = tenlop.tenLop.Substring(4);
                tenlop.tenLop = "Lá" + abc;
            }
            else
            {
                TempData["abc"] = "Tốt nghiệp rồi";
            }
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}