using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entities
{
    public class Usuario
    {
        //[Key]
        public decimal UsuId { get; set; }

        //[Column(TypeName ="varchar(100)")]
        public string Nombre { get; set; }
        
        //[Column(TypeName ="varchar(100)")]
        public string Apellido { get; set; }
    }
}
