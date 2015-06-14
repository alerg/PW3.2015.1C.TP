using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    class JugadorModel
    {
        public long idJugador { get; set; }
        public String nombre { get; set; }
        public String apellido { get; set; }
        public DateTime edad { get; set; }
        public int idEquipo { get; set; }
    }
}
