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
        public decimal MontoPagar;
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ActualizarCarrito(sender);
            ActualizarMonto();
            Mostrar();
        }

        private void Cargar()
        {
            ListaArticulos = (List<Articulo>)Session["ListaCarrito"];

            if (!IsPostBack)
            {
                if (!(Session["MontoAPagar"] is null))
                    MontoPagar = (decimal)Session["MontoAPagar"];
                else MontoPagar = 0;
           
            Repetidor.DataSource = ListaArticulos;
            Repetidor.DataBind();
            }
        }

        private void ActualizarCarrito(object sender)
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
        }

        private void ActualizarMonto()
        {
            MontoPagar = 0;
            foreach (Articulo articulo in ListaArticulos)
            {
                MontoPagar += articulo.Precio;
            }
        }

        private void Mostrar()
        {
            Repetidor.DataSource = ListaArticulos;
            Repetidor.DataBind();
        }
    }
}