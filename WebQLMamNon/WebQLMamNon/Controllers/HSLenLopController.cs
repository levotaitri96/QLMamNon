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
        public ActionResult Index(string maLop, string maNamHoc)
        {
            ViewBag.maLops = db.Tbl_LopHoc.ToList();

            int a = DateTime.Now.Year;
            ViewBag.namhocs = db.Tbl_NamHoc.Where(x => x.maNamHoc.CompareTo(a.ToString()) >= 0).ToList();
            if (maLop == null && maNamHoc == null)
            {
                return View(db.Tbl_PhanLop.ToList().OrderBy(x => x.Tbl_HocSinh.hoTen.Split(' ').Last()));
            }
            else if (maLop == "")
            {
                return View(db.Tbl_PhanLop.ToList().Where(x => x.maNamHoc == maNamHoc).OrderBy(x => x.Tbl_HocSinh.hoTen.Split(' ').Last()));
            }
            else { return View(db.Tbl_PhanLop.Where(x => x.maLop == maLop && x.maNamHoc == maNamHoc).ToList().OrderBy(x=>x.Tbl_HocSinh.hoTen.Split(' ').Last())); }

        }
        [HttpPost]
        public ActionResult LenLop()
        {
            string ab = (DateTime.Now.Year).ToString();
            int n = DateTime.Now.Year;
            var c = db.Tbl_PhanLop.Select(x => x.maNamHoc).Max();
            if ((n + 1 == Convert.ToInt32(c)))
            {
                TempData["loi"] = "Bạn đã lên lớp cho những học sinh năm này rồi!";
            }
            else
            {
                var e = db.Tbl_PhanLop.ToList().Where(x => x.maNamHoc == ab);
                foreach (var item in e)
                {
                    int a = Convert.ToInt16(item.maNamHoc);
                    a = a + 1;
                    string b = Convert.ToString(a);
                    item.maNamHoc = b;
                    string abc = item.maLop.Substring(1);
                    if (item.maLoai == "L01")
                    {
                        item.maLoai = "L02";
                        item.maLop = "C" + abc;
                    }
                    else if (item.maLoai == "L02")
                    {
                        item.maLoai = "L03";
                        item.maLop = "L" + abc;
                    }
                    else
                    {
                        item.maLoai = "L04";

                    }
                    db.Tbl_PhanLop.Add(item);
                    db.SaveChanges();
                }
            }
            return RedirectToAction("Index");
        }

    }
}