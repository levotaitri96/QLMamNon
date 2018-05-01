using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;
namespace WebQLMamNon.Controllers
{
    public class HocPhiHSController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: HocPhiHS

        public ActionResult Index()
        {
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");
            return View(db.Tbl_HocPhi.ToList().OrderByDescending(x => x.maThang).OrderByDescending(x => x.maNamHoc));
        }
        public ActionResult TaoBangHP(string maThang, string maNamHoc)
        {
            var tl = db.Tbl_HocPhi.Where(x => x.maThang == maThang && x.maNamHoc == maNamHoc).FirstOrDefault();
            if (tl != null)
            {
                TempData["dd"] = "Tháng này đã tạo bảng học phí ";
            }
            else
            {

                Tbl_HocPhi tienHP = new Tbl_HocPhi();
                tienHP.maNamHoc = maNamHoc;
                tienHP.maThang = maThang;

                db.Tbl_HocPhi.Add(tienHP);
                db.SaveChanges();
                TaoChiTietHP(maThang, maNamHoc);
            }
            return RedirectToAction("Index");
        }

        public void TaoChiTietHP(string thang, string nam)
        {

            var temp = db.Tbl_HocPhi.Where(x => x.maThang == thang && x.maNamHoc == nam).FirstOrDefault();
            var demngay = db.Tbl_DiemDanhHS.ToList().Where(x => x.maThang == temp.maThang && x.maNamHoc == temp.maNamHoc);
            var listpl = db.Tbl_PhanLop.ToList();

            var namhoc = db.Tbl_NamHoc.Where(x => x.maNamHoc == nam).FirstOrDefault();
            foreach (var item in listpl)
            {
                Tbl_ChiTietHocPhi ctp = new Tbl_ChiTietHocPhi();
                int dem = 0;
                ctp.maHP = temp.maHP;
                ctp.maHS = item.maHS;


                //tổng số ngày làm
                foreach (var dd in demngay)
                {
                    foreach (var ctdd in db.Tbl_CTDiemDanhHS)
                    {
                        if (dd.maDiemDanhHS == ctdd.maDiemDanhHS && ctdd.maHS == item.maHS && ctdd.trangThai == "Có")
                        {
                            dem++;
                        }
                    }

                }
                ctp.soNgayHoc = dem;
                if (item.maLoai == "L01")
                {
                    ctp.soTien = (namhoc.tienNgayHS * ctp.soNgayHoc);
                }
                else if (item.maLoai == "L02")
                {
                    ctp.soTien = 2 * (namhoc.tienNgayHS * ctp.soNgayHoc);
                }
                else
                {
                    ctp.soTien = 3 * (namhoc.tienNgayHS * ctp.soNgayHoc);
                }

                ctp.maLop = item.maLop;

                var y = db.Tbl_LopHoc.Where(x => x.maLop == item.maLop).ToList();

                db.Tbl_ChiTietHocPhi.Add(ctp);
                db.SaveChanges();
            }

        }
        public ActionResult HPChiTiet_View(int id, string thang, string nam, string maLop = "")
        {

            Session["thangct"] = thang;
            Session["namct"] = nam;
            ViewBag.maLops = db.Tbl_LopHoc.ToList();
            ViewBag.selectedId = maLop;
            return View(db.Tbl_ChiTietHocPhi.Where(x => x.maHP == id && maLop == "" ? true : x.maLop == maLop).ToList());

        }
        public ActionResult CalendarDiemDanh(int id)
        {
            List<ModelChiTietDiemDanhHS> lst = new List<ModelChiTietDiemDanhHS>();
            var ctdd = db.Tbl_CTDiemDanhHS.ToList().Where(x => x.maHS == id);

            foreach (var item in ctdd)
            {
                foreach (var i in db.Tbl_DiemDanhHS.ToList())
                {
                    if (item.maDiemDanhHS == i.maDiemDanhHS)
                    {
                        ModelChiTietDiemDanhHS ct = new ModelChiTietDiemDanhHS();
                        ct.nam = i.maNamHoc;
                        ct.thang = i.maThang;
                        ct.ngay = i.ngayDiemDanh;
                        ct.trangthai = item.trangThai;
                        lst.Add(ct);
                    }
                }

            }
            string thang = Session["thangct"].ToString();
            string nam = Session["namct"].ToString();
            return View(lst.ToList().Where(x => x.thang == thang && x.nam == nam));
        }

    }
}