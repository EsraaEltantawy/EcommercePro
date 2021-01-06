using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EcommercePro.DAL;
using EcommercePro.Repository;
using EcommercePro.Models;
using Newtonsoft.Json;

namespace EcommercePro.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Dashboard()
        {
            return View();
        }
        public GenericUnitOfWork _unitOfWork = new GenericUnitOfWork();
        public ActionResult Categories()
        {
            List<Tbl_Category> allcategories = _unitOfWork.GetRepositoryInstance<Tbl_Category>().GetAllRecordsIQueryable().Where(i => i.IsDelete == false).ToList();
            return View(allcategories);
        }
        public ActionResult AddCategory()
        {
            return updateCategory(0);
        }

        public ActionResult updateCategory(int categroyId)
        {
            CategoryDetail cd;
            if (categroyId != null)
            {
                cd = JsonConvert.DeserializeObject<CategoryDetail>(JsonConvert.SerializeObject(_unitOfWork.GetRepositoryInstance<Tbl_Category>().GetFirstorDefault(categroyId)));
            }
            else {
                cd = new CategoryDetail();
            }
            return View("updateCategory",cd);
        }
        public ActionResult product() 
        {
            return View(_unitOfWork.GetRepositoryInstance<Tbl_Product>().GetProduct());
        }



        public ActionResult ProductEdit(int productId)
        {
           
            return View(_unitOfWork.GetRepositoryInstance<Tbl_Product>().GetFirstorDefault(productId));
        }

        [HttpPost]
        public ActionResult ProductEdit(Tbl_Product tbl)
        {
           
            _unitOfWork.GetRepositoryInstance<Tbl_Product>().Update(tbl);
            return RedirectToAction("Product");
        }
        public ActionResult productAdd()
        {
            return View();
        }
        [HttpPost]
        public ActionResult productAdd(Tbl_Product tbl)
        {
            _unitOfWork.GetRepositoryInstance<Tbl_Product>().Add(tbl);
            return RedirectToAction("product");
        } 
    }

}