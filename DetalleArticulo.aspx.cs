using Dominio_Clases;
using Reglas_Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms
{
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        Articulo Elegido = new Articulo();
        public List<Articulo> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            Articulo_Negocio ArticuloNegocio = new Articulo_Negocio();
            ListaArticulos = ArticuloNegocio.ListarArticulos();
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";

            int IdArt = Int32.Parse(Request.QueryString["id"]);
            foreach (Articulo articulo in ListaArticulos)
            {
                if (articulo.ArticuloId == IdArt)
                {
                    Elegido = articulo;
                }
            }

        }

    }
}
