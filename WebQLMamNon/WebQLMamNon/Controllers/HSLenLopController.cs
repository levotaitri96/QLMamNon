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
        public ActionResult LenLop(string maLop, string maNamHoc)
        {
            var e = db.Tbl_PhanLop.Where(x => x.maLop == maLop && x.maNamHoc == maNamHoc).ToList();
            foreach (var item in e)
            {
                int a = Convert.ToInt16(item.maNamHoc);
                a = a + 1;
                string b = Convert.ToString(a);
                item.maNamHoc = b;
                //item.Tbl_LopHoc.maNamHoc = item.maNamHoc;
                if (item.maLoai == "L01") { item.maLoai = "L02"; }
                if (item.maLoai == "L02") { item.maLoai = "L03"; }
                db.Tbl_PhanLop.Add(item);
                db.SaveChanges();
            }
            return View(db.Tbl_PhanLop.ToList());
        }

    }
}