using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;

namespace TP1.Administracion
{
    public partial class Torneos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divWarning.Style.Add("display", "none");
                divFormulario.Style.Add("display", "none");
                loadTorneos();
            }
        }

        private void loadTorneos() {
            lbTorneos.DataSource = Entidades.TorneoModel.ObtenerTorneos();
            lbTorneos.DataValueField = "IdTorneo";
            lbTorneos.DataTextField = "Nombre";
            lbTorneos.DataBind();
            if (lbTorneos.Items.Count == 0) {
                ListItem item = new ListItem("No hay torneos.");
                item.Enabled = false;
                lbTorneos.Items.Add(item);
                btnEditar.Enabled = false;
                btnEliminar.Enabled = false;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (lbTorneos.SelectedItem != null)
            {
                int selectedValue = int.Parse(lbTorneos.SelectedItem.Value);
                Entidades.TorneoModel.Eliminar(selectedValue);
                loadTorneos();
            }
            else {
                String mensaje = "Seleccione un torneo";
                verMensaje(mensaje);
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            if (lbTorneos.SelectedItem != null)
            {
                int selectedValue = int.Parse(lbTorneos.SelectedItem.Value);
                Entidades.TorneoModel torneo = Entidades.TorneoModel.ObtenerTorneo(selectedValue);
                txtNombre.Text = torneo.Nombre;
                chkboxActive.Checked = torneo.Activo;
                hdnIdTorneo.Value = selectedValue.ToString();
                divFormulario.Style.Add("display", "block");
            }
            else {
                String mensaje = "Seleccione un torneo";
                verMensaje(mensaje);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                bool active = chkboxActive.Checked;
                int idTorneo = int.Parse(hdnIdTorneo.Value);
                Entidades.TorneoModel torneo;

                if (idTorneo > 0)
                {
                    torneo = new Entidades.TorneoModel(idTorneo, this.txtNombre.Text, active);
                }
                else 
                {
                    torneo = new Entidades.TorneoModel(this.txtNombre.Text, active);   
                }
                torneo.GuardarTorneo();
                loadTorneos();
                btnEditar.Enabled = true;
                btnEliminar.Enabled = true;
            }
        }

        private void verMensaje(string mensaje) {
            divWarning.InnerText = mensaje;
            divWarning.Style.Add("display", "block");
        }
    }
}