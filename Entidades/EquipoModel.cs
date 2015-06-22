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
        private int? _Monto;
        private int? _IdTorneo;

        public int IdEquipo { get { return _IdEquipo; } }
        public String Nombre { get { return _Nombre; } }
        public int? Monto { get { return _Monto; } }
        public int? IdTorneo { get { return _IdTorneo; } }

        public EquipoModel(String nombre, int? monto, int? idTorneo) {
            if (String.IsNullOrEmpty(nombre) || monto ==null)
            {
                string message = String.Format("Error al crear EquipoModel - Nombre: {0} , Monto: {1}, IdTorneo: {2}", nombre, monto, idTorneo);
                throw new Exception(message);
            }else {
                this._Monto = monto;
                this._Nombre = nombre;
                this._IdTorneo = idTorneo;
            }
        }

        public EquipoModel(int idEquipo, String nombre, int? monto, int? idTorneo):this(nombre, monto, idTorneo)
        {
            this._IdEquipo = idEquipo;
        }

        public static List<EquipoModel> ObtenerEquipos(bool incluirDeTorneosInactivos)
        {
            using (var torneosContext = new TorneosEntities())
            {
                if (!incluirDeTorneosInactivos)
                {
                    var datos = (from e in torneosContext.Equipo
                                 join t in torneosContext.Torneo on e.IdTorneo equals t.Id
                                 where t.Activo == true
                                 select e).ToList();
                    return EntidadAModelo(datos);
                }
                else
                {
                    var datos = (from e in torneosContext.Equipo
                                 select e).ToList();
                    return EntidadAModelo(datos);
                }
            }
        }

        public bool Guardar()
        {
            if (String.IsNullOrEmpty(_Nombre) || _Monto == null){
                string message = String.Format("Error al guerdar EquipoModel - Nombre: {0} , Monto: {1}, IdTorneo: {2}", _Nombre, _IdTorneo, _Monto);
                throw new Exception(message);
            }else {
                using (var torneosContext = new TorneosEntities()) {

                    Equipo equipo;
                    if (this.IdEquipo == 0)
                    {
                        equipo = new Equipo();
                    }
                    else
                    {
                        equipo = (from e in torneosContext.Equipo
                                  where e.Id == this.IdEquipo
                                  select e).First();
                    }
                    equipo.Nombre = this._Nombre;
                    equipo.MontoAbonado = this._Monto;
                    equipo.IdTorneo = this._IdTorneo;
                    if(equipo.Id == 0){
                        torneosContext.Equipo.AddObject(equipo); 
                    }
                    int result = torneosContext.SaveChanges();
                    return result == 1;
                }
            }
        }

        private static List<EquipoModel> EntidadAModelo(List<Equipo> equipos)
        {
            List<EquipoModel> retorno = new List<EquipoModel>();
            foreach (var equipo in equipos)
            {
                EquipoModel equipoModel = new EquipoModel(equipo.Id, equipo.Nombre, equipo.MontoAbonado, equipo.IdTorneo);
                retorno.Add(equipoModel);
            }
            return retorno;
        }

        public static EquipoModel ObtenerEquipo(int idTorneo)
        {
            using (var torneosContext = new TorneosEntities())
            {
                var equipo = (from e in torneosContext.Equipo
                              where e.Id == idTorneo
                             select e).First();
                return EntidadAModelo(equipo);
            }
        }

        private static List<EquipoModel> EntidadesAModelos(List<Equipo> torneos)
        {
            List<EquipoModel> retorno = new List<EquipoModel>();
            foreach (var torneo in torneos)
            {
                retorno.Add(EntidadAModelo(torneo));
            }
            return retorno;
        }

        private static EquipoModel EntidadAModelo(Equipo equipo)
        {
            EquipoModel EquipoModel = new EquipoModel(equipo.Id, equipo.Nombre, equipo.MontoAbonado, equipo.IdTorneo);
            return EquipoModel;
        }

        public static bool Eliminar(int idEquipo)
        {
            using (var torneosContext = new TorneosEntities())
            {
                var equipo = (from e in torneosContext.Equipo
                              where e.Id == idEquipo
                              select e).ToList();

                torneosContext.DeleteObject(equipo[0]);
                int result = torneosContext.SaveChanges();
                return result == 1;
            }
        }
    }
}
