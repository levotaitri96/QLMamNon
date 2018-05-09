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
            int a = DateTime.Now.Year;
            ViewBag.namhocs = db.Tbl_NamHoc.Where(x => x.maNamHoc.CompareTo(a.ToString()) >= 0).ToList();
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
                var idqlhp = db.Tbl_QuanLyHocPhi.Where(x => x.maLoai == item.maLoai).Select(x => x.idQLHP).Max();
                var tien = db.Tbl_QuanLyHocPhi.Where(x => x.idQLHP == idqlhp).FirstOrDefault();
                ctp.idQLHP = tien.idQLHP;
                //tiền thực trả= tiền 1tháng trừ số tiền 1day x số day nghỉ. Một tháng đi học cố định 22 ngày                      
                ctp.soTien = Math.Round((double)(tien.tienThangHP - ((tien.tienThangHP) / 22) * (22 - ctp.soNgayHoc)));
                ctp.maLop = item.maLop;
                db.Tbl_ChiTietHocPhi.Add(ctp);
                ViewBag.sotien = ctp.soTien;
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
            var hs = db.Tbl_HocSinh.Where(x => x.maHS == id).Select(x => x.hoTen).FirstOrDefault();
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
                        ViewBag.nam = ct.nam;
                        ct.thang = i.maThang;
                        ViewBag.t = ct.thang;
                        ct.ngay = i.ngayDiemDanh;
                        ct.trangthai = item.trangThai;
                        lst.Add(ct);
                    }
                }

            }
            ViewBag.hs = hs;
            ViewBag.sotien = db.Tbl_ChiTietHocPhi.Where(x => x.maHS == id).Select(x => x.soTien).FirstOrDefault();
            string thang = Session["thangct"].ToString();
            string nam = Session["namct"].ToString();
            return View(lst.ToList().Where(x => x.thang == thang && x.nam == nam));
        }

    }
}