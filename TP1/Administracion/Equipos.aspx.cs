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
            if (IsPostBack)
            {
                String nombre = txtNombre.Text;
                int monto = int.Parse(txtMonto.Text);
                int torneo = int.Parse(ddlTorneo.SelectedValue);

                EquipoModel equipo = new Entidades.EquipoModel(nombre, monto, torneo);
            }
            else {
                ddlTorneo.DataSource = Entidades.TorneoModel.ObtenerTorneos();
                ddlTorneo.DataValueField = "Id";
                ddlTorneo.DataTextField = "Nombre";
                ddlTorneo.DataBind();
            }
        }
    }
}