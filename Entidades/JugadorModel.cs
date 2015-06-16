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

        private static List<JugadorModel> EntidadAModelo(List<Jugador> jugadores)
        {
            List<JugadorModel> retorno = new List<JugadorModel>();
            foreach (var jugador in jugadores)
            {
                JugadorModel jugadorModel = new JugadorModel(jugador.Id, jugador.Nombre, jugador.Apellido, jugador.Edad, jugador.IdEquipo);
                retorno.Add(jugadorModel);
            }
            return retorno;
        }
    }
}
