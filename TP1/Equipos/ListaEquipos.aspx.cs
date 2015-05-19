using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace TP1
{
    public partial class ListaEquipos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gdvEquipos.DataSource = Datos.CargarEquipos();
            gdvEquipos.DataBind();
        }

        protected void OnCheckedState(object sender, EventArgs e)
        {
            Console.Write(e);
            Console.Write(sender);
        }
    }
}