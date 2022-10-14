using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Reglas_Negocio;

namespace TPWebForms_Linares_Falduti
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Articulo_Negocio Articulo = new Articulo_Negocio();
            GVArticulos.DataSource= Articulo.ListarArticulos();
            GVArticulos.DataBind();
        }
    }
}