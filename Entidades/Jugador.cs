using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    class Jugador
    {
        public long idJugador { get; set; }
        public String jNombre { get; set; }
        public String jApellido { get; set; }
        public DateTime jEdad { get; set; }
        public int jIdEquipo { get; set; }
    }
}
