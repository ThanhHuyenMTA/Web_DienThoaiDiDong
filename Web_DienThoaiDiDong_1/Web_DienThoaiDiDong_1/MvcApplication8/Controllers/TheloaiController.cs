using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication8.Models;
namespace MvcApplication8.Controllers
{
    public class TheloaiController : Controller
    {
        //
        // GET: /Theloai/

        DienThoaiDiDong1Entities1 db = new DienThoaiDiDong1Entities1();

        public PartialViewResult DanhMucDienThoaiPartial()
        {
            return PartialView(db.theloaisps.Where(n => n.phukien == 0).ToList());
        }
        public PartialViewResult DanhMucPhuKienPartial()
        {
            return PartialView(db.theloaisps.Where(n => n.phukien == 1).ToList());
        }

    }
}
