using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace ProgramaEmprestimo
{
    [Table("livro")]
    public class Livro
    {
        [Key]
        [Column("codigo_livro")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int codigoLivro { get; set; }

        [Column("titulo")]
        public String titulo { get; set; }

        [Column("categoria")]
        public String categoria { get; set; }

        [Column("paginas")]
        public int paginas { get; set; }

    }
}
