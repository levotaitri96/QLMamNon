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
    public class NgheNghiepChaController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: NgheNghiepCha
        public ActionResult Index()
        {
            return View(db.Tbl_NgheNghiepCha.ToList());
        }

        // GET: NgheNghiepCha/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NgheNghiepCha tbl_NgheNghiepCha = db.Tbl_NgheNghiepCha.Find(id);
            if (tbl_NgheNghiepCha == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NgheNghiepCha);
        }

        // GET: NgheNghiepCha/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NgheNghiepCha/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maNgheNghiepCha,tenNgheNghiepCha")] Tbl_NgheNghiepCha tbl_NgheNghiepCha)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_NgheNghiepCha.Add(tbl_NgheNghiepCha);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_NgheNghiepCha);
        }

        // GET: NgheNghiepCha/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NgheNghiepCha tbl_NgheNghiepCha = db.Tbl_NgheNghiepCha.Find(id);
            if (tbl_NgheNghiepCha == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NgheNghiepCha);
        }

        // POST: NgheNghiepCha/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maNgheNghiepCha,tenNgheNghiepCha")] Tbl_NgheNghiepCha tbl_NgheNghiepCha)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_NgheNghiepCha).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_NgheNghiepCha);
        }

        // GET: NgheNghiepCha/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_NgheNghiepCha tbl_NgheNghiepCha = db.Tbl_NgheNghiepCha.Find(id);
            if (tbl_NgheNghiepCha == null)
            {
                return HttpNotFound();
            }
            return View(tbl_NgheNghiepCha);
        }

        // POST: NgheNghiepCha/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Tbl_NgheNghiepCha tbl_NgheNghiepCha = db.Tbl_NgheNghiepCha.Find(id);
            db.Tbl_NgheNghiepCha.Remove(tbl_NgheNghiepCha);
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
