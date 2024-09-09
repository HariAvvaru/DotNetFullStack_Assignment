using Microsoft.AspNetCore.Mvc;
using Project.Models;
using System.Diagnostics;

namespace Project.Controllers
{
    public class HomeController : Controller
    {
        EmployeeDbContext _context;

        public HomeController(EmployeeDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(int uid, string pwd)
        {
            User u = _context.Users.Find(uid) ;
            if (uid == u.UserId && pwd.Equals(u.Password))
            {
                return RedirectToAction("Index", "Employee");
            }
            else
            {
                ViewData["result"] = "Invalid User Id or Password";
            }

            return View();
        }


        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }

    
}
