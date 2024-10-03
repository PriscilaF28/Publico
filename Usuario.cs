using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramaEmprestimo
{
    internal class Usuario
    {
        [Key]
        [Column("codigo_usuario")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int codigoUsuario { get; set; }

        [Column("nome")]
        public string nome { get; set; }

        [Column("sexo")]
        public char sexo { get; set; }

        [Column("idade")]
        public int idade { get; set; }
    }
}
