using Microsoft.EntityFrameworkCore;
using ProductsAPIServiceRepo.Models;
using ProductsAPIServiceRepo.Repositories;

namespace ProductsAPIServiceRepo.Services
{
    public class ProductService : IProductService
    {
        public IProductRepository _repo;

        public ProductService(IProductRepository repo)
        {
            _repo = repo;
        }

        public List<Product> GetAllProducts()
        {
            return _repo.GetAllProducts();
        }

        public Product GetProductsById(int id)
        {
            Product prod = _repo.GetProductsById(id);
            return prod;
        }

        public void AddProducts(Product pro)
        {
            _repo.AddProducts(pro);
        }

        public void UpdateProducts(Product pro)
        {
            _repo.UpdateProducts(pro);
        }

        public string DeleteProducts(int id)
        {
            return _repo.DeleteProducts(id);
        }
        public List<Product> GetProductByCategory(string category)
        {
            List<Product> pro=_repo.GetProductByCategory(category);
            return pro;
        }

        public List<Product> GetProductOutOfStock()
        {
            List<Product> pro = _repo.GetProductOutOfStock();
            return pro;
        }
        public List<Product> GetProductByPrice(Single x1, Single x2)
        {
            List<Product> pro = _repo.GetProductByPrice(x1,x2);
            return pro;
        }

        public List<string> GetCategories()
        {
            List<string> pro = _repo.GetCategories();
            return pro;
        }

    }
}
