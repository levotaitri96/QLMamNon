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
    public class NamHocController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: NamHoc
        public ActionResult Index()
        {
            return View(db.Tbl_NamHoc.ToList());
        }

        // GET: NamHoc/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NamHoc tbl_NamHoc = db.Tbl_NamHoc.Find(id);
            if (tbl_NamHoc == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NamHoc);
        }

        // GET: NamHoc/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NamHoc/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maNamHoc,tenNamHoc,tienThang")] Tbl_NamHoc tbl_NamHoc)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_NamHoc.Add(tbl_NamHoc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_NamHoc);
        }

        // GET: NamHoc/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NamHoc tbl_NamHoc = db.Tbl_NamHoc.Find(id);
            if (tbl_NamHoc == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NamHoc);
        }

        // POST: NamHoc/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maNamHoc,tenNamHoc,tienThang")] Tbl_NamHoc tbl_NamHoc)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_NamHoc).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_NamHoc);
        }

        // GET: NamHoc/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NamHoc tbl_NamHoc = db.Tbl_NamHoc.Find(id);
            if (tbl_NamHoc == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NamHoc);
        }

        // POST: NamHoc/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Tbl_NamHoc tbl_NamHoc = db.Tbl_NamHoc.Find(id);
            db.Tbl_NamHoc.Remove(tbl_NamHoc);
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
