﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class PhanCongController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: PhanLop

        public ActionResult MenuPhanCong()
        {
            return View();
        }
        public ActionResult LoadGVvaLop( string maNamHoc)
        {
            XuLiLoadGVCB();
            XuLiLoadLopCB();
 ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");
            return View();
        }
        public ActionResult Indexpl()
        {
            // giáo viên đã được phân công lớp thì sẽ không hiển thị trong list
            
            XuLiLoadGVCB();
            XuLiLoadLopCB();
           
            return View(db.Tbl_PhanCong.ToList());
        }
        public void XuLiLoadGVCB()
        {
            List<ModelGiaoVien> lstgv = new List<ModelGiaoVien>();
            foreach (var g in db.Tbl_GiaoVien)
            {
                int dem = 0;
                var abc = db.Tbl_TaiKhoan.Where(x => x.maGV == g.maGV).FirstOrDefault();
                if (abc.loaiTK == "Teacher")
                {

                    foreach (var item in db.Tbl_PhanCong)
                    {
                        if (g.maGV == item.maGV)
                        {
                            dem++;
                        }

                    }
                    if (dem == 0)
                    {

                        ModelGiaoVien gv = new ModelGiaoVien();
                        gv.maGV = g.maGV;
                        gv.hoTen = g.hoTen;
                        lstgv.Add(gv);
                    }
                }
               

            }
            ViewBag.maGV = new SelectList(lstgv, "maGV", "hoTen");
        }
        public void XuLiLoadLopCB()
        {
            List<ModelLopHoc> lslh = new List<ModelLopHoc>();
            foreach(var lh in db.Tbl_LopHoc)
            {
                int dem = 0;
                foreach(var item in db.Tbl_PhanCong)
                {
                    if(lh.maLop == item.maLop)
                    {
                        dem++;
                    }
                }
                if(dem !=2)
                {
                    ModelLopHoc mdlh = new ModelLopHoc();
                    mdlh.maLop = lh.maLop;
                    mdlh.tenLop = lh.tenLop;
                    lslh.Add(mdlh);
                }
            }
           
            ViewBag.maLop = new SelectList(lslh, "maLop", "tenLop");
        }
        // phân công 1 lớp chỉ có 1 giáo viên
        public ActionResult PhanCong(string maLop,string maGV,string maNamHoc)
        {
            int dem = 0;
            var lh = db.Tbl_LopHoc.Where(x => x.maLop == maLop).FirstOrDefault();
            //var nh = db.Tbl_NamHoc.Where(x => x.maNamHoc == lh.maNamHoc).FirstOrDefault();
            if (maGV == null || maLop == null)
            {
                TempData["loinull"] = "abc";
            }
            else
            {
                foreach (var item in db.Tbl_PhanCong)
                {
                    if (item.maLop == maLop)
                    {
                        dem++;
                    }
                }
                if (dem == 2)
                {
                    TempData["loi"] = "abc";
                }
                else
                {

                    var pc = db.Tbl_PhanCong.Where(x => x.maGV == maGV).FirstOrDefault();
                    if (pc != null)
                    {
                        TempData["loipc"] = "Mỗi giáo viên chỉ được dạy 1 lớp";
                    }
                    else
                    {
                        var loai = db.Tbl_LopHoc.Where(x => x.maLop == maLop).FirstOrDefault();
                        Tbl_PhanCong phancong = new Tbl_PhanCong();
                        phancong.maLop = maLop;
                        phancong.maLoai = loai.maLoai;
                        phancong.maNamHoc = maNamHoc;
                        phancong.maGV = maGV;
                        db.Tbl_PhanCong.Add(phancong);
                        db.SaveChanges();
                    }
                }
            }
            
            return RedirectToAction("Indexpl");
        }

        public ActionResult ThaydoiGV(string maGVcu,string id,string maGV)
        {
            if (maGV == null)
            {
                TempData["loitd"] = "Không có giáo viên để thay đổi";
            }
            else
            {
                Tbl_PhanCong pc = new Tbl_PhanCong();
                //Id = TempData["malop"].ToString();

                pc = db.Tbl_PhanCong.Where(x => x.maLop == id && x.maGV == maGVcu).FirstOrDefault();

                pc.maGV = maGV;

                db.Entry(pc).State = EntityState.Modified;
                db.SaveChanges();
                
            }
            return RedirectToAction("Indexpl");
        }
        public ActionResult LichSuPhanCong(string maNamHoc)
        {
            TempData["maphancong"] = maNamHoc;
            ViewBag.maNamHoc = new SelectList(db.Tbl_NamHoc, "maNamHoc", "tenNamHoc");

            var pc = db.Tbl_PhanCong.Where(x => x.maNamHoc == maNamHoc).ToList();
            if (pc == null)
            {
                return RedirectToAction("Indexpl");
            }
           
            else
            {
                return View(pc);
            }
            
        }
        
    }
}