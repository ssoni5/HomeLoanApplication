using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace HomeLoanApplication.Models
{
    public partial class RegistrationsContext : DbContext
    {
        public RegistrationsContext()
            : base("name=RegistrationsContext")
        {
            Database.SetInitializer<RegistrationsContext>(new DropCreateDatabaseAlways<RegistrationsContext>());
        }

        public virtual DbSet<Customer> Customers { get; set; }
    }
}