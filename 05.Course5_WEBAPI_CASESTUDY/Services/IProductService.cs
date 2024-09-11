using ProductsAPIServiceRepo.Models;

namespace ProductsAPIServiceRepo.Services
{
    public interface IProductService
    {
       List<Product> GetAllProducts();
       Product GetProductsById(int id);
       void AddProducts(Product pro);
       void UpdateProducts(Product pro);
       string DeleteProducts(int id);
       List<Product> GetProductByCategory(string category);
       List<Product> GetProductOutOfStock();
       List<Product> GetProductByPrice(Single x1, Single x2);
       List<string> GetCategories();


    }
}
