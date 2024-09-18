/*1.   Create typescript program to process product details using object oriented programming.
    •	Class should contains public  variables:  ProductId, ProductName, UnitPrice, Qty.
    •	Constructor should allow productId as parameter
    •	Methods:
            a.  getTotal()
            b.  showDetails()*/
var Product = /** @class */ (function () {
    function Product(PID, PName, UnitPrice, Quantity) {
        if (PName === void 0) { PName = ""; }
        if (UnitPrice === void 0) { UnitPrice = 0; }
        if (Quantity === void 0) { Quantity = 0; }
        this.ProductID = PID;
        this.ProductName = PName;
        this.Quantity = Quantity;
        this.UnitPrice = UnitPrice;
    }
    Product.prototype.getTotal = function () {
        var total = this.UnitPrice * this.Quantity;
        return total;
    };
    Product.prototype.showDetails = function () {
        console.log("ProductID: ".concat(this.ProductID, ", Product Name: ").concat(this.ProductName, ", UnitPrice: ").concat(this.UnitPrice, ", Quantity: ").concat(this.Quantity));
    };
    return Product;
}());
var pd = new Product(1, "Oneplus", 10000, 5);
pd.showDetails();
console.log("Total : " + pd.getTotal());
