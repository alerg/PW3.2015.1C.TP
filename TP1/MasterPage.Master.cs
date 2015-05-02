using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnListados_Click(object sender, EventArgs e)
        {
            Response.Redirect("Equipos/ListaEquipos.aspx");
        }
    }
}