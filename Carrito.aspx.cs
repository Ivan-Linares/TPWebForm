using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Reglas_Negocio;
using Dominio_Clases;

namespace TPWebForms_Linares_Falduti
{
    public partial class Carrito : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}