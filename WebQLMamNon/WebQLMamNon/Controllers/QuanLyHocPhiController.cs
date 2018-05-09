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
    public class QuanLyHocPhiController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: QuanLyHocPhi
        public ActionResult Index()
        {
            var tbl_QuanLyHocPhi = db.Tbl_QuanLyHocPhi.Include(t => t.Tbl_LoaiLop);
            return View(tbl_QuanLyHocPhi.ToList());
        }

        // GET: QuanLyHocPhi/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_QuanLyHocPhi tbl_QuanLyHocPhi = db.Tbl_QuanLyHocPhi.Find(id);
            if (tbl_QuanLyHocPhi == null)
            {
                return HttpNotFound();
            }
            return View(tbl_QuanLyHocPhi);
        }

        // GET: QuanLyHocPhi/Create
        public ActionResult Create()
        {
            ViewBag.maLoai = db.Tbl_LoaiLop.Where(x=>x.maLoai != "L04").ToList();
            return View();
        }

        // POST: QuanLyHocPhi/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idQLHP,tienThangHP,maLoai")] Tbl_QuanLyHocPhi tbl_QuanLyHocPhi)
        {
            if (ModelState.IsValid)
            {
                db.Tbl_QuanLyHocPhi.Add(tbl_QuanLyHocPhi);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.maLoai = db.Tbl_LoaiLop.ToList();
            return View(tbl_QuanLyHocPhi);
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
