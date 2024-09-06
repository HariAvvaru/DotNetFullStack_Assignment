using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebApplication3.Models;

namespace WebApplication3.Controllers
{
    public class HomeController : Controller
    {
        //private readonly ILogger<HomeController> _logger;

        SalesDbContext _context;
        public HomeController( SalesDbContext salesDbContext)
        {
            _context = salesDbContext;
        }

        public IActionResult Index()
        {
            List<Product> products = _context.Products.ToList();
            return View(products);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(Product pr)
        {
            if (ModelState.IsValid)
            {
                _context.Products.Add(pr);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return View();
            }
        }
        
        public IActionResult Details(int id)
        {
            Product obj = _context.Products.Find(id);
            return View(obj);
        }
        

        [HttpGet]
        public IActionResult Edit(int id)
        {
            Product obj = _context.Products.Find(id);
            return View(obj);
        }
        [HttpPost]
        public IActionResult Edit(Product pr)
        {
            _context.Products.Update(pr);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult Delete(int id)
        {
            Product obj = _context.Products.Find(id);
            return View(obj);
        }
        [HttpPost]
        [ActionName("Delete")]
        public IActionResult DeleteConfirm(int id)
        {
            Product obj = _context.Products.Find(id);
            _context.Products.Remove(obj);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
