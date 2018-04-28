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
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");
            return View(db.Tbl_DiemDanhHS.ToList().OrderByDescending(x => x.ngayDiemDanh).OrderByDescending(x => x.maThang).OrderByDescending(x => x.maNamHoc));
        }
        //tạo đối tượng điểm danh ngày
        public ActionResult DiemDanhNgay(string ngaydiemdanh)
        {
            if (ngaydiemdanh == "")
            {
                TempData["ngaydiemdanh"] = "Vui lòng chọn ngày bạn muốn điểm danh kế bên -->";
            }
            else
            {
                string ngay = ngaydiemdanh.Substring(8);
                string maThang = ngaydiemdanh.Substring(5, 2);
                string maNamHoc = ngaydiemdanh.Substring(0, 4);
                var dd = db.Tbl_DiemDanhHS.Where(x => x.ngayDiemDanh == ngay && x.maThang == maThang && x.maNamHoc == maNamHoc).FirstOrDefault();
                if (dd != null)
                {
                    TempData["dd"] = "Ngày Điểm Danh Hôm Nay Đã Tạo";
                }
                else
                {
                    TempData["ngay"] = ngay;
                    TempData["thang"] = maThang;
                    TempData["nam"] = maNamHoc;
                    Tbl_DiemDanhHS diemdanh = new Tbl_DiemDanhHS();
                    diemdanh.maNamHoc = maNamHoc;
                    diemdanh.maThang = maThang;
                    diemdanh.ngayDiemDanh = ngay;
                    db.Tbl_DiemDanhHS.Add(diemdanh);
                    db.SaveChanges();
                    TaoDiemDanh();
                }
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
            var diemdanh = db.Tbl_DiemDanhHS.Where(x => x.ngayDiemDanh == ngay && x.maThang == thang && x.maNamHoc == nam).FirstOrDefault();

            var listpl = db.Tbl_PhanLop.ToList().Where(x => x.maNamHoc == DateTime.Now.Year.ToString());
            foreach (var item in listpl)
            {
                Tbl_CTDiemDanhHS chitiet = new Tbl_CTDiemDanhHS();
                chitiet.maDiemDanhHS = diemdanh.maDiemDanhHS;
                chitiet.trangThai = "Có";
                chitiet.maHS = item.maHS;
                TempData["maHS"] = chitiet.maHS;
                chitiet.maLoai = item.maLoai;
                chitiet.maLop = item.maLop;

                db.Tbl_CTDiemDanhHS.Add(chitiet);
                db.SaveChanges();
            }
        }
        string a = "";
        public ActionResult DiemDanh_View(int id, string maLop = "")
        {
            //ViewBag.maLops = new SelectList(db.Tbl_LopHoc.ToList(), "maLop", "tenLop");

            string s = Session["maGV"].ToString();
            var lstmaLop = from a1 in db.Tbl_LopHoc
                           join a2 in db.Tbl_PhanCong
                           on a1.maLop equals a2.maLop
                           where a2.maGV == s
                           select new
                           {
                               a1.maLop
                           };

            foreach (var r in lstmaLop)
            {
                a = r.maLop;
            }



            ViewBag.maLops = lstmaLop;
            ViewBag.selectedId = maLop;
            //    ViewBag.maNamHoc=db.Tbl_NamHoc.Where(x=>)
            //var test = db.Tbl_CTDiemDanhHS.Where(x => x.maDiemDanhHS == id &&
            //maLop == "" ? true : x.maLop == maLop
            //&& x.Tbl_DiemDanhHS.maNamHoc == DateTime.Now.Year.ToString()).ToList();

            //var kq = from l in db.Tbl_LopHoc
            //         join n in db.Tbl_NamHoc
            //         on l.maNamHoc equals n.maNamHoc
            //         where n.maNamHoc == DateTime.Now.Year.ToString()
            //         select new
            //         {
            //            a =  l.maLop,
            //             n.tenNamHoc,
            //         };

            return View(db.Tbl_CTDiemDanhHS.Where(x => x.maDiemDanhHS == id && x.maLop == a).ToList());


        }
        public ActionResult DoiTrangThaiDiemDanh(int id, string loai)
        {
            var list = db.Tbl_CTDiemDanhHS.Where(x => x.maCTDiemDanhHS == id).FirstOrDefault();
            //var lisths = db.Tbl_HocPhi.Where(x => x.maHS == list.maHS).FirstOrDefault();
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

        public ViewResult GV_LichSuDiemDanh(string maNamHoc, string maThang)
        {
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");

            return View(db.Tbl_DiemDanhHS.ToList().Where(x => x.maNamHoc == maNamHoc && x.maThang == maThang));


        }

    }
}