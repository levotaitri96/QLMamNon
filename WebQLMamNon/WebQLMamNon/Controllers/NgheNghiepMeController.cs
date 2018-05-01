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
    public class NgheNghiepMeController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: NgheNghiepMe
        public ActionResult Index()
        {
            return View(db.Tbl_NgheNghiepMe.ToList());
        }

        // GET: NgheNghiepMe/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NgheNghiepMe tbl_NgheNghiepMe = db.Tbl_NgheNghiepMe.Find(id);
            if (tbl_NgheNghiepMe == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NgheNghiepMe);
        }

        // GET: NgheNghiepMe/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NgheNghiepMe/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maNgheNghiepMe,tenNgheNghiepMe")] Tbl_NgheNghiepMe tbl_NgheNghiepMe)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_NgheNghiepMe.Add(tbl_NgheNghiepMe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_NgheNghiepMe);
        }

        // GET: NgheNghiepMe/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NgheNghiepMe tbl_NgheNghiepMe = db.Tbl_NgheNghiepMe.Find(id);
            if (tbl_NgheNghiepMe == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NgheNghiepMe);
        }

        // POST: NgheNghiepMe/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maNgheNghiepMe,tenNgheNghiepMe")] Tbl_NgheNghiepMe tbl_NgheNghiepMe)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_NgheNghiepMe).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_NgheNghiepMe);
        }

        // GET: NgheNghiepMe/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NgheNghiepMe tbl_NgheNghiepMe = db.Tbl_NgheNghiepMe.Find(id);
            if (tbl_NgheNghiepMe == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NgheNghiepMe);
        }

        // POST: NgheNghiepMe/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Tbl_NgheNghiepMe tbl_NgheNghiepMe = db.Tbl_NgheNghiepMe.Find(id);
            db.Tbl_NgheNghiepMe.Remove(tbl_NgheNghiepMe);
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
