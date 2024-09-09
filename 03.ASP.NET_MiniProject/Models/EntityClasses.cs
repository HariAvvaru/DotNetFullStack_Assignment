using Microsoft.EntityFrameworkCore;

namespace Project.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }

    public class Employee
    {
        public int EmployeeId { get; set; }
        public string Name { get; set; }
        public string Job { get; set; }
        public string Salary { get; set; }
        public string Department { get; set; }
    }

    public class EmployeeDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }

        public DbSet<Employee> Employees { get; set; }

        public EmployeeDbContext(DbContextOptions<EmployeeDbContext> options)
         : base(options)
        {

        }
    }
}
