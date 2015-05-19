using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class Equipo
    {
        public int idEquipo { get; set; }
        public String eNombre { get; set; }
        public int eIdTorneo { get; set; }

        public List<equipo> CargaEquipos()
        {
            using (TP1_PW3Entities bd = new TP1_PW3Entities())
            {
                var datos = (from e in bd.equipoes
                             select e).ToList();
                return datos;
            }
        }
    }
}
