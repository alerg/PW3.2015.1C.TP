using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;  
using Entidades;
using Newtonsoft.Json;

namespace WebServiceTorneos
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void ObtenerEquipos(bool incluirDeTorneosInactivos)
        {
            List<EquipoModel> equipos = EquipoModel.ObtenerEquipos(incluirDeTorneosInactivos);
            try
            {
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    var jsonData = new
                    {
                        equipos
                    };
                    string retJSON = js.Serialize(jsonData);
                    Context.Response.Write("success("+ retJSON + ")");
            }
            catch (Exception ex)
            {
                Context.Response.Write(string.Format("[ERROR: {0}]", ex.Message));
            }
        }
    }
}