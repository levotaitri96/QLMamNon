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
                    else if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 4 && GetTuoi(tbl_HocSinh.ngaySinh.Value) < 5)
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
            List<string> lstMaNamHoc = db.Tbl_PhanLop.Select(x => x.maNamHoc).ToList();
            List<string> lstMaLoai = db.Tbl_PhanLop.Select(x => x.maLoai).ToList();

            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop.ToList(), "maLoai", "tenLoai");
            ViewBag.maNH = new SelectList(db.Tbl_NamHoc.ToList(), "maNamHoc", "tenNamHoc");
            // ViewBag.maLop = new SelectList(db.Tbl_LopHoc.ToList(), "maLop", "tenLop");
            //ViewBag.maHS = new SelectList(db.Tbl_HocSinh.Where(x => !listMaHS.Contains(x.maHS)), "maHS", "hoTen");

            return View(db.Tbl_PhanLop.ToList());
        }
        public ActionResult PhanLopHS(string maLop, string maNH, string maLoai)
        {
            int countHS_Lop = db.Tbl_PhanLop.Where(x => x.maLop == maLop).Count();

            int[] lstMaHS = db.Tbl_PhanLop.Select(x => x.maHS).ToArray();
            List<Tbl_HocSinh> hsNew = db.Tbl_HocSinh.Where(x => x.maLoai == maLoai && !lstMaHS.Contains(x.maHS)).ToList();

            foreach (Tbl_HocSinh item in hsNew)
            {
                if (countHS_Lop <= 5)
                {
                    db.Tbl_PhanLop.Add(new Tbl_PhanLop { maNamHoc = maNH, maLop = maLop, maLoai = maLoai, maHS = item.maHS });
                    countHS_Lop++;
                    
                }
                else
                {
                    break;
                }
            }

            db.SaveChanges();

            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop.ToList(), "maLoai", "tenLoai");
            ViewBag.maNH = new SelectList(db.Tbl_NamHoc.ToList(), "maNamHoc", "tenNamHoc");
            return View( db.Tbl_PhanLop.Where(x=>x.maLop==maLop && x.maNamHoc==maNH && x.maLoai==maLoai).ToList());
        }
        public ActionResult LoadLopTheoLoai(string maLoai, string maNH)
        {

            List<Tbl_PhanLop> lstmalop = db.Tbl_PhanLop.Where(n => n.maLoai == maLoai && n.maNamHoc == maNH).ToList();
            // List<Tbl_LopHoc> lstLop = db.Tbl_LopHoc.Where(n => lstmalop.Contains(n.maLop)).ToList();

            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop.ToList(), "maLoai", "tenLoai");
            ViewBag.maNH = new SelectList(db.Tbl_NamHoc.ToList(), "maNamHoc", "tenNamHoc");
            return View("IndexPhanLopHS", lstmalop);
        }

    }
}
