using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1.Administracion
{
    public partial class Torneos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    bool active = Request["chkactive"] == "on";
                    Entidades.TorneoModel torneo = new Entidades.TorneoModel(this.txtNombre.Text, active);
                    torneo.GuardarTorneo();
                }
            }
            else {
                loadTorneos();
            }
        }

        private void loadTorneos() {
            lbTorneos.DataSource = Entidades.TorneoModel.ObtenerTorneos();
            lbTorneos.DataValueField = "IdTorneo";
            lbTorneos.DataTextField = "Nombre";
            lbTorneos.DataBind();
        }
    }
}