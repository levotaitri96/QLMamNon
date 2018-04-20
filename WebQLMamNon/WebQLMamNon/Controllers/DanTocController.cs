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
    public class DanTocController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: DanToc
        public ActionResult Index(int page = 1, int pageSize = 5)
        {
            return View(db.Tbl_DanToc.ToList().ToPagedList(page, pageSize));
        }

        // GET: DanToc/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DanToc/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maDanToc,tenDanToc")] Tbl_DanToc tbl_DanToc)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_DanToc.Add(tbl_DanToc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_DanToc);
        }

  
        // GET: DanToc/Delete/5
        public ActionResult Delete(int? id)
        {
            var dt = db.Tbl_DanToc.Where(x => x.maDanToc == id).FirstOrDefault();
            if (dt != null)
            {
                Tbl_DanToc tbl_DanToc = db.Tbl_DanToc.Find(id);
                db.Tbl_DanToc.Remove(tbl_DanToc);
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
    }
}
