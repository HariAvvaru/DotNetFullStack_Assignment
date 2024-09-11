using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Identity.Client;
using ProductsAPIServiceRepo.Models;
using ProductsAPIServiceRepo.Services;

namespace ProductsAPIServiceRepo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class ProductsApiController : ControllerBase
    {
        public IProductService _serv;

        public ProductsApiController(IProductService serv)
        {
            _serv = serv;
        }

        [HttpGet]
        public IActionResult GetAllProducts()
        {
            return Ok(_serv.GetAllProducts());
        }

        [HttpGet("{id}")]
        public IActionResult GetProductsById(int id)
        {
            if (_serv.GetProductsById(id) == null)
            {
                return NotFound(new { result = "No such record found " });
            }
            else
            {
                return Ok(_serv.GetProductsById(id));
            }
        }

        [HttpPost]
        public IActionResult AddProducts(Product pro)
        {
            _serv.AddProducts(pro);
            return Ok(new { Result = "Products added successfully" });
        }

        [HttpPut]
        public IActionResult UpdateProducts(Product pro)
        {
            _serv.UpdateProducts(pro);
            return Ok(new { Result = "Products updated successfully" });
        }

        [HttpDelete]
        public IActionResult DeleteProducts(int id)
        {
            string r = _serv.DeleteProducts(id);
            if (r == "Null")
            {
                return NotFound(new { result = "No such record found to delete" });
            }
            else
            {
                return Ok(new { result = "Deleted successfully" });
            }
        }

        [HttpGet("category")]
        public IActionResult GetProductByCategory(string category)
        {
            if (_serv.GetProductByCategory(category) == null)
            {
                return NotFound(new { result = "No such record found " });
            }
            else
            {
                return Ok(_serv.GetProductByCategory(category));
            }
        }

        [HttpGet]
        [Route("ProductsApiController/GetProductOutOfStock")] 
        // Or use [HttpGet("nostock")]
        public IActionResult GetProductOutOfStock()

        {
            if (_serv.GetProductOutOfStock() == null)
            {
                return NotFound(new { result = "No such record found " });
            }
            else
            {
                return Ok(_serv.GetProductOutOfStock());
            }
        }

        [HttpGet]
        [Route("ProductsApiController/GetProductByPrice")]
        // Or use [HttpGet("nostock")]
        public IActionResult GetProductByPrice(Single x1, Single x2)

        {
            if (_serv.GetProductByPrice(x1, x2) == null)
            {
                return NotFound(new { result = "No such record found " });
            }
            else
            {
                return Ok(_serv.GetProductByPrice(x1, x2));
            }
        }

        [HttpGet]
        [Route("ProductsApiController/GetCategories")]
        // Or use [HttpGet("nostock")]
        public IActionResult GetCategories()

        {
            if (_serv.GetCategories() == null)
            {
                return NotFound(new { result = "No such record found " });
            }
            else
            {
                return Ok(_serv.GetCategories());
            }
        }


    }
}
