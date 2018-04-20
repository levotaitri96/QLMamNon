using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class TinhLuongController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: TinhLuong
        public ActionResult Index()
        {
            return View(db.Tbl_TienLuong.ToList().OrderByDescending(x => x.maThang).OrderByDescending(x => x.maNamHoc));
        }
        public ActionResult TaoBangLuong()
        {
            DateTime dt = DateTime.Now;
            string y = String.Format("{0:yyyy}", dt);
            string a = String.Format("{0:MM}", dt);

            var tl = db.Tbl_TienLuong.Where(x => x.maThang == a && x.maNamHoc == y).FirstOrDefault();
            if(tl != null)
            {
                TempData["dd"] = "Tháng này đã tạo bảng lương";
            }
            else
            {
                TempData["thang"] = a;
                TempData["nam"] = y;
                Tbl_TienLuong tienluong = new Tbl_TienLuong();
                tienluong.maNamHoc = y;
                tienluong.maThang = a;
                db.Tbl_TienLuong.Add(tienluong);
                db.SaveChanges();
                TaoLuong();
            }
            return RedirectToAction("Index");
        }
        public void TaoLuong()
        {
           
            string thang = TempData["thang"].ToString();
            string nam = TempData["nam"].ToString();
            var tluong = db.Tbl_TienLuong.Where(x => x.maThang == thang && x.maNamHoc == nam).FirstOrDefault();
            var demngay = db.Tbl_DiemDanh.ToList().Where(x=>x.maThang==tluong.maThang && x.maNamHoc==tluong.maNamHoc);
            var listpc = db.Tbl_PhanCong.ToList();
            foreach (var item in listpc)
            {
                Tbl_ChiTietLuong ctl = new Tbl_ChiTietLuong();
                int dem = 0;
                ctl.maLuong = tluong.maLuong;
                ctl.maGV = item.maGV;
                var td = db.Tbl_GiaoVien.Where(x=>x.maGV== item.maGV).FirstOrDefault();
                if(td.trinhDo=="Đại Học")
                {
                    ctl.soTien = 200000;
                }
                else if (td.trinhDo == "Cao Đẳng")
                {
                    ctl.soTien = 150000;
                }
                else
                {
                    ctl.soTien = 100000;
                }
               //tổng số ngày làm
                foreach(var dd in demngay)
                {
                        foreach(var ctdd in db.Tbl_ChiTietDiemDanh)
                        {
                            if(dd.maDiemDanh== ctdd.maDiemDanh && ctdd.maGV== item.maGV && ctdd.trangThai=="Có")
                            {
                                dem++;
                            }
                        }
                    
                }
                ctl.soNgayLam = dem;
                db.Tbl_ChiTietLuong.Add(ctl);
                db.SaveChanges();
            }
        }
        public ActionResult ChiTietLuong(int id,string thang,string nam)
        {
            Session["thangct"] = thang;
            Session["namct"] = nam;
            return View(db.Tbl_ChiTietLuong.ToList().Where(x => x.maLuong == id));

        }
        public ActionResult CalendarDiemDanh(string id)
        {
            List<ModelChiTietDiemDanh> lst = new List<ModelChiTietDiemDanh>();
            var ctdd = db.Tbl_ChiTietDiemDanh.ToList().Where(x => x.maGV == id);
            foreach(var item in ctdd)
            {
                foreach(var i in db.Tbl_DiemDanh.ToList())
                {
                    if(item.maDiemDanh==i.maDiemDanh)
                    {
                        ModelChiTietDiemDanh mdct = new ModelChiTietDiemDanh();
                        mdct.nam = i.maNamHoc;
                        mdct.thang = i.maThang;
                        mdct.ngay = i.ngayDiemDanh;
                        mdct.trangThai = item.trangThai;
                        lst.Add(mdct);
                    }
                }
            }
            string thang = Session["thangct"].ToString();
            string nam = Session["namct"].ToString();
            return View(lst.ToList().Where(x=>x.thang==thang && x.nam==nam));
        }

    }
}