using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace TP1.Administracion
{
    public partial class Equipos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divWarning.Style.Add("display", "none");
                divFormulario.Style.Add("display", "none");
                loadEquipos();
                loadTorneos(null);
            }
        }

        private void loadEquipos()
        {
            lbEquipos.DataSource = Entidades.EquipoModel.ObtenerEquipos(true);
            lbEquipos.DataValueField = "IdEquipo";
            lbEquipos.DataTextField = "Nombre";
            lbEquipos.DataBind();
            if (lbEquipos.Items.Count == 0)
            {
                ListItem item = new ListItem("No hay equipos.");
                item.Enabled = false;
                lbEquipos.Items.Add(item);
                btnEditar.Enabled = false;
                btnEliminar.Enabled = false;
            }
        }

        private void loadTorneos(int? idTorneo)
        {
            List<TorneoModel> torneos = Entidades.TorneoModel.ObtenerTorneos();
            if (torneos.Count == 0)
            {
                ListItem item = new ListItem("No hay torneos.");
                item.Enabled = false;
                ddlTorneo.Items.Add(item);
            }
            else 
            {
                ddlTorneo.Items.Clear();
                ddlTorneo.DataValueField = "IdTorneo";
                ddlTorneo.DataTextField = "Nombre";
                ListItem item = new ListItem("Elija un torneo", "0");
                item.Enabled = true;
                ddlTorneo.Items.Add(item);
                ddlTorneo.DataSource = torneos;
                ddlTorneo.DataBind();
                if (idTorneo != null) {
                    foreach (ListItem itemf in ddlTorneo.Items) {
                        if (itemf.Value == idTorneo.ToString()) { 
                            itemf.Selected = true;
                        }
                    }
                }
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (lbEquipos.SelectedItem != null)
            {
                int selectedValue = int.Parse(lbEquipos.SelectedItem.Value);
                Entidades.TorneoModel.Eliminar(selectedValue);
                loadEquipos();
            }
            else
            {
                String mensaje = "Seleccione un equipo";
                verMensaje(mensaje);
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            if (lbEquipos.SelectedItem != null)
            {
                int selectedValue = int.Parse(lbEquipos.SelectedItem.Value);
                Entidades.EquipoModel equipo = Entidades.EquipoModel.ObtenerEquipo(selectedValue);
                txtNombre.Text = equipo.Nombre;
                txtMonto.Text = equipo.Monto.ToString();
                hdnIdEquipo.Value = selectedValue.ToString();
                loadTorneos(equipo.IdTorneo);
                divFormulario.Style.Add("display", "block");
            }
            else
            {
                String mensaje = "Seleccione un Equipo";
                verMensaje(mensaje);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if(IsValid){
                String nombre = txtNombre.Text;
                int monto = int.Parse(txtMonto.Text);
                int torneo = int.Parse(ddlTorneo.SelectedValue);
                int idEquipo = String.IsNullOrEmpty(hdnIdEquipo.Value) ? 0 : int.Parse(hdnIdEquipo.Value);
                EquipoModel equipo;
                if (idEquipo > 0)
                {
                    equipo = new Entidades.EquipoModel(idEquipo, nombre, monto, torneo);
                }
                else
                {
                    equipo = new Entidades.EquipoModel(nombre, monto, torneo);
                }
                    
                equipo.GuardarEquipo();
                loadEquipos();
                loadTorneos(torneo);
                btnEditar.Enabled = true;
                btnEliminar.Enabled = true;
            }else {
                lbEquipos.DataSource = Entidades.EquipoModel.ObtenerEquipos(true);
                lbEquipos.DataValueField = "IdEquipo";
                lbEquipos.DataTextField = "Nombre";
                lbEquipos.DataBind();
            }
        }
       
        private void verMensaje(string mensaje)
        {
            divWarning.InnerText = mensaje;
            divWarning.Style.Add("display", "block");
        }
    }
}