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

class Customer {
    public CID: number;
    public CName: string;
    public loc: string;

    constructor(CID: number = 0, PName: string = "", loc: string = "") {
        this.CID = CID;
        this.CName = PName;
        this.loc = loc;
    }

    public showDetails(): void {
        console.log(`Customer Details :: ID: ${this.CID}, Name: ${this.CName}, Location: ${this.loc}`);
    }
}

let c1: Customer = new Customer();
let c2: Customer = new Customer(10256);
let c3: Customer = new Customer(10256, 'Scott');
let c4: Customer = new Customer(10256, 'Scott', 'Hyd'); 


c1.showDetails();
c2.showDetails();
c3.showDetails();
c4.showDetails();
