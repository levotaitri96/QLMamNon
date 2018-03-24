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
            return View(db.Tbl_HocSinh.ToList());
        }

        // GET: HocSinh/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
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

        // POST: HocSinh/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maHS,hoTenCha,hoTenMe,hoTen,soDTNha,ngaySinh,email,diaChi,gioiTinh,hinhAnh")] Tbl_HocSinh tbl_HocSinh)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_HocSinh.Add(tbl_HocSinh);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_HocSinh);
        }

        // GET: HocSinh/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
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

        // GET: HocSinh/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_HocSinh tbl_HocSinh = db.Tbl_HocSinh.Find(id);
            if (tbl_HocSinh == null)
            {
                return HttpNotFound();
            }
            return View(tbl_HocSinh);
        }

        // POST: HocSinh/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Tbl_HocSinh tbl_HocSinh = db.Tbl_HocSinh.Find(id);
            db.Tbl_HocSinh.Remove(tbl_HocSinh);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult LoadHSTheoLoai()
        {
            var lisths = from hs in db.Tbl_HocSinh
                         join pl in db.Tbl_PhanLop
                         on hs.maHS equals pl.maHS
                         join lop in db.Tbl_LopHoc
                         on pl.maLop equals lop.maLop 
                         select new Tbl_HocSinh
        }
    }
}
