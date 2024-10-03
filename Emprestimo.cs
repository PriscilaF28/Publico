using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace ProgramaEmprestimo
{
    [Table("emprestimo")]
    public class Emprestimo
    {
        [Key]
        [Column("codigo_emprestimo")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int codigoEmprestimo { get; set; }

        [ForeignKey("Autor")]
        public int codigoAutor { get; set; }

        [ForeignKey("Emprestimo")]
        public int codigoLivro { get; set; }

        [Column("data_emprestio")]
        public DateTime dataEmprestimo { get; set; }

        [Column("data_devolucao")]
        public DateTime dateDevolucao { get; set; }

        [Column("quantidade_livro")]
        public int quantidadeLivro { get; set; }
       
    }


}
