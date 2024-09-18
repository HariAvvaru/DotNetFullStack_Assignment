/*1.   Create typescript program to process product details using object oriented programming.
    •	Class should contains public  variables:  ProductId, ProductName, UnitPrice, Qty.
    •	Constructor should allow productId as parameter
    •	Methods:
            a.  getTotal()
            b.  showDetails()*/

class Product {
    public ProductID: number;
    public ProductName: string;
    public UnitPrice: number;
    public Quantity: number;

    constructor(PID: number, PName: string = "", UnitPrice: number = 0, Quantity: number = 0) {
        this.ProductID = PID;
        this.ProductName = PName;
        this.Quantity = Quantity;
        this.UnitPrice = UnitPrice;

    }

    public getTotal(): number {
        var total: number = this.UnitPrice * this.Quantity;
        return total;
    }

    public showDetails(): void {
        console.log(`ProductID: ${this.ProductID}, Product Name: ${this.ProductName}, UnitPrice: ${this.UnitPrice}, Quantity: ${this.Quantity}`);
    }
}

let pd: Product = new Product(1, "Oneplus", 10000, 5);
pd.showDetails();
console.log("Total : " + pd.getTotal());