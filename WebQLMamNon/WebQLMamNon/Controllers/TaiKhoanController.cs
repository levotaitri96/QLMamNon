using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class TaiKhoanController : Controller
    {
        private QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: TaiKhoan
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Tbl_TaiKhoan tbl_TaiKhoan)
        {
            if (ModelState.IsValid)
            {
                using (QuanLyMamNonEntities db = new QuanLyMamNonEntities())
                {
                    var obj = db.Tbl_TaiKhoan.Where(a => a.maGV==tbl_TaiKhoan.maGV && a.matKhau==tbl_TaiKhoan.matKhau).FirstOrDefault();

                    if (obj != null)
                    {
                        var gv = db.Tbl_GiaoVien.Where(x => x.maGV == obj.maGV).FirstOrDefault();
                        Session["UserName"] = gv.hoTen.ToString();
                        Session["maGV"] = gv.maGV.ToString();
                        Session["hinhAnh"] = gv.hinhAnh.ToString();
                        Session["loaiTaiKhoan"] = obj.loaiTK.ToString();
                        //return RedirectToAction("Index", "GiaoVien");

                        if (obj.loaiTK == "Admin")
                        {
                            return RedirectToAction("Index", "GiaoVien");
                        }
                        else if (obj.loaiTK == "Teacher")
                        {
                            return RedirectToAction("Index", "DiemDanhHS");
                        }

                        // nếu tài khoản là admin thì trả về index giáo viên như trên
                    }
                    else
                    {
                        TempData["taikhoan"] = "abc";
                    }
                }
            }
            return View(tbl_TaiKhoan);
        }
        public ActionResult LogOff()
        {
            Session.Clear();
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "BaiVietUser");
        }
        public ActionResult DoiMatKhau(string id,string matKhau,string loai)
        {
            var mk = db.Tbl_TaiKhoan.Where(x => x.maGV == id).FirstOrDefault();
            mk.matKhau = matKhau;
            db.SaveChanges();
            TempData["mk"] = "abc";
            return Redirect(loai);
        }
    }
    
}