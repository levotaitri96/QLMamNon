using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class DiemDanhGVController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: DiemDanhGV
        public ActionResult Index(int page = 1, int pageSize = 5)
        {
            DateTime e = DateTime.Now;
            string a = e.ToString("yyyy-MM-dd");
            ViewBag.cv = a;
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");
            return View(db.Tbl_DiemDanh.ToList().OrderByDescending(x => x.ngayDiemDanh).OrderByDescending(x => x.maThang).OrderByDescending(x => x.maNamHoc).ToPagedList(page, pageSize));
        }
        public ActionResult DiemDanhNgay(string ngaydiemdanh)
        {
            if (ngaydiemdanh == "")
            {
                TempData["tb"] = "Chọn ngày,tháng,năm";
            }
            else
            {

                string ngay = ngaydiemdanh.Substring(8);
                string maThang = ngaydiemdanh.Substring(5, 2);
                string maNamHoc = ngaydiemdanh.Substring(0, 4);
                var dd = db.Tbl_DiemDanh.Where(x => x.ngayDiemDanh == ngay && x.maThang == maThang && x.maNamHoc == maNamHoc).FirstOrDefault();
                if (dd != null)
                {
                    TempData["dd"] = "Ngày Điểm Danh Đã Tạo";
                }
                else
                {
                    TempData["ngay"] = ngay;
                    TempData["thang"] = maThang;
                    TempData["nam"] = maNamHoc;
                    Tbl_DiemDanh diemdanh = new Tbl_DiemDanh();
                    diemdanh.maNamHoc = maNamHoc;
                    diemdanh.maThang = maThang;
                    diemdanh.ngayDiemDanh = ngay;
                    db.Tbl_DiemDanh.Add(diemdanh);
                    db.SaveChanges();
                    TaoDiemDanh();
                }
            }
            return RedirectToAction("Index");
        }
        public void TaoDiemDanh()
        {
            string ngay = TempData["ngay"].ToString();
            string thang = TempData["thang"].ToString();
            string nam = TempData["nam"].ToString();
            var diemdanh = db.Tbl_DiemDanh.Where(x => x.ngayDiemDanh == ngay && x.maThang == thang && x.maNamHoc == nam).FirstOrDefault();
            var listpc = db.Tbl_PhanCong.ToList().Where(x=> x.maNamHoc == nam);
            foreach (var item in listpc)
            {
                Tbl_ChiTietDiemDanh chitiet = new Tbl_ChiTietDiemDanh();
                chitiet.maDiemDanh = diemdanh.maDiemDanh;
                chitiet.trangThai = "Có";
                chitiet.maGV = item.maGV;
                TempData["magv"] = chitiet.maGV;
                chitiet.maLoai = item.maLoai;
                chitiet.maLop = item.maLop;
                db.Tbl_ChiTietDiemDanh.Add(chitiet);
                db.SaveChanges();

            }
        }

        public ActionResult DiemDanh(int id, string ngay, string thang , string nam)
        {
            ViewBag.ngay = ngay;
            ViewBag.thang = thang;
            ViewBag.nam = nam;
            return View(db.Tbl_ChiTietDiemDanh.ToList().Where(x => x.maDiemDanh == id));

        }
        public ActionResult DoiTrangThaiDiemDanh(int id, string loai)
        {
            var list = db.Tbl_ChiTietDiemDanh.Where(x => x.maChiTietDiemDanh == id).FirstOrDefault();
            var listgv = db.Tbl_ChiTietLuong.Where(x => x.maGV == list.maGV).FirstOrDefault();
            if (list.trangThai == "Vắng")
            {
                list.trangThai = "Có";
                //listgv.soNgayLam++;
                db.SaveChanges();
            }
            else
            {
                list.trangThai = "Vắng";
                //listgv.soNgayLam--;
                db.SaveChanges();
            }

            return Redirect(loai);
        }
        [HttpPost]
        public ActionResult LichSuDiemDanh(string maNamHoc,string maThang)
        {
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");
            return View(db.Tbl_DiemDanh.ToList().Where(x=> x.maNamHoc == maNamHoc && x.maThang == maThang).OrderBy(x => x.ngayDiemDanh).OrderBy(x => x.maThang).OrderBy(x => x.maNamHoc));
        }
    }
}