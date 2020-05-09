using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StokKontrol.Models.Entity;
namespace StokKontrol.Controllers
{
    public class SatisController : Controller
    {
        // GET: Satis
        MvcDbStokEntities db = new MvcDbStokEntities();
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult YeniSatis()
        {

            return View();
        }

        public ActionResult YeniSatis(TBLSATISLAR p)
        {
            db.TBLSATISLAR.Add(p);
            db.SaveChanges();

            return View("Index");
        }
    }
}