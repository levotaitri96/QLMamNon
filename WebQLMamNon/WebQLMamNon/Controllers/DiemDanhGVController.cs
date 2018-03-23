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
        public ActionResult Index()
        {
          
            return View(db.Tbl_DiemDanh.ToList());
        }
        public ActionResult DiemDanhNgay()
        {
            DateTime dt = DateTime.Now;
            string y = String.Format("{0:yyyy}", dt);
            string a = String.Format("{0:MM}", dt);
            string b = String.Format("{0:dd}", dt);
            var dd = db.Tbl_DiemDanh.Where(x => x.ngayDiemDanh == b && x.maThang == a && x.maNamHoc == y).FirstOrDefault();
            if (dd != null)
            {
                TempData["dd"] = "Ngày Điểm Danh Hôm Nay Đã Tạo";
            }
            else
            {
                Tbl_DiemDanh diemdanh = new Tbl_DiemDanh();
                diemdanh.maNamHoc = y;
                diemdanh.maThang = a;
                diemdanh.ngayDiemDanh = b;
                db.Tbl_DiemDanh.Add(diemdanh);
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }
        public ActionResult DiemDanh(int id)
        {
          
            DateTime dt = DateTime.Now;
            string y = String.Format("{0:yyyy}", dt);
            string a= String.Format("{0:MM}", dt);
            string b = String.Format("{0:dd}", dt);
            var nh = db.Tbl_NamHoc.Where(x => x.maNamHoc == y).FirstOrDefault();
            var th = db.Tbl_ThangHoc.Where(x => x.maThang == a).FirstOrDefault();
            var listpc = db.Tbl_PhanCong.ToList();
            var ct = db.Tbl_ChiTietDiemDanh.Where(x => x.maDiemDanh == id).FirstOrDefault();
            if(ct != null)
            {
                return View(db.Tbl_ChiTietDiemDanh.ToList());
            }
            foreach(var item in listpc)
            {
                Tbl_DiemDanh diemdanh = db.Tbl_DiemDanh.Where(x => x.ngayDiemDanh == b && x.maThang == a && x.maNamHoc == y).FirstOrDefault();
                if (diemdanh != null)
                {
                    Tbl_ChiTietDiemDanh chitiet = new Tbl_ChiTietDiemDanh();
                    chitiet.maDiemDanh = id;
                    chitiet.trangThai = "Vắng";
                    chitiet.maGV = item.maGV;
                    chitiet.maLoai = item.maLoai;
                    chitiet.maLop = item.maLop;
                    db.Tbl_ChiTietDiemDanh.Add(chitiet);
                    db.SaveChanges();
                }              
            }
            return View(db.Tbl_ChiTietDiemDanh.ToList());

        }
        public ActionResult DoiTrangThaiDiemDanh(int id,string loai)
        {
            var list = db.Tbl_ChiTietDiemDanh.Where(x => x.maChiTietDiemDanh == id).FirstOrDefault();
            if(list.trangThai=="Không")
            {
                list.trangThai = "Có";
                db.SaveChanges();
            }
            else
            {
                list.trangThai = "Không";
                db.SaveChanges();
            }
            return Redirect(loai);
        }
    }
}