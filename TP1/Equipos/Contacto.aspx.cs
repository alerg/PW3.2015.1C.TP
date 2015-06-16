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
            if (IsPostBack)
            {
                Page.Validate();
                if (IsValid)
                {
                    btnSubmit.Visible = false;
                    if (ContactoModel.GuardarContacto(txtAMensaje.Text, txtEmail.Text, txtName.Text))
                    {
                        lblMensaje.CssClass = "correcto";
                        lblMensaje.Text = "Messaje enviado";
                    }
                    else
                    {
                        lblMensaje.CssClass = "alert";
                        lblMensaje.Text = "Ocurrió un error. Intentelo nuevamente.";
                        btnSubmit.Visible = true;
                    }
                }
                else
                {
                    lblMensaje.CssClass = "alert";
                    lblMensaje.Text = "Complete los campos.";
                    btnSubmit.Visible = true;
                    //Mostrar mensjae completar datos
                }
            }
        }
    }
}