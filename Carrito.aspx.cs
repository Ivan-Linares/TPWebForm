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
        public decimal Monto;
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string ID = ((Button)sender).CommandArgument.ToString();
            foreach (Articulo articulo in ListaArticulos)
            {
                if (articulo.ArticuloId == int.Parse(ID))
                {
                    ListaArticulos.Remove(articulo);
                   
                    Session.Clear();
                    Session.Add("ListaCarrito", ListaArticulos);
                   
                    break;
                }     
            }

            Cargar();
        }

        private void Cargar()
        {
            ListaArticulos = (List<Articulo>)Session["ListaCarrito"];

            if (!IsPostBack)
            {
                Repetidor.DataSource = ListaArticulos;
                Repetidor.DataBind();
            }
        }
    }
}