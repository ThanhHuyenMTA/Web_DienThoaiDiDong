using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication8.Areas.Admin.Controllers
{
    public class TrangchuAdminController : Controller
    {
        //
        // GET: /Admin/TrangchuAdmin/ 
        public ActionResult TrangchuAdmin()
        {
            //kiểm tra đăng nhập
            if (Session["Taikhoan"] == null || Session["Taikhoan"].ToString() == "")
            {
                return RedirectToAction("Login","Login");
            }
               return View();
            
         }
       
    }
}
