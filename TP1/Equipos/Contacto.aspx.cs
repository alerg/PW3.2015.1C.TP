using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace TP1
{
    public partial class Contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                using (TP1_PW3Entities context = new TP1_PW3Entities())
                {
                    context.comentarios.AddObject(new comentario { cNombre = txtName.Text, cEmail = txtEmail.Text, cDetalle = txtAMensaje.Text, cFecha = DateTime.Now.Date });
                    context.SaveChanges();
                }
            }
        }
    }
}