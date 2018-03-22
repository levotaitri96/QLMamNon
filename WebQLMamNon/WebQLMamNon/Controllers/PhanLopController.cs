using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class PhanLopController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: PhanLop

        public ActionResult Indexpl()
        {
            ViewBag.maLop = new SelectList(db.Tbl_LopHoc, "maLop", "tenLop");
            ViewBag.maGV = new SelectList(db.Tbl_GiaoVien, "maGV", "hoTen");
            return View(db.Tbl_PhanCong.ToList());
        }
        // phân công 1 lớp chỉ có 1 giáo viên
        public ActionResult PhanCong(string maLop,string maGV)
        {
            int dem = 0;
            DateTime dt = DateTime.Now;
            string y = String.Format("{0:yyyy}", dt);
            var nh = db.Tbl_NamHoc.Where(x => x.maNamHoc == y).FirstOrDefault();
            foreach (var item in db.Tbl_PhanCong)
            {
                if (item.maLop == maLop)
                {
                    dem++;
                }
            }
            if (dem == 2)
            {
                TempData["loi"] = "abc";
            }
            else
            {
               
                var pc = db.Tbl_PhanCong.Where(x => x.maGV == maGV).FirstOrDefault();
                if (pc != null)
                {
                    TempData["loipc"] = "Mỗi giáo viên chỉ được dạy 1 lớp";
                }
                else
                {
                    var loai = db.Tbl_LopHoc.Where(x => x.maLop == maLop).FirstOrDefault();
                    Tbl_PhanCong phancong = new Tbl_PhanCong();
                    phancong.maLop = maLop;
                    phancong.maLoai = loai.maLoai;
                    phancong.maNamHoc = nh.maNamHoc;
                    phancong.maGV = maGV;
                    db.Tbl_PhanCong.Add(phancong);
                    db.SaveChanges();
                }
            }
            return RedirectToAction("Indexpl");
        }
     
    }
}