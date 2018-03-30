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
          
            return View(db.Tbl_DiemDanh.ToList().OrderByDescending(x=>x.ngayDiemDanh).OrderByDescending(x=>x.maThang).OrderByDescending(x=>x.maNamHoc));
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
                TempData["ngay"] = b;
                TempData["thang"] = a;
                TempData["nam"] = y;
                Tbl_DiemDanh diemdanh = new Tbl_DiemDanh();
                diemdanh.maNamHoc = y;
                diemdanh.maThang = a;
                diemdanh.ngayDiemDanh = b;
                db.Tbl_DiemDanh.Add(diemdanh);
                db.SaveChanges();
                TaoDiemDanh();
            }
            return RedirectToAction("Index");
        }
        public void TaoDiemDanh()
        {
           string ngay= TempData["ngay"].ToString();
           string thang= TempData["thang"].ToString();
           string nam=TempData["nam"].ToString();
           var diemdanh = db.Tbl_DiemDanh.Where(x => x.ngayDiemDanh == ngay && x.maThang == thang && x.maNamHoc == nam).FirstOrDefault();
           var listpc = db.Tbl_PhanCong.ToList();
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
       
        public ActionResult DiemDanh(int id)
        {
          
            return View(db.Tbl_ChiTietDiemDanh.ToList().Where(x => x.maDiemDanh == id));

        }
        public ActionResult DoiTrangThaiDiemDanh(int id,string loai)
        {
            var list = db.Tbl_ChiTietDiemDanh.Where(x => x.maChiTietDiemDanh == id).FirstOrDefault();
            var listgv = db.Tbl_ChiTietLuong.Where(x => x.maGV == list.maGV).FirstOrDefault();
            if(list.trangThai=="Vắng")
            {
                list.trangThai = "Có";
                listgv.soNgayLam++;
                db.SaveChanges();
            }
            else
            {
                list.trangThai = "Vắng";
                listgv.soNgayLam--;
                db.SaveChanges();
            }
          
            return Redirect(loai);
        }
       
    }
}