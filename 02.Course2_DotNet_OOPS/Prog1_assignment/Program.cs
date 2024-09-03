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
            string name, job;
            int id, sal;

            Console.WriteLine("Enter your id: ");
            id = int.Parse(Console.ReadLine());

            Console.WriteLine("Enter your name: ");
            name = Console.ReadLine();

            Console.WriteLine("Enter your job: ");
            job = Console.ReadLine();

            Console.WriteLine("Enter your sal: ");
            sal = int.Parse(Console.ReadLine());

            Console.WriteLine("Employee Details");
            Console.WriteLine("Employee Id : " + id);
            Console.WriteLine("Employee Name : " + name);
            Console.WriteLine("Employee Job : " + job);
            Console.WriteLine("Employee Sal : " + sal);

            Console.ReadLine();
        }
    }
}
