using ExAPICRUD.Models;
using Microsoft.AspNetCore.Mvc;

namespace ExAPICRUD.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsApiController : Controller
    {        
        SalesDbContext _context;
        public ProductsApiController(SalesDbContext context) 
        {
            _context = context; 
        }

        //Create
        [HttpPost]
        public IActionResult CreateProduct(Product product) { 
            _context.Products.Add(product); 
            _context.SaveChanges();
            return Ok(new { status=" Product created successfully" });
        }

        [HttpGet]
        public IActionResult GetAllProducts()
        {
            return Ok(_context.Products.ToList());
        }

        //Read
        [HttpGet("{id}")]
        public IActionResult GetProductById(int id)
        {
            Product obj = _context.Products.Find(id);

            if (obj != null)
            {
                return Ok(obj);
            }
            else
            {
                return NotFound(new { status = "Product details does not exists." });
            }
        }

        //Update

        [HttpPut]
        public IActionResult UpdateProduct(Product product)
        {
            _context.Products.Update(product);
            _context.SaveChanges();
            return Ok(new { status = " Product updated successfully" });
        }

        
        //Delete
        [HttpDelete("{id}")]
        public IActionResult DeleteProductById(int id)
        {
            Product obj = _context.Products.Find(id);

            if (obj != null)
            {
                _context.Products.Remove(obj);
                _context.SaveChanges();
                return Ok(new { status = "Product details are deleted from server." });
            }
            else
            {
                return NotFound(new { status = "Product details does not exists." });
            }
        }

    }
}  
