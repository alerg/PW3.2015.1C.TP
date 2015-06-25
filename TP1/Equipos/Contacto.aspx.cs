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

        protected void CustomValidatorNombre_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = VerificarLongitud(args.Value.Length, txtNombre.MaxLength);
        }

        protected void CustomValidatorEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = VerificarLongitud(args.Value.Length, txtEmail.MaxLength);
        }

        protected void CustomValidatorMensaje_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = VerificarLongitud(args.Value.Length, txtAMensaje.MaxLength);
        }

        private bool VerificarLongitud(int longitud, int maximaLongitud) {
            if (longitud > maximaLongitud)
            {
                return false;
            }
            return true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (IsValid)
            {
                btnSubmit.Visible = false;
                if (ContactoModel.GuardarContacto(txtAMensaje.Text, txtEmail.Text, txtNombre.Text))
                {
                    Response.Redirect("contacto-resultado.aspx");
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