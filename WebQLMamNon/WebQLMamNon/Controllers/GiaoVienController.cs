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
    public class GiaoVienController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: GiaoVien
        public ActionResult Index()
        {
            return View(db.Tbl_GiaoVien.ToList());
        }

        // GET: GiaoVien/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_GiaoVien tbl_GiaoVien = db.Tbl_GiaoVien.Find(id);
            if (tbl_GiaoVien == null)
            {
                return HttpNotFound();
            }
            return View(tbl_GiaoVien);
        }

        // GET: GiaoVien/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: GiaoVien/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        public ActionResult Create([Bind(Include = "maGV,trinhDo,hoTen,soDT,ngaySinh,email,diaChi,gioiTinh,hinhAnh")] Tbl_GiaoVien tbl_GiaoVien)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_GiaoVien.Add(tbl_GiaoVien);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_GiaoVien);
        }

        // GET: GiaoVien/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_GiaoVien tbl_GiaoVien = db.Tbl_GiaoVien.Find(id);
            if (tbl_GiaoVien == null)
            {
                return HttpNotFound();
            }
            return View(tbl_GiaoVien);
        }

        // POST: GiaoVien/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maGV,trinhDo,hoTen,soDT,ngaySinh,email,diaChi,gioiTinh,hinhAnh")] Tbl_GiaoVien tbl_GiaoVien)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_GiaoVien).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_GiaoVien);
        }

        // GET: GiaoVien/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_GiaoVien tbl_GiaoVien = db.Tbl_GiaoVien.Find(id);
            if (tbl_GiaoVien == null)
            {
                return HttpNotFound();
            }
            return View(tbl_GiaoVien);
        }

        // POST: GiaoVien/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Tbl_GiaoVien tbl_GiaoVien = db.Tbl_GiaoVien.Find(id);
            db.Tbl_GiaoVien.Remove(tbl_GiaoVien);
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
    }
}
