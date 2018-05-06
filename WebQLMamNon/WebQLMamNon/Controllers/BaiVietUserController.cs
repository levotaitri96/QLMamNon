using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQLMamNon.Models;

namespace WebQLMamNon.Controllers
{
    public class BaiVietUserController : Controller
    {
        QuanLyMamNonEntities db = new QuanLyMamNonEntities();
        // GET: BaiVietUser
        public ActionResult Index()
        {
            return View(db.Tbl_BaiViet.ToList());
        }
        public ActionResult Details(int id)
        {
            Tbl_BaiViet tbl_BaiViet = db.Tbl_BaiViet.Find(id);
            if (tbl_BaiViet == null)
            {
                return HttpNotFound();
            }
            ViewBag.lstBVLQ = db.Tbl_BaiViet.Where(x => x.maBaiViet != id).ToList();
            return View(tbl_BaiViet);
        }
    }

}