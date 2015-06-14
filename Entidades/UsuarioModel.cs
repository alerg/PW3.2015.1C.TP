using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    class UsuarioModel
    {
        public int idUsuario { get; set; }
        public String apellido { get; set; }
        public String nombre { get; set; }
        public String email { get; set; }
        public String contraseña { get; set; }
    }
}
