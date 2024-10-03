using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramaEmprestimo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Iniciado aplicacao");

            Usuario usuario = new Usuario();
            Livro livro = new Livro();
            Autor autor = new Autor();
            Emprestimo emprestimo = new Emprestimo();


            Console.WriteLine("Finalizando aplicacao");

        }
    }
}
