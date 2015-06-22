using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace Entidades
{
    public class TorneoModel
    {
        private int idTorneo;
        private String nombre;
        private Boolean activo;

        public int IdTorneo { get{ return idTorneo; }}
        public String Nombre { get{ return nombre; }}
        public Boolean Activo { get{ return activo; }}

        public TorneoModel(int idTorneo, String nombre, Boolean activo): this(nombre, activo)
        {
            this.idTorneo = idTorneo;
        }

        public TorneoModel(String nombre, Boolean activo) {
            if (String.IsNullOrEmpty(nombre)){
                throw new Exception();
            }else {
                this.activo = activo;
                this.nombre = nombre;
            }
        }

        public static List<TorneoModel> ObtenerTorneos()
        {
            using(var torneosContext = new TorneosEntities()){
                var datos = (from e in torneosContext.Torneo
                            select e).ToList();
                return EntidadesAModelos(datos);
            }
        }

        public bool Guardar()
        {
            if (String.IsNullOrEmpty(nombre)){
                throw new Exception();
            }else {
                using (var torneosContext = new TorneosEntities())
                {
                    Torneo torneo;
                    if (this.IdTorneo == 0)
                    {
                        torneo = new Torneo();
                    }
                    else {
                        torneo = (from e in torneosContext.Torneo
                                  where e.Id == this.IdTorneo
                                    select e).First();
                    }
                    torneo.Activo = this.Activo;
                    torneo.Nombre = this.nombre;
                    if (this.IdTorneo == null)
                    {
                        torneosContext.Torneo.AddObject(torneo);
                    }
                    int result = torneosContext.SaveChanges();
                    return result == 1;
                }
            }
        }

        public static int Eliminar(int idTorneo)
        {
            using (var torneosContext = new TorneosEntities())
            {
                var equipos = torneosContext.Equipo.Where(e => e.IdTorneo == idTorneo).ToList();
                equipos.ForEach(e => e.IdTorneo = null);
                torneosContext.SaveChanges();

                var torneo = (from t in torneosContext.Torneo
                            where t.Id == idTorneo
                            select t).ToList();
                
                torneosContext.DeleteObject(torneo[0]);
                int result = torneosContext.SaveChanges();
                return result;
            }
        }

        public static TorneoModel ObtenerTorneo(int idTorneo)
        {
            using (var torneosContext = new TorneosEntities())
            {
                var torneo = (from e in torneosContext.Torneo
                              where e.Id == idTorneo
                             select e).First();
                return EntidadAModelo(torneo);
            }
        }

        private static List<TorneoModel> EntidadesAModelos(List<Torneo> torneos)
        {
            List<TorneoModel> retorno = new List<TorneoModel>();
            foreach (var torneo in torneos)
            {
                retorno.Add(EntidadAModelo(torneo));
            }
            return retorno;
        }

        private static TorneoModel EntidadAModelo(Torneo torneo)
        {
            TorneoModel torneoModel = new TorneoModel(torneo.Id, torneo.Nombre, torneo.Activo);
            return torneoModel;
        }
    }
}
