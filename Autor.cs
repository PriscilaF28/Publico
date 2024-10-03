using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace ProgramaEmprestimo
{
    [Table("autor")]
    public class Autor
    {
        [Key]
        [Column("codigo_autor")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int codigoAutor { get; set; }

        [Column("nome")]
        public string nome { get; set; }

        [Column("sexo")]
        public int sexo { get; set; }

    }
}
