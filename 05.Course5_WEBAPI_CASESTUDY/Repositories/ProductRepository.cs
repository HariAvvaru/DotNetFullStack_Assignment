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

        public List<Product> GetProductByCategory(string category)
        {
            if (string.IsNullOrEmpty(category))
            {
                return new List<Product>();
            }

            List<Product> dt = _context.Products.Where(product => product.Category == category).ToList();
            return dt;
        }

        public List<Product> GetProductOutOfStock()
        {
            List<Product> prod = _context.Products.ToList();
            List<Product> filt = prod.Where(prod => prod.Quantity == 0).ToList();
            return filt;
        }

        public List<Product> GetProductByPrice(Single x1, Single x2)
        {
            List<Product> filt = _context.Products.Where(prod => prod.UnitPrice > x1 && prod.UnitPrice<x2).ToList();
            return filt;
        }

        public List<string> GetCategories()
        {
            var cat = _context.Products.Select(prod=>prod.Category).Distinct().ToList();
            return cat;
        }






    }
}
