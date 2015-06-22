using System;
using System.Collections.Generic;
using System.Linq;

namespace Entidades
{
    public class JugadorModel
    {

        private long _IdJugador;
        private String _Nombre;
        private String _Apellido;
        private int? _Edad;
        private int? _IdEquipo;

        public long IdJugador
        {
            get
            {
                return this._IdJugador;
            }
        }
        public String Nombre
        {
            get
            {
                return this._Nombre;
            }
        }
        public String Apellido
        {
            get
            {
                return this._Apellido;
            }
        }
        public int? Edad
        {
            get
            {
                return this._Edad;
            }
        }
        public int? IdEquipo
        {
            get
            {
                return this._IdEquipo;
            }
        }

        public JugadorModel(String nombre, String apellido, int? edad, int? idEquipo)
        {
            if (String.IsNullOrEmpty(nombre) || String.IsNullOrEmpty(apellido) || edad == null || idEquipo == null)
            {
                string message = String.Format("Error al crear JugadorModel - Nombre: {0} , Apellido : {1}, edad: {2}, IdEquipo: {3}", nombre, apellido, edad, idEquipo);
                throw new Exception(message);
            }else {
                this._Apellido = apellido;
                this._Nombre = nombre;
                this._Edad = edad;
                this._IdEquipo = idEquipo;
            }
        }

        public JugadorModel(int idJugador, String nombre, String apellido, int? edad, int? idEquipo)
            : this(nombre, apellido, edad, idEquipo)
        {
            this._IdJugador = idJugador;
        }

        public static object ObtenerJugadoresPorEquipo(int? idEquipo)
        {
            using (var torneosContext = new TorneosEntities())
            {
                try
                {
                    var jugadores = (from j in torneosContext.Jugador
                                   where j.IdEquipo == idEquipo
                                   select j).ToList();
                    return EntidadesAModelos(jugadores);
                }
                catch (Exception exception){
                    Console.WriteLine(exception.Message);
                    return null;
                }
                
            }
        }

        private static JugadorModel EntidadAModelo(Jugador jugador)
        {
            JugadorModel JugadorModel = new JugadorModel(jugador.Id, jugador.Nombre, jugador.Apellido, jugador.Edad, jugador.IdEquipo);
            return JugadorModel;
        }

        private static List<JugadorModel> EntidadesAModelos(List<Jugador> jugadores)
        {
            List<JugadorModel> retorno = new List<JugadorModel>();
            foreach (var jugador in jugadores){
                JugadorModel jugadorModel = new JugadorModel(jugador.Id, jugador.Nombre, jugador.Apellido, jugador.Edad, jugador.IdEquipo);
                retorno.Add(jugadorModel);
            }
            return retorno;
        }

        public static bool Eliminar(int idJugador)
        {
            using (var torneosContext = new TorneosEntities())
            {
                var jugador = (from t in torneosContext.Jugador
                              where t.Id == idJugador
                              select t).First();
                torneosContext.DeleteObject(jugador);
                int result = torneosContext.SaveChanges();
                return result == 1;
            }
        }

        public static JugadorModel ObtenerJugador(int idJugador)
        {
            using (var torneosContext = new TorneosEntities())
            {
                var jugadorEntidad = (from j in torneosContext.Jugador
                              where j.Id == idJugador
                              select j).First();
                return EntidadAModelo(jugadorEntidad);
            }
        }

        public bool Guardar()
        {
            if (String.IsNullOrEmpty(this.Nombre) || String.IsNullOrEmpty(this.Apellido)){
                throw new Exception();
            }
            else{
                using (var torneosContext = new TorneosEntities())
                {
                    Jugador jugador;
                    if (this.IdJugador == 0){
                        jugador = new Jugador();
                    }
                    else{
                        jugador = (from j in torneosContext.Jugador
                                  where j.Id == this.IdJugador
                                  select j).First();
                    }
                    jugador.Nombre = this.Nombre;
                    jugador.Apellido = this.Apellido;
                    jugador.IdEquipo = (int)this.IdEquipo;
                    jugador.Edad = this.Edad;
                    if (this.IdJugador == null){
                        torneosContext.Jugador.AddObject(jugador);
                    }
                    int result = torneosContext.SaveChanges();
                    return result == 1;
                }
            }
        }
    }
}
