using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    class Comentario
    {
        public int idComentario { get; set; }
        public int cIdUsuario { get; set; }
        public DateTime cFecha { get; set; }
        public String cDetalle { get; set; }
    }
}
