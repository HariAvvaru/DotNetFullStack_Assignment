using ProductsAPIServiceRepo.Models;

namespace ProductsAPIServiceRepo.Repositories
{
    public interface IProductRepository
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
