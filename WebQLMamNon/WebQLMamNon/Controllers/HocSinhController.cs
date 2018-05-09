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
    public class HocSinhController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();

        // GET: HocSinh
        public ActionResult Index(int page = 1, int pageSize = 5)
        {
            ViewBag.lstLoai = db.Tbl_LoaiLop.ToList();
            ViewBag.lstLop = db.Tbl_LopHoc.ToList();

            return View(db.Tbl_HocSinh.ToList().OrderBy(x => x.hoTen.Split(' ').Last()).ToPagedList(page, pageSize));



        }

        // GET: HocSinh/Details/5
        public ActionResult Details(int id)
        {

            Tbl_HocSinh tbl_HocSinh = db.Tbl_HocSinh.Find(id);
            if (tbl_HocSinh == null)
            {
                return HttpNotFound();
            }
            return View(tbl_HocSinh);
        }

        // GET: HocSinh/Create
        public ActionResult Create()
        {
            ViewBag.maDanToc = db.Tbl_DanToc.ToList();
            ViewBag.maTonGiao = db.Tbl_TonGiao.ToList();
            ViewBag.maNgheNghiepMe = db.Tbl_NgheNghiepMe.ToList();
            ViewBag.maNgheNghiepCha = db.Tbl_NgheNghiepCha.ToList();
            return View();
        }
        public int GetTuoi(DateTime ngaysinh)
        {
            var today = DateTime.Today;
            // Calculate the age.
            var age = today.Year - ngaysinh.Year;
            // Go back to the year the person was born in case of a leap year
            if (ngaysinh > today.AddYears(-age)) age--;
            return age;
        }
        // POST: HocSinh/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "maHS,hoTenCha,hoTenMe,hoTen,soDTNha,ngaySinh,email,diaChi,gioiTinh,hinhAnh,maNgheNghiepMe,maNgheNghiepCha,maTonGiao,maDanToc")] Tbl_HocSinh tbl_HocSinh)
        {
            if (ModelState.IsValid)
            {
                if (tbl_HocSinh.ngaySinh == null)
                {
                    tbl_HocSinh.maLoai = null;
                }
                else
                {
                    if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 2 && GetTuoi(tbl_HocSinh.ngaySinh.Value) <= 3)
                    {
                        tbl_HocSinh.maLoai = "L01";
                    }
                    else if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 4 && GetTuoi(tbl_HocSinh.ngaySinh.Value) < 5)
                    {
                        tbl_HocSinh.maLoai = "L02";
                    }
                    else if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 5 && GetTuoi(tbl_HocSinh.ngaySinh.Value) <= 6)
                    {
                        tbl_HocSinh.maLoai = "L03";
                    }
                }
                db.Tbl_HocSinh.Add(tbl_HocSinh);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_HocSinh);
        }

        // GET: HocSinh/Edit/5

        public ActionResult Edit(int id)
        {
            ViewBag.maDanToc = db.Tbl_DanToc.ToList();
            ViewBag.maTonGiao = db.Tbl_TonGiao.ToList();
            ViewBag.maNgheNghiepMe = db.Tbl_NgheNghiepMe.ToList();
            ViewBag.maNgheNghiepCha = db.Tbl_NgheNghiepCha.ToList();

            Tbl_HocSinh tbl_HocSinh = db.Tbl_HocSinh.Find(id);
            DateTime birth = Convert.ToDateTime(tbl_HocSinh.ngaySinh);
            ViewBag.birth = birth.ToString("yyyy-MM-dd");
            if (tbl_HocSinh == null)
            {
                return HttpNotFound();
            }

            return View(tbl_HocSinh);
        }

        // POST: HocSinh/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "maHS,hoTenCha,hoTenMe,hoTen,soDTNha,ngaySinh,email,diaChi,gioiTinh,hinhAnh,maTonGiao,maDanToc,maNgheNghiepMe,maNgheNghiepCha")] Tbl_HocSinh tbl_HocSinh)
        {
            if (ModelState.IsValid)
            {
                if (tbl_HocSinh.ngaySinh == null)
                {
                    tbl_HocSinh.maLoai = null;
                }
                else
                {
                    if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 2 && GetTuoi(tbl_HocSinh.ngaySinh.Value) <= 3)
                    {
                        tbl_HocSinh.maLoai = "L01";
                    }
                    else if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 4 && GetTuoi(tbl_HocSinh.ngaySinh.Value) < 5)
                    {
                        tbl_HocSinh.maLoai = "L02";
                    }
                    else if (GetTuoi(tbl_HocSinh.ngaySinh.Value) >= 5 && GetTuoi(tbl_HocSinh.ngaySinh.Value) <= 6)
                    {
                        tbl_HocSinh.maLoai = "L03";
                    }
                    db.Entry(tbl_HocSinh).State = EntityState.Modified;
                    db.SaveChanges();

                    return RedirectToAction("Index");
                }

            }

            return View(tbl_HocSinh);
        }

        //xóa học sinh nào chưa phân lớp
        [HttpPost]
        public JsonResult Delete(int id)
        {
            var hs = db.Tbl_PhanLop.Where(x => x.maHS == id).FirstOrDefault();
            if (hs == null)
            {
                Tbl_HocSinh Tbl_HocSinh = db.Tbl_HocSinh.Find(id);
                db.Tbl_HocSinh.Remove(Tbl_HocSinh);
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
        //loadHS theo lớp truyền vào mã lớp
        public ActionResult LoadHS(string id)
        {
            //lấy danh sách học sinh đã được phân lớp 
            List<int> lstMaHS = db.Tbl_HocSinh.Where(n => n.maLoai == id).Select(x => x.maHS).ToList();

            //truy xuat danh sach HS theo loai
            List<Tbl_HocSinh> lstHS = db.Tbl_HocSinh.Where(n => lstMaHS.Contains(n.maHS)).ToList();
            //gan danh sach loai HS            
            return View(lstHS);

        }
        public ActionResult IndexPhanLopHS()
        {
            //List<string> lstMaNamHoc = db.Tbl_PhanLop.Select(x => x.maNamHoc).ToList();
            //List<string> lstMaLoai = db.Tbl_PhanLop.Select(x => x.maLoai).ToList();
            var z = db.Tbl_HocSinh.ToList();
            ViewBag.hocsinh = z;


            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop.ToList().Where(x => x.maLoai != "L04"), "maLoai", "tenLoai");
            int a = DateTime.Now.Year;
            ViewBag.namhocs = db.Tbl_NamHoc.Where(x => x.maNamHoc.CompareTo(a.ToString()) >= 0).ToList();//hiển thị năm hiện tại và tương lai
            return View(db.Tbl_LopHoc.ToList());
        }
        [HttpPost]
        public ActionResult PhanLopHS(string maLop, string maNamHoc, string maLoai, string loai)
        {
            maNamHoc = Session["getnamhoc"].ToString();
            int countHS_Lop = db.Tbl_PhanLop.Where(x => x.maLop == maLop && x.maNamHoc == maNamHoc).Count();// đếm học sinh theo năm truyền vào, và hiển thị phân lớp của năm đó.
            //var q = db.Tbl_PhanLop.Where(x => x.maLop == maLop).ToList();
            int?[] lstMaHS = db.Tbl_PhanLop.Select(x => x.maHS).ToArray();
            List<Tbl_HocSinh> hsNew = db.Tbl_HocSinh.Where(x => x.maLoai == maLoai && !lstMaHS.Contains(x.maHS)).ToList();
            var lop = db.Tbl_LopHoc.Where(x => x.maLop == maLop).FirstOrDefault();
            foreach (Tbl_HocSinh item in hsNew)
            {
                if (countHS_Lop < 5)
                { // chỉ phân lớp cho năm học hiện tại
                    db.Tbl_PhanLop.Add(new Tbl_PhanLop { maNamHoc = maNamHoc, maLop = maLop, maLoai = maLoai, maHS = item.maHS });
                    countHS_Lop++;
                    TempData["Success"] = "Xếp lớp học sinh thành công";
                    //return RedirectToAction("Index");
                }
                else
                {
                    TempData["loi"] = "Mỗi lớp tối đa 20 học sinh";
                }
            }
            lop.soLuongHS += countHS_Lop;
            db.SaveChanges();



            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop.ToList().Where(x => x.maLoai != "L04"), "maLoai", "tenLoai");
            ViewBag.maNH = new SelectList(db.Tbl_NamHoc.ToList(), "maNamHoc", "tenNamHoc");
            return View(db.Tbl_PhanLop.Where(x => x.maLop == maLop && x.maNamHoc == maNamHoc && x.maLoai == maLoai).ToList());
        }

        public ActionResult PhanLopHSS(string maLop, string maNH, string maLoai)
        {
            maNH = Session["getnamhoc"].ToString();
            int countHS_Lop = db.Tbl_PhanLop.Where(x => x.maLop == maLop && x.maNamHoc == maNH).Count();
            //var q = db.Tbl_PhanLop.Where(x => x.maLop == maLop).ToList();
            int?[] lstMaHS = db.Tbl_PhanLop.Select(x => x.maHS).ToArray();
            List<Tbl_HocSinh> hsNew = db.Tbl_HocSinh.Where(x => x.maLoai == maLoai && !lstMaHS.Contains(x.maHS)).ToList();
            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop.ToList(), "maLoai", "tenLoai");
            ViewBag.maNH = new SelectList(db.Tbl_NamHoc.ToList(), "maNamHoc", "tenNamHoc");
            Session["malopin"] = maLop;
            Session["manamin"] = maNH;
            return View(db.Tbl_PhanLop.Where(x => x.maLop == maLop && x.maNamHoc == maNH && x.maLoai == maLoai).ToList());
        }
        public ActionResult LoadLopTheoLoai(string maLoai, string maNamHoc)
        {
            Session["getnamhoc"] = maNamHoc;
            int?[] lstMaHS = db.Tbl_PhanLop.Select(x => x.maHS).ToArray();
            var z = db.Tbl_HocSinh.Where(x => x.maLoai == maLoai && !lstMaHS.Contains(x.maHS)).ToList();
            ViewBag.hocsinh = z;// ViewBag học sinh chưa được phân lớp
            List<Tbl_LopHoc> lstmalop = db.Tbl_LopHoc.Where(n => n.maLoai == maLoai).ToList();
            // List<Tbl_LopHoc> lstLop = db.Tbl_LopHoc.Where(n => lstmalop.Contains(n.maLop)).ToList();
            ViewBag.maLoai = new SelectList(db.Tbl_LoaiLop.ToList().Where(x => x.maLoai != "L04"), "maLoai", "tenLoai");
            int a = DateTime.Now.Year;
            ViewBag.namhocs = db.Tbl_NamHoc.Where(x => x.maNamHoc.CompareTo(a.ToString()) >= 0).ToList();//hiển thị năm hiện tại và tương lai
            return View("IndexPhanLopHS", lstmalop);
        }

        [HttpPost]
        public JsonResult DeleteHSPhanLop(int id)
        {

            var hs = db.Tbl_PhanLop.Where(x => x.idPhanLop == id).FirstOrDefault();
            if (hs != null)
            {
                Tbl_PhanLop pl = db.Tbl_PhanLop.Find(id);
                db.Tbl_PhanLop.Remove(pl);
                db.SaveChanges();
                return Json(new { status = 0 }, JsonRequestBehavior.AllowGet);
            }
            else
                return Json(new { status = 1 }, JsonRequestBehavior.AllowGet);

        }

    }

}