using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;
using PagedList;

namespace WebQLMamNon.Controllers
{
    public class NgheNghiepController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: NgheNghiep
        public ActionResult Index(int page = 1, int pageSize = 5)
        {
            return View(db.Tbl_NgheNghiep.ToList().ToPagedList(page, pageSize));
        }

        // GET: NgheNghiep/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NgheNghiep/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maNgheNghiep,tenNgheNghiep")] Tbl_NgheNghiep tbl_NgheNghiep)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_NgheNghiep.Add(tbl_NgheNghiep);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_NgheNghiep);
        }
        // GET: NgheNghiep/Delete/5
        public ActionResult Delete(int? id)
        {
            var nn = db.Tbl_NgheNghiep.Where(x => x.maNgheNghiep == id).FirstOrDefault();
            if (nn != null)
            {
                Tbl_NgheNghiep tbl_NgheNghiep = db.Tbl_NgheNghiep.Find(id);
                db.Tbl_NgheNghiep.Remove(tbl_NgheNghiep);
                db.SaveChanges();
                return Json(new { status = 0 }, JsonRequestBehavior.AllowGet);
            }
            else
                return Json(new { status = 1 }, JsonRequestBehavior.AllowGet);
        }
        // POST: NgheNghiep/Delete/5

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
