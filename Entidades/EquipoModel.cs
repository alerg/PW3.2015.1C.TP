using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Objects;
using System.Data.Objects.DataClasses;

namespace Entidades
{
    public class EquipoModel
    {
        private int _IdEquipo;
        private String _Nombre;
        private int _Monto;
        private int _IdTorneo;

        public int IdEquipo { get { return _IdEquipo; } }
        public String Nombre { get { return _Nombre; } }
        public int Monto { get { return _Monto; } }
        public int IdTorneo { get { return _IdTorneo; } }

        public EquipoModel(String nombre, int monto, int idTorneo) {
            if (String.IsNullOrEmpty(nombre) || monto > 0 || idTorneo > 0)
            {
                throw new Exception();
            }else {
                this._Monto = monto;
                this._Nombre = nombre;
                this._IdTorneo = idTorneo;
            }
        }

        public static List<Equipo> CargaEquipos()
        {
            using (var torneosContext = new TorneosEntities())
            {
                var datos = (from e in torneosContext.Equipo
                             select e).ToList();
                return datos;
            }
        }

        public void GuardarEquipo()
        {
            if (String.IsNullOrEmpty(_Nombre) || _IdTorneo > 0 || _Monto > 0){
                    throw new Exception();
            }else {
                using (var torneosContext = new TorneosEntities()) {
                    var equipo = new Equipo();
                    equipo.IdTorneo = this._IdTorneo;
                    equipo.Nombre = this._Nombre;
                    equipo.MontoAbonado = this._Monto;

                    torneosContext.Equipo.AddObject(equipo);
                    torneosContext.SaveChanges();
                }
            }
        }
    }
}
