using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class Ad_DiemDanhHSController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: Ad_DiemDanhHS
        public ActionResult Index()
        {
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");
            return View(db.Tbl_DiemDanhHS.ToList().OrderByDescending(x => x.ngayDiemDanh).OrderByDescending(x => x.maThang).OrderByDescending(x => x.maNamHoc));
        }
        public ActionResult Ad_DiemDanhView(int id, string maLop = "")
        {
            //ViewBag.maLops = new SelectList(db.Tbl_LopHoc.ToList(), "maLop", "tenLop");
            ViewBag.maLops = db.Tbl_LopHoc.ToList();
            ViewBag.selectedId = maLop;

            //var test = db.Tbl_CTDiemDanhHS.Where(x => x.maDiemDanhHS == id &&
            //maLop == "" ? true : x.maLop == maLop
            //&& x.Tbl_DiemDanhHS.maNamHoc == DateTime.Now.Year.ToString()).ToList();
            return View(db.Tbl_CTDiemDanhHS.Where(x => x.maDiemDanhHS == id &&
                                                                maLop == "" ? true : x.maLop == maLop).ToList());

        }
        public ViewResult LichSuDiemDanh(string maNamHoc, string maThang)
        {
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");

            return View(db.Tbl_DiemDanhHS.ToList().Where(x => x.maNamHoc == maNamHoc && x.maThang == maThang));


        }

    }
}