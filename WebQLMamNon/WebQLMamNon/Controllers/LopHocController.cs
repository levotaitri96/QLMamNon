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
    public class LopHocController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: LopHoc
        public ActionResult Index(string id)
        {
            var tbl_LopHoc = db.Tbl_LopHoc.Include(t => t.Tbl_LoaiLop);
            if(id=="L01")
            {
                return View(db.Tbl_LopHoc.ToList().Where(x => x.maLoai == id));
            }
            else if(id=="L02")
            {
                return View(db.Tbl_LopHoc.ToList().Where(x => x.maLoai == id));

            }
            else
            {
                return View(db.Tbl_LopHoc.ToList().Where(x => x.maLoai == id));

            }
            
        }



        // GET: LopHoc/Create
        public ActionResult Create()
        {
            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop, "maLoai", "tenLoai");
            return View();
        }

        // POST: LopHoc/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maLop,tenLop,soLuongHS,maLoai,maNamHoc")] Tbl_LopHoc tbl_LopHoc)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_LopHoc.Add(tbl_LopHoc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop, "maLoai", "tenLoai", tbl_LopHoc.maLoai);
            return View(tbl_LopHoc);
        }

        // GET: LopHoc/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_LopHoc tbl_LopHoc = db.Tbl_LopHoc.Find(id);
            if (tbl_LopHoc == null)
            {
                return HttpNotFound();
            }
            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop, "maLoai", "tenLoai", tbl_LopHoc.maLoai);
            return View(tbl_LopHoc);
        }

        // POST: LopHoc/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maLop,tenLop,soLuongHS,maLoai")] Tbl_LopHoc tbl_LopHoc)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_LopHoc).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop, "maLoai", "tenLoai", tbl_LopHoc.maLoai);
            return View(tbl_LopHoc);
        }

        // GET: LopHoc/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_LopHoc tbl_LopHoc = db.Tbl_LopHoc.Find(id);
            if (tbl_LopHoc == null)
            {
                return HttpNotFound();
            }
            return View(tbl_LopHoc);
        }

        // POST: LopHoc/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Tbl_LopHoc tbl_LopHoc = db.Tbl_LopHoc.Find(id);
            db.Tbl_LopHoc.Remove(tbl_LopHoc);
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
