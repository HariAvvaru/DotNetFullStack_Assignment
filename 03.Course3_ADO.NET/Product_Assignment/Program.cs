using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string conStr = "Server=USHYDAHARISAI1\\SQLSERVER2022; Database=Sept2024Db; Integrated Security=true";

            SqlConnection con=new SqlConnection(conStr);            
            while (true) {
                Console.WriteLine("1. Insert new value\n2. Display product details\n3. Exit");
                int ch = int.Parse(Console.ReadLine());
                if (ch == 3)
                {
                    break;
                }
                else 
                { 
                    switch (ch)
                    {
                        case 1:
                            Console.WriteLine("Enter product Id");
                            int pid=int.Parse(Console.ReadLine());

                            Console.WriteLine("Enter product name");
                            string pname = Console.ReadLine();

                            Console.WriteLine("Enter product price");
                            int pprice = int.Parse(Console.ReadLine());

                            Console.WriteLine("Enter product quantity");
                            int pquant = int.Parse(Console.ReadLine());

                            Console.WriteLine("Enter product category");
                            string pcat = Console.ReadLine();

                            string cmdText = string.Format("insert into Product values({0},'{1}',{2},{3},'{4}')", pid,pname,pprice,pquant,pcat);
                            SqlCommand cmd = new SqlCommand(cmdText, con);

                            con.Open();
                            int nx=(int)cmd.ExecuteNonQuery();
                            if (nx > 0)
                            {
                                Console.WriteLine("Inserted values successfully");
                            }
                            con.Close();

                            break;
                
                        case 2:
                            Console.WriteLine("-----------Product Details-----------");
                            string cdText = string.Format("select * from Product");
                            SqlDataAdapter adp=new SqlDataAdapter(cdText,con);
                            DataSet ds = new DataSet();

                            adp.Fill(ds);
                            foreach (DataRow dr in ds.Tables[0].Rows) { 
                    
                                Console.WriteLine("Product Name:{0}\n Product name: {1}\t Price: {2}\t Quantity: {3}\t Category:{4} ", dr[1], dr[0], dr[2], dr[3], dr[4]);
                            }
                            break;

                    }
                }
            }
            Console.ReadLine();
        }
    }
}