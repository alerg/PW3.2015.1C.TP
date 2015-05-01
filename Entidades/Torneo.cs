using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    class Torneo
    {
        public int idTorneo { get; set; }
        public String tNombre { get; set; }
        public Boolean tActivo { get; set; }
        public Decimal tPrecio { get; set; }
    }
}
