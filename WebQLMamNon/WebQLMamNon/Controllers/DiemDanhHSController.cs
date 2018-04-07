using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class DiemDanhHSController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: DiemDanhHS
        public ActionResult Index()
        {

            return View(db.Tbl_DiemDanh.ToList().OrderByDescending(x => x.ngayDiemDanh).OrderByDescending(x => x.maThang).OrderByDescending(x => x.maNamHoc));
        }
        //tạo đối tượng điểm danh ngày
        public ActionResult DiemDanhNgay()
        {
            DateTime dt = DateTime.Now;
            string y = String.Format("{0:yyyy}", dt);
            string m = String.Format("{0:MM}", dt);
            string d = String.Format("{0:dd}", dt);
            var dd = db.Tbl_DiemDanh.Where(x => x.ngayDiemDanh == d && x.maThang == m && x.maNamHoc == y).FirstOrDefault();
            if (dd != null)
            {
                TempData["dd"] = "Ngày Điểm Danh Hôm Nay Đã Tạo";
            }
            else
            {
                TempData["ngay"] = d;
                TempData["thang"] = m;
                TempData["nam"] = y;
                Tbl_DiemDanh diemdanh = new Tbl_DiemDanh();
                diemdanh.maNamHoc = y;
                diemdanh.maThang = m;
                diemdanh.ngayDiemDanh = d;
                db.Tbl_DiemDanh.Add(diemdanh);
                db.SaveChanges();
                TaoDiemDanh();
            }
            return RedirectToAction("Index");
        }
        //tạo mới 1 danh sách chi tiết điểm danh theo từng ngày hiện tại
        public void TaoDiemDanh()
        {

            string ngay = TempData["ngay"].ToString();
            string thang = TempData["thang"].ToString();
            string nam = TempData["nam"].ToString();
            //lấy được mã Điểm Danh tạo ở trên
            var diemdanh = db.Tbl_DiemDanh.Where(x => x.ngayDiemDanh == ngay && x.maThang == thang && x.maNamHoc == nam).FirstOrDefault();
            var listpl = db.Tbl_PhanLop.ToList();
            foreach (var item in listpl)
            {
                Tbl_ChiTietDiemDanh chitiet = new Tbl_ChiTietDiemDanh();
                chitiet.maDiemDanh = diemdanh.maDiemDanh;
                chitiet.trangThai = "Có";
                chitiet.maHS = item.maHS;
                TempData["maHS"] = chitiet.maHS;
                chitiet.maLoai = item.maLoai;
                chitiet.maLop = item.maLop;
                db.Tbl_ChiTietDiemDanh.Add(chitiet);
                db.SaveChanges();
            }
        }

        public ActionResult DiemDanh_View(int id)
        {

            return View(db.Tbl_ChiTietDiemDanh.ToList().Where(x => x.maDiemDanh == id));

        }
        public ActionResult DoiTrangThaiDiemDanh(int id, string loai)
        {
            var list = db.Tbl_ChiTietDiemDanh.Where(x => x.maChiTietDiemDanh == id).FirstOrDefault();
            var lisths = db.Tbl_HocPhi.Where(x => x.maHS == list.maHS).FirstOrDefault();
            //lisths.soNgayHoc = 22;
            if (list.trangThai == "Vắng")
            {
                list.trangThai = "Có";

                db.SaveChanges();
            }
            else
            {
                list.trangThai = "Vắng";
                //lisths.soNgayHoc--;
                db.SaveChanges();
            }
            return Redirect(loai);
        }

    }
}
