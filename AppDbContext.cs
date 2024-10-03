using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using EfCrud.Entities;

namespace ProgramaEmprestimo
{
    public class AppDbContext : DbContext
    {
        public DbSet<EmprestimoLivros> emprestimoLivros { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // Defina a string de conexão para o banco de dados
            optionsBuilder.UseSqlServer("Server=.;Database=EmprestimoLivros;Trusted_Connection=True;");
        }
    }
}
