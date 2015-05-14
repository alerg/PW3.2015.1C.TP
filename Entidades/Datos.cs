using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public static class Datos
    {
        public static List<equipo> CargarEquipos()
        {
            using (TP1_PW3Entities bd = new TP1_PW3Entities())
            {
                /*var datos = (from e in bd.equipoes
                             select e).ToList();
                return datos;*/
                return null;
            }
        }
    }
}
