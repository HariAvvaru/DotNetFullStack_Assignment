using Microsoft.AspNetCore.Mvc;
using ProductsAPIServiceRepo.Models;

namespace ProductsAPIServiceRepo.Repositories
{
    public class ProductRepository : IProductRepository
    {
        public SalesDbContext _context;
        public ProductRepository(SalesDbContext context)
        {
            _context = context;
        }

        public List<Product> GetAllProducts() { 
            List<Product> prod= _context.Products.ToList();
            return prod;
        }

        public Product GetProductsById(int id)
        {
            Product prod = _context.Products.Find(id);
            return prod;
        }

        public void AddProducts(Product pro)
        {
            _context.Products.Add(pro);
            _context.SaveChanges();
        }
        public void UpdateProducts(Product pro)
        {
            _context.Products.Update(pro);
            _context.SaveChanges();
        }
        public string DeleteProducts(int id)
        {
            Product obj = _context.Products.Find(id);
            if (obj == null)
            {
                return "Null";
            }
            else
            {
                _context.Products.Remove(obj);
                _context.SaveChanges();
                return "Success";
            }
        }



    }
}
