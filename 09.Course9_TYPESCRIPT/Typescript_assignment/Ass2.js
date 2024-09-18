/*2.  Create typescript program to process customer details using object oriented programming.
                •	Class Name :	Customer
                •	Class should allow the following parameters in constructor
                let c1:Customer = new Customer();
                let c2:Customer = new Customer(10256);
                let c3:Customer = new Customer(10256, “Scott”);
                let c4:Customer = new Customer(10256, “Scott”, “Hyd”);

                •	Declare required number of variables in the class.
                •	Method :  ShowDetails() to display all the values in single Line.
                                Eg:	Customer Details  ::   Id : 10256, Name : Scott, City : Hyd
*/
var Customer = /** @class */ (function () {
    function Customer(CID, PName, loc) {
        if (CID === void 0) { CID = 0; }
        if (PName === void 0) { PName = ""; }
        if (loc === void 0) { loc = ""; }
        this.CID = CID;
        this.CName = PName;
        this.loc = loc;
    }
    Customer.prototype.showDetails = function () {
        console.log("Customer Details :: ID: ".concat(this.CID, ", Name: ").concat(this.CName, ", Location: ").concat(this.loc));
    };
    return Customer;
}());
var c1 = new Customer();
var c2 = new Customer(10256);
var c3 = new Customer(10256, 'Scott');
var c4 = new Customer(10256, 'Scott', 'Hyd');
c1.showDetails();
c2.showDetails();
c3.showDetails();
c4.showDetails();
