using PagedList;
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
    public class TonGiaoController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: TonGiao
        public ActionResult Index(int page = 1, int pageSize = 5)
        {
            return View(db.Tbl_TonGiao.ToList().ToPagedList(page, pageSize));
        }

      
        // GET: TonGiao/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TonGiao/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maTonGiao,tenTonGiao")] Tbl_TonGiao tbl_TonGiao)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_TonGiao.Add(tbl_TonGiao);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_TonGiao);
        }

  
        // GET: TonGiao/Delete/5
        public ActionResult Delete(int? id)
        {
            var tg = db.Tbl_TonGiao.Where(x => x.maTonGiao == id).FirstOrDefault();
            if (tg != null)
            {
                Tbl_TonGiao tbl_TonGiao = db.Tbl_TonGiao.Find(id);
                db.Tbl_TonGiao.Remove(tbl_TonGiao);
                db.SaveChanges();
                return Json(new { status = 0 }, JsonRequestBehavior.AllowGet);
            }
            else
                return Json(new { status = 1 }, JsonRequestBehavior.AllowGet);
        }

        // POST: TonGiao/Delete/5


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
