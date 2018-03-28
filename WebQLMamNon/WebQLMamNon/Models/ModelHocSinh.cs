using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebQLMamNon.Models
{
    public class ModelHocSinh
    {
        public string maHS { get; set; }
        public string hoTenCha { get; set; }
        public string hoTenMe { get; set; }
        public string hoTen { get; set; }
        public string soDTNha { get; set; }
        public DateTime ngaySinh { get; set; }
        public string email { get; set; }
        public string diaChi { get; set; }

        public string gioiTinh { get; set; }
        public string hinhAnh { get; set; }
    }
}