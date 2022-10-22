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

        public int IDArticulo;
        public string NombreArticulo;
        public string DescripcionArticulo;
        public string CategoriaArticulo;
        public string MarcaArticulo;
        public string ImagenArticulo;
        public decimal PrecioArticulo;
        protected void Page_Load(object sender, EventArgs e)
        {
            Articulo_Negocio ArticuloNegocio = new Articulo_Negocio();
            ListaArticulos = ArticuloNegocio.ListarArticulos();

            string id;
            int IdArt;
            try
            {
                id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                IdArt = Int32.Parse(Request.QueryString["id"]);
            }
            catch (Exception ex)
            {
                id = " ";
                IdArt = 0;
            }

            foreach (Articulo articulo in ListaArticulos)
            {
                if (articulo.ArticuloId == IdArt)
                {
                    IDArticulo = articulo.ArticuloId;
                    NombreArticulo = articulo.Nombre;
                    DescripcionArticulo = articulo.Descripcion;
                    CategoriaArticulo = articulo.Categoria.ToString();
                    MarcaArticulo = articulo.Marca.ToString();
                    ImagenArticulo = articulo.URLImagen;
                    PrecioArticulo = articulo.Precio;
                }      
            }
        }
    }
}
