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
    public class BaiVietController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: BaiViet
        public ActionResult Index()
        {
            var tbl_BaiViet = db.Tbl_BaiViet.Include(t => t.Tbl_GiaoVien);
            return View(tbl_BaiViet.ToList());
        }

        // GET: BaiViet/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_BaiViet tbl_BaiViet = db.Tbl_BaiViet.Find(id);
            if (tbl_BaiViet == null)
            {
                return HttpNotFound();
            }
            return View(tbl_BaiViet);
        }

        // GET: BaiViet/Create
        public ActionResult Create()
        {
            ViewBag.maGV = new SelectList(db.Tbl_GiaoVien, "maGV", "trinhDo");
            return View();
        }

        // POST: BaiViet/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maBaiViet,noiDung,hinhBV,maGV,ngayDang")] Tbl_BaiViet tbl_BaiViet)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_BaiViet.Add(tbl_BaiViet);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.maGV = new SelectList(db.Tbl_GiaoVien, "maGV", "trinhDo", tbl_BaiViet.maGV);
            return View(tbl_BaiViet);
        }

        // GET: BaiViet/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_BaiViet tbl_BaiViet = db.Tbl_BaiViet.Find(id);
            if (tbl_BaiViet == null)
            {
                return HttpNotFound();
            }
            ViewBag.maGV = new SelectList(db.Tbl_GiaoVien, "maGV", "trinhDo", tbl_BaiViet.maGV);
            return View(tbl_BaiViet);
        }

        // POST: BaiViet/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maBaiViet,noiDung,hinhBV,maGV,ngayDang")] Tbl_BaiViet tbl_BaiViet)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_BaiViet).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.maGV = new SelectList(db.Tbl_GiaoVien, "maGV", "trinhDo", tbl_BaiViet.maGV);
            return View(tbl_BaiViet);
        }

        // GET: BaiViet/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_BaiViet tbl_BaiViet = db.Tbl_BaiViet.Find(id);
            if (tbl_BaiViet == null)
            {
                return HttpNotFound();
            }
            return View(tbl_BaiViet);
        }

        // POST: BaiViet/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Tbl_BaiViet tbl_BaiViet = db.Tbl_BaiViet.Find(id);
            db.Tbl_BaiViet.Remove(tbl_BaiViet);
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
