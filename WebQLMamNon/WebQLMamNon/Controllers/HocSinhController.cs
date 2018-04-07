using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class HocSinhController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: HocSinh
        public ActionResult Index()
        {
            ViewBag.lstLoai = db.Tbl_LoaiLop.ToList();
            ViewBag.lstLop = db.Tbl_LopHoc.ToList();
            ViewBag.lstHS = db.Tbl_HocSinh.ToList();
            return View(db.Tbl_HocSinh.ToList());
        }

        // GET: HocSinh/Details/5
        public ActionResult Details(int id)
        {

            Tbl_HocSinh tbl_HocSinh = db.Tbl_HocSinh.Find(id);
            if (tbl_HocSinh == null)
            {
                return HttpNotFound();
            }
            return View(tbl_HocSinh);
        }

        // GET: HocSinh/Create
        public ActionResult Create()
        {
            return View();
        }
        public int GetTuoi(DateTime ngaysinh)
        {
            var today = DateTime.Today;
            // Calculate the age.
            var age = today.Year - ngaysinh.Year;
            // Go back to the year the person was born in case of a leap year
            if (ngaysinh > today.AddYears(-age)) age--;
            return age;
        }
        // POST: HocSinh/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maHS,hoTenCha,ngheNghiepCha,hoTenMe,ngheNghiepMe,hoTen,soDTNha,ngaySinh,email,diaChi,gioiTinh,hinhAnh,tonGiao,danToc")] Tbl_HocSinh tbl_HocSinh)
        {
            if (ModelState.IsValid)
            {
                if (tbl_HocSinh.ngaySinh == null)
                {
                    tbl_HocSinh.maLoai = null;
                }
                else
                {
                    if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 2 && GetTuoi(tbl_HocSinh.ngaySinh.Value) <= 3)
                    {
                        tbl_HocSinh.maLoai = "L01";
                    }
                    else if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 4 && GetTuoi(tbl_HocSinh.ngaySinh.Value) <= 5)
                    {
                        tbl_HocSinh.maLoai = "L02";
                    }
                    else if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 5 && GetTuoi(tbl_HocSinh.ngaySinh.Value) <= 6)
                    {
                        tbl_HocSinh.maLoai = "L03";
                    }
                }
                db.Tbl_HocSinh.Add(tbl_HocSinh);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_HocSinh);
        }

        // GET: HocSinh/Edit/5

        public ActionResult Edit(int id)
        {

            Tbl_HocSinh tbl_HocSinh = db.Tbl_HocSinh.Find(id);
            if (tbl_HocSinh == null)
            {
                return HttpNotFound();
            }
            return View(tbl_HocSinh);
        }

        // POST: HocSinh/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maHS,hoTenCha,hoTenMe,hoTen,soDTNha,ngaySinh,email,diaChi,gioiTinh,hinhAnh")] Tbl_HocSinh tbl_HocSinh)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_HocSinh).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_HocSinh);
        }

        //xóa học sinh nào chưa phân lớp
        [HttpPost]
        public JsonResult Delete(int id)
        {
            var hs = db.Tbl_PhanLop.Where(x => x.maHS == id).FirstOrDefault();
            if (hs == null)
            {
                Tbl_HocSinh Tbl_HocSinh = db.Tbl_HocSinh.Find(id);
                db.Tbl_HocSinh.Remove(Tbl_HocSinh);
                db.SaveChanges();
                return Json(new { status = 0 }, JsonRequestBehavior.AllowGet);
            }
            else
                return Json(new { status = 1 }, JsonRequestBehavior.AllowGet);

        }


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult LoadHS(string id)
        {
            List<int> lstMaHS = db.Tbl_PhanLop.Where(n => n.maLop == id).Select(x => x.maHS).ToList();

            //truy xuat danh sach HS theo loai
            List<Tbl_HocSinh> lstHS = db.Tbl_HocSinh.Where(n => lstMaHS.Contains(n.maHS)).ToList();
            //gan danh sach loai sach            
            return View(lstHS);

        }
        public ActionResult IndexPhanLopHS()
        {
            List<string> listMaLop = db.Tbl_PhanLop.Select(x => x.maLop).ToList();
            List<int> listMaHS = db.Tbl_PhanLop.Select(x => x.maHS).ToList();

            ViewBag.maLop = new SelectList(db.Tbl_LopHoc.ToList(), "maLop", "tenLop");
            ViewBag.maHS = new SelectList(db.Tbl_HocSinh.Where(x => !listMaHS.Contains(x.maHS)), "maHS", "hoTen");

            return View(db.Tbl_PhanLop.ToList());
        }
        public ActionResult PhanLopHS(string maLop, int maHS)
        {
            int dem = 0;
            DateTime dt = DateTime.Now;
            string y = String.Format("{0:yyyy}", dt);
            var nh = db.Tbl_NamHoc.Where(x => x.maNamHoc == y).FirstOrDefault();
            foreach (var item in db.Tbl_PhanLop)
            {
                if (item.maLop == maLop)
                {
                    dem++;
                }
            }
            if (dem == 20)
            {
                TempData["loi"] = "Quá học sinh quy định";
            }
            else
            {

                var phanlop = db.Tbl_PhanLop.Where(x => x.maHS == maHS).FirstOrDefault();
                if (phanlop != null)
                {
                    TempData["loiPL"] = "Mỗi học sinh chỉ được thuộc 1 lớp trong 1 năm học ";
                }
                else
                {
                    var loai = db.Tbl_LopHoc.Where(x => x.maLop == maLop).FirstOrDefault();
                    Tbl_PhanLop plop = new Tbl_PhanLop();
                    plop.maLop = maLop;
                    plop.maLoai = loai.maLoai;
                    plop.maNamHoc = nh.maNamHoc;
                    plop.maHS = maHS;
                    db.Tbl_PhanLop.Add(plop);
                    db.SaveChanges();
                }
            }
            return RedirectToAction("IndexPhanLopHS");
            //hihihihihi
        }

    }
}
