using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

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

        public static List<Torneo> ObtenerTorneos()
        {
            using(var torneosContext = new TorneosEntities()){
                var datos = (from e in torneosContext.Torneo
                            select e).ToList();
                return datos;
            }
        }

        public void GuardarTorneo()
        {
            if (String.IsNullOrEmpty(nombre)){
                throw new Exception();
            }else {
                using (var torneosContext = new TorneosEntities())
                {
                    var torneo = new Torneo();
                    torneo.Activo = this.Activo;
                    torneo.Nombre = this.nombre;

                    torneosContext.Torneo.AddObject(torneo);
                    int result = torneosContext.SaveChanges();
                }
            }
        }
    }
}
