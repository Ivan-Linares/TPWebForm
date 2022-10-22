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
        public List<Articulo> ListaArticulos { get; set; }

        public Articulo art = new Articulo();
        protected void Page_Load(object sender, EventArgs e)
        {
            Articulo_Negocio ArticuloNegocio = new Articulo_Negocio();
            ListaArticulos = ArticuloNegocio.ListarArticulos();

            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";

            foreach (Articulo articulo in ListaArticulos)
            {
                if (articulo.ArticuloId == int.Parse(id))
                    art = articulo;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
