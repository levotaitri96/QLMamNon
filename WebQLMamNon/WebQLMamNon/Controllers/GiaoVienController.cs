using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;
using PagedList;

namespace WebQLMamNon.Controllers
{
    public class GiaoVienController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        Random a = new Random();
        // GET: GiaoVien
        public ActionResult Index(int page = 1, int pageSize = 5)
        {
            return View(db.Tbl_GiaoVien.ToList().ToPagedList(page, pageSize));
        }

        // GET: GiaoVien/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_GiaoVien tbl_GiaoVien = db.Tbl_GiaoVien.Find(id);
            if (tbl_GiaoVien == null)
            {
                return HttpNotFound();
            }
            return View(tbl_GiaoVien);
        }

        // GET: GiaoVien/Create
        public ActionResult Create()
        {
            XuLiLoadDanTocCB();
            XuLiLoadTonGiaoCB();
            return View();
        }

        // POST: GiaoVien/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        public ActionResult Create([Bind(Include = "trinhDo,hoTen,soDT,ngaySinh,email,diaChi,gioiTinh,hinhAnh,maDanToc,maTonGiao")] Tbl_GiaoVien tbl_GiaoVien)
        {

            if (ModelState.IsValid)
            {
                //code create hình ảnh
                var posted = Request.Files["hinhAnh"];
                if (Request.Files != null)
                {
                    const string pathStoredImage = "~/images/";
                    var imageName = Path.GetFileName(posted.FileName);
                    var filePath = pathStoredImage + imageName;
                    posted.SaveAs(Server.MapPath(filePath));
                    tbl_GiaoVien.hinhAnh = posted.FileName;
                }
                tbl_GiaoVien.maGV = "GV" + a.Next(100000);
                TempData["magv"] = tbl_GiaoVien.maGV;
                db.Tbl_GiaoVien.Add(tbl_GiaoVien);
                db.SaveChanges();
                ThemTaiKhoan();
                return RedirectToAction("Index");
            }
            ViewBag.maDanToc = new SelectList(db.Tbl_DanToc, "maDanToc", "tenDanToc", tbl_GiaoVien.maDanToc);
            ViewBag.maTonGiao = new SelectList(db.Tbl_TonGiao, "maTonGiao", "tenTonGiao", tbl_GiaoVien.maTonGiao);
            return View(tbl_GiaoVien);
        }
        public void ThemTaiKhoan()
        {
            Tbl_TaiKhoan tk = new Tbl_TaiKhoan();
            tk.maGV = TempData["magv"].ToString();
            tk.loaiTK = "Teacher";
            tk.matKhau = "123456";
            db.Tbl_TaiKhoan.Add(tk);
            db.SaveChanges();
        }

        // GET: GiaoVien/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Tbl_GiaoVien tbl_GiaoVien = db.Tbl_GiaoVien.Find(id);
            if (tbl_GiaoVien == null)
            {
                return HttpNotFound();
            }
            ViewBag.maDanToc = new SelectList(db.Tbl_DanToc, "maDanToc", "tenDanToc", tbl_GiaoVien.maDanToc);
            ViewBag.maTonGiao = new SelectList(db.Tbl_TonGiao, "maTonGiao", "tenTonGiao", tbl_GiaoVien.maTonGiao);
            return View(tbl_GiaoVien);
        }

        // POST: GiaoVien/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maGV,trinhDo,hoTen,soDT,ngaySinh,email,diaChi,gioiTinh,hinhAnh,maTonGiao,maDanToc")] Tbl_GiaoVien tbl_GiaoVien, string fp)
        {
            if (ModelState.IsValid)
            {
                if (fp == "")
                {
                    db.Entry(tbl_GiaoVien).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                if (fp != "")
                {
                    db.Entry(tbl_GiaoVien).State = EntityState.Modified;
                    tbl_GiaoVien.hinhAnh = fp;
                    db.SaveChanges();

                    return RedirectToAction("Index");
                }
            }
            ViewBag.maDanToc = new SelectList(db.Tbl_DanToc, "maDanToc", "tenDanToc", tbl_GiaoVien.maDanToc);
            ViewBag.maTonGiao = new SelectList(db.Tbl_TonGiao, "maTonGiao", "tenTonGiao", tbl_GiaoVien.maTonGiao);
            return View(tbl_GiaoVien);
        }

        [HttpPost]
        public JsonResult Delete(string id)
        {
            var gv = db.Tbl_PhanCong.Where(x => x.maGV == id).FirstOrDefault();
            var tk = db.Tbl_TaiKhoan.Where(x => x.maGV == id).FirstOrDefault();
            if (gv == null)
            {
                Tbl_TaiKhoan tbl_Taikhoan = db.Tbl_TaiKhoan.Find(tk.maTK);
                db.Tbl_TaiKhoan.Remove(tbl_Taikhoan);
                Tbl_GiaoVien tbl_Giaovien = db.Tbl_GiaoVien.Find(id);
                db.Tbl_GiaoVien.Remove(tbl_Giaovien);
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
        // xử lý load dân tộc lên combox để chọn lúc tạo giáo viên
        public void XuLiLoadDanTocCB()
        {
            ViewBag.maDanToc = new SelectList(db.Tbl_DanToc, "maDanToc", "tenDanToc");
        }
        // xử lý load tôn giáo lên combox để chọn lúc tạo giáo viên
        public void XuLiLoadTonGiaoCB()
        {
            ViewBag.maTonGiao = new SelectList(db.Tbl_TonGiao, "maTonGiao", "tenTonGiao");
        }
    }
}
