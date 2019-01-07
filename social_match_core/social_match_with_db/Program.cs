using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AsanDB;
using System.Data;

namespace social_match_with_db
{
    class Program
    {
        static void Main(string[] args)
        {
            Db database = new Db();
            DataTable data1  = database.query("SELECT * FROM personnes WHERE niveau = 1");
            DataTable data2 = database.query("SELECT * FROM personnes WHERE niveau = 3");

            Console.WriteLine("Parrains :");
            foreach (DataRow row in data1.Rows)
            {
                // ... Write value of first field as integer.
                Console.WriteLine("id :" + row.Field<int>(0)+" Nom : "+row.Field<string>(2));
            }

            Console.WriteLine("Filleules :");
            foreach (DataRow row in data2.Rows)
            {
                // ... Write value of first field as integer.
                Console.WriteLine("id :" + row.Field<int>(0) + " Nom : " + row.Field<string>(2));
            }

            Console.ReadKey();

        }
    }
}
