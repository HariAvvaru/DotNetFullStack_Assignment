using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string name;
            int id, unitprice, quant;
            int tot, disc, fin;

            Console.WriteLine("Enter product id: ");
            id = int.Parse(Console.ReadLine());

            Console.WriteLine("Enter product name: ");
            name = Console.ReadLine();

            Console.WriteLine("Enter unit price: ");
            unitprice = int.Parse(Console.ReadLine());

            Console.WriteLine("Enter quantity: ");
            quant = int.Parse(Console.ReadLine());

            tot = unitprice * quant;

            if (quant > 50)
            {
                disc = (int)(tot * 0.3);
            }
            else if (quant > 30)
            {
                disc = (int)(tot * 0.2);
            }
            else if(quant > 10)
            {
                disc = (int)(tot * 0.1);
            }
            else
            {
                disc = tot;
            }

            fin = tot - disc;

            Console.WriteLine("Product Details");
            Console.WriteLine("Product Id : " + id);
            Console.WriteLine("Product Name : " + name);
            Console.WriteLine("Unit Price : " + unitprice);
            Console.WriteLine("Quantity : " + quant);
            Console.WriteLine("Total Amount : " + tot);
            Console.WriteLine("Discount Amount : " + disc);
            Console.WriteLine("Final Amount : " + fin);

            Console.ReadLine();
        }
    }
}
