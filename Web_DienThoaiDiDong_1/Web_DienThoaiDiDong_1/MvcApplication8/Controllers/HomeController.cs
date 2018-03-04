using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication8.Models;
namespace MvcApplication8.Controllers
{
    public class HomeController : Controller
    {
       
        //
        // GET: /Home/
        DienThoaiDiDong1Entities1 db = new DienThoaiDiDong1Entities1(); 
        public ActionResult Index()
        {
            return View();
        }
     
    }
}
