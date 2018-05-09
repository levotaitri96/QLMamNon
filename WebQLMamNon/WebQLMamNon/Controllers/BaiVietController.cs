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
            var tbl_Book = db.Tbl_BaiViet.Include(t => t.Tbl_LoaiBaiViet);
            tbl_Book = tbl_Book.OrderByDescending(n => n.ngayDang);
            return View(tbl_Book.ToList());
        }

        // GET: BaiViet/Details/5
        public ActionResult Details(int id)
        {
            Tbl_BaiViet tbl_BaiViet = db.Tbl_BaiViet.Find(id);
            if (tbl_BaiViet == null)
            {
                return HttpNotFound();
            }
            ViewBag.lstBVLQ = db.Tbl_BaiViet.Where(x => x.maBaiViet != id).ToList();
            return View(tbl_BaiViet);
        }

        // GET: BaiViet/Create
        public ActionResult Create()
        {
            ViewBag.maLoai = new SelectList(db.Tbl_LoaiBaiViet, "maLoai", "TenLoai");
            return View();
        }

        // POST: BaiViet/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maBaiViet,tenBaiViet,noiDung,hinhBV,maLoai,ngayDang")] Tbl_BaiViet tbl_BaiViet)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_BaiViet.Add(tbl_BaiViet);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.maLoai = new SelectList(db.Tbl_LoaiBaiViet, "maLoai", "TenLoai");
            return View(tbl_BaiViet);
        }

        // GET: BaiViet/Edit/5
        public ActionResult Edit(int id)
        {

            Tbl_BaiViet tbl_BaiViet = db.Tbl_BaiViet.Find(id);
            if (tbl_BaiViet == null)
            {
                return HttpNotFound();
            }
            DateTime birth = Convert.ToDateTime(tbl_BaiViet.ngayDang);
            ViewBag.birth = birth.ToString("yyyy-MM-dd");
            ViewBag.maLoai = db.Tbl_LoaiBaiViet.ToList();
            return View(tbl_BaiViet);
        }

        // POST: BaiViet/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maBaiViet,tenBaiViet,noiDung,hinhBV,maLoai,ngayDang")] Tbl_BaiViet tbl_BaiViet)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_BaiViet).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_BaiViet);
        }

        // GET: BaiViet/Delete/5
        public ActionResult Delete(int? id)
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
        public ActionResult DeleteConfirmed(int id)
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