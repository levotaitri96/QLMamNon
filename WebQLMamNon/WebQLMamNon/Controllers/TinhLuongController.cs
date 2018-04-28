using System;
using System.Collections.Generic;
using System.Data.Entity;
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
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            ViewBag.maThang = new SelectList(db.Tbl_ThangHoc, "maThang", "tenThang");
            return View(db.Tbl_TienLuong.ToList().OrderByDescending(x => x.maThang).OrderByDescending(x => x.maNamHoc));
        }
        public ActionResult TaoBangLuong(string maThang, string maNamHoc)
        {
            var tl = db.Tbl_TienLuong.Where(x => x.maThang == maThang && x.maNamHoc == maNamHoc).FirstOrDefault();
            if(tl != null)
            {
                TempData["dd"] = "Tháng này đã tạo bảng lương";
            }
            else
            {
                
                Tbl_TienLuong tienluong = new Tbl_TienLuong();
                tienluong.maNamHoc = maNamHoc;
                tienluong.maThang = maThang;
                db.Tbl_TienLuong.Add(tienluong);
                db.SaveChanges();
                TaoLuong(maThang,maNamHoc);
            }
            return RedirectToAction("Index");
        }
        public void TaoLuong(string thang, string nam)
        {
            var tluong = db.Tbl_TienLuong.Where(x => x.maThang == thang && x.maNamHoc == nam).FirstOrDefault();
            var demngay = db.Tbl_DiemDanh.ToList().Where(x=>x.maThang==tluong.maThang && x.maNamHoc==tluong.maNamHoc);
            var listpc = db.Tbl_PhanCong.ToList();
            var tien = db.Tbl_NamHoc.Where(x => x.maNamHoc == nam).FirstOrDefault();
            foreach (var item in listpc)
            {
                Tbl_ChiTietLuong ctl = new Tbl_ChiTietLuong();
                int dem = 0;
                ctl.maLuong = tluong.maLuong;
                ctl.maGV = item.maGV;
                var td = db.Tbl_GiaoVien.Where(x=>x.maGV== item.maGV).FirstOrDefault();
                if(td.trinhDo=="Đại Học")
                {
                    ctl.soTien = tien.tienThang * 2;
                }
                else if (td.trinhDo == "Cao Đẳng")
                {
                    ctl.soTien = tien.tienThang * 1.5;
                }
                else
                {
                    ctl.soTien = tien.tienThang * 1;
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
        public ActionResult ChiTietLuong(int id,string thang,string nam,Tbl_ChiTietLuong ctlll)
        {
            var ctll = db.Tbl_ChiTietLuong.Where(x => x.maLuong == ctlll.maLuong).ToList();
            var tluong = db.Tbl_TienLuong.Where(x => x.maThang == thang && x.maNamHoc == nam).FirstOrDefault();
            var demngay = db.Tbl_DiemDanh.ToList().Where(x => x.maThang == tluong.maThang && x.maNamHoc == tluong.maNamHoc);
            var listpc = db.Tbl_PhanCong.ToList();
            var tien = db.Tbl_NamHoc.Where(x => x.maNamHoc == nam).FirstOrDefault();
            
                foreach (var ctl in ctll) {
                    int dem = 0;
                ctl.maLuong = tluong.maLuong;
               
                var td = db.Tbl_GiaoVien.Where(x => x.maGV == ctl.maGV).FirstOrDefault();
                if (td.trinhDo == "Đại Học")
                {
                    ctl.soTien = tien.tienThang * 2;
                }
                else if (td.trinhDo == "Cao Đẳng")
                {
                    ctl.soTien = tien.tienThang * 1.5;
                }
                else
                {
                    ctl.soTien = tien.tienThang * 1;
                }
                //tổng số ngày làm
                foreach (var dd in demngay)
                {
                    foreach (var ctdd in db.Tbl_ChiTietDiemDanh)
                    {
                        if (dd.maDiemDanh == ctdd.maDiemDanh && ctdd.maGV == ctl.maGV && ctdd.trangThai == "Có")
                        {
                            dem++;
                        }
                    }
 
                }
               ctl.soNgayLam = dem;
                ctl.soTien = ctl.soTien * ctl.soNgayLam;
               db.Entry(ctl).State = EntityState.Modified;
               db.SaveChanges();
                }
            TempData["maluongin"] = id;
            Session["thangct"] = thang;
            Session["namct"] = nam;
            return View(db.Tbl_ChiTietLuong.ToList().Where(x => x.maLuong == id));

        }
        public ActionResult CalendarDiemDanh(string id)
        {
            var gv = db.Tbl_GiaoVien.ToList().Where(x => x.maGV == id).FirstOrDefault();
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
                        ViewBag.a = mdct.thang;
                        mdct.ngay = i.ngayDiemDanh;
                        mdct.trangThai = item.trangThai;
                        lst.Add(mdct);
                    }
                }
            }
            ViewBag.b = gv.hoTen;
            string thang = Session["thangct"].ToString();
            string nam = Session["namct"].ToString();
            return View(lst.ToList().Where(x=>x.thang==thang && x.nam==nam));
        }

    }
}