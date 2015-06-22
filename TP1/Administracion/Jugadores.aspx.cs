using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace TP1.Administracion
{
    public partial class Jugadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divFormulario.Style.Add("display", "none");
            divWarning.Style.Add("display", "none");
            if (!IsPostBack)
            {
                btnCrear.Style.Add("display", "none");
                btnEditar.Style.Add("display", "none");
                btnEliminar.Style.Add("display", "none");
                divJugadores.Style.Add("display", "none");
                CargarEquipos(null);
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (lbJugadores.SelectedItem != null)
            {
                int selectedValue = int.Parse(lbJugadores.SelectedItem.Value);
                JugadorModel.Eliminar(selectedValue);
                CargarJugadores(int.Parse(lbEquipos.SelectedValue), null);
            }
            else
            {
                String mensaje;
                if (lbEquipos.SelectedItem != null)
                {
                    mensaje = "Seleccione un Equipo y un Jugador";
                }
                else 
                {
                    mensaje = "Seleccione un Jugador";
                }
                verMensaje(mensaje);
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtEdad.Text = "";
            CargarEquiposFormulario(null);
            divFormulario.Style.Add("display", "block");
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            int equipoSeleccionado  = String.IsNullOrEmpty(lbJugadores.SelectedItem.Value) ? 0 : int.Parse(lbEquipos.SelectedItem.Value);
            int jugadorSeleccionado = String.IsNullOrEmpty(lbJugadores.SelectedItem.Value) ? 0 : int.Parse(lbJugadores.SelectedItem.Value);
            if (equipoSeleccionado > 0 && jugadorSeleccionado > 0)
            {
                JugadorModel jugador = JugadorModel.ObtenerJugador(jugadorSeleccionado);
                txtNombre.Text = jugador.Nombre;
                txtApellido.Text = jugador.Apellido;
                txtEdad.Text = jugador.Edad.ToString();
                CargarEquiposFormulario(jugador.IdEquipo);
                CargarJugadores(jugador.IdEquipo, (int?)jugador.IdJugador);
                divFormulario.Style.Add("display", "block");
            }
            else
            {
                String mensaje;
                if (equipoSeleccionado == 0)
                {
                    mensaje = "Seleccione un Equipo y un Jugador";
                }
                else
                {
                    mensaje = "Seleccione un Jugador";
                }
                verMensaje(mensaje);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if(IsValid){
                String nombre = txtNombre.Text;
                String apellido = txtApellido.Text;
                int idJugador = String.IsNullOrEmpty(lbJugadores.SelectedValue) ? 0 : int.Parse(lbJugadores.SelectedValue);
                int idEquipo = String.IsNullOrEmpty(ddlEquipo.SelectedValue) ? 0 : int.Parse(ddlEquipo.SelectedValue);
                int edad = String.IsNullOrEmpty(txtEdad.Text) ? 0 : int.Parse(txtEdad.Text);

                JugadorModel jugadorModel;
                if (idJugador > 0)
                {
                    jugadorModel = new JugadorModel(idJugador, nombre, apellido, edad, idEquipo);
                }
                else
                {
                    jugadorModel = new JugadorModel(nombre, apellido, edad, idEquipo);
                }

                if (!jugadorModel.Guardar()){
                    verMensaje("Error al guardar Jugador");
                }
                else {
                    int equipoSeleccionado = String.IsNullOrEmpty(lbEquipos.SelectedValue) ? 0 : int.Parse(lbEquipos.SelectedValue);
                    if (jugadorModel.IdEquipo != equipoSeleccionado)
                    {
                        lbEquipos.ClearSelection();
                        foreach (ListItem equipoItem in lbEquipos.Items)
                        {
                            if (equipoItem.Value == idEquipo.ToString())
                            {
                                equipoItem.Selected = true;
                            }
                        }
                    }
                    CargarJugadores(jugadorModel.IdEquipo, (int?)jugadorModel.IdJugador);
                    divFormulario.Style.Add("display", "block");
                }
            }
        }

        private void verMensaje(string mensaje)
        {
            divWarning.InnerText = mensaje;
            divWarning.Style.Add("display", "block");
        }

        private void CargarJugadores(int? idEquipo, int? idJugador)
        {
            lbJugadores.Items.Clear();
            lbJugadores.DataSource = JugadorModel.ObtenerJugadoresPorEquipo(idEquipo);
            lbJugadores.DataValueField = "IdJugador";
            lbJugadores.DataTextField = "Nombre";
            lbJugadores.DataBind();
            btnCrear.Style.Add("display", "block");
            if (lbJugadores.Items.Count == 0)
            {
                ListItem item = new ListItem("No hay jugadores.");
                lbJugadores.Items.Add(item);
                btnEditar.Style.Add("display", "none");
                btnEliminar.Style.Add("display", "none");
            }
            else {
                btnEditar.Style.Add("display", "block");
                btnEliminar.Style.Add("display", "block");
                if (idJugador != null)
                {
                    foreach (ListItem jugadorItem in lbJugadores.Items)
                    {
                        if (jugadorItem.Value == idJugador.ToString())
                        {
                            jugadorItem.Selected = true;
                        }
                    }
                }
                btnEditar.Style.Add("display", "block");
                btnEliminar.Style.Add("display", "block");
             }
        }

        private void CargarEquipos(int? idEquipo)
        {
            List<EquipoModel> equipoModelList = EquipoModel.ObtenerEquipos(true);
            if (equipoModelList.Count == 0)
            {
                ListItem item = new ListItem("No hay equipos.");
                item.Enabled = false;
                lbEquipos.Items.Add(item);
            }
            else
            {
                lbEquipos.Items.Clear();
                lbEquipos.DataValueField = "IdEquipo";
                lbEquipos.DataTextField = "Nombre";
                ListItem item = new ListItem("Elija un equipo", "0");
                item.Enabled = true;
                item.Selected = true;
                lbEquipos.Items.Add(item);
                lbEquipos.DataSource = equipoModelList;
                lbEquipos.DataBind();
                if (idEquipo != null)
                {
                    foreach (ListItem equipoItem in lbEquipos.Items)
                    {
                        if (equipoItem.Value == idEquipo.ToString())
                        {
                            equipoItem.Selected = true;
                        }
                    }
                }
            }
        }

        private void CargarEquiposFormulario(int? idEquipo)
        {
            List<EquipoModel> equipoModelList = EquipoModel.ObtenerEquipos(true);
            ddlEquipo.Items.Clear();
            ddlEquipo.DataValueField = "IdEquipo";
            ddlEquipo.DataTextField = "Nombre";
            if (idEquipo == null) {
                ListItem item = new ListItem("Elija un equipo", "0");
                item.Enabled = true;
                item.Selected = true;
                ddlEquipo.Items.Add(item);
            }
            ddlEquipo.DataSource = equipoModelList;
            ddlEquipo.DataBind();
            if (idEquipo != null)
            {
                foreach (ListItem equipoItem in ddlEquipo.Items)
                {
                    if (equipoItem.Value == idEquipo.ToString())
                    {
                        equipoItem.Selected = true;
                    }
                }
            }
        }

        protected void lbEquipos_Click(object sender, EventArgs e)
        {
            int? equipoSeleccionado = int.Parse(lbEquipos.SelectedValue);
            CargarJugadores(equipoSeleccionado, null);
            divJugadores.Style.Add("display", "block");
        }
    }
}