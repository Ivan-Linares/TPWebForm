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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        public decimal MontoTot;

        public List<Articulo> ListaCarrito = new List<Articulo>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            AgrearCarrito(sender);
            AgregarMonto();
            EnviarSession();
        }

        private void Cargar()
        {
            Articulo_Negocio ArticuloNegocio = new Articulo_Negocio();
            ListaArticulos = ArticuloNegocio.ListarArticulos();

            if (!IsPostBack)
            {
                Repetidor.DataSource = ListaArticulos;
                Repetidor.DataBind();
            }
        }

        private void AgrearCarrito(object sender)
        {
            if (!(Session["ListaCarrito"] is null))
                ListaCarrito = (List<Articulo>)Session["ListaCarrito"];

            string ID = ((Button)sender).CommandArgument.ToString();
            foreach (Articulo articulo in ListaArticulos)
            {
                if (articulo.ArticuloId == int.Parse(ID))
                    ListaCarrito.Add(articulo);
            }
        }

        private void AgregarMonto()
        {
            MontoTot = 0;
            foreach (Articulo articulo in ListaCarrito)
            {
                MontoTot += articulo.Precio;
            }
        }

        private void EnviarSession()
        {
            Session.Clear();
            Session.Add("ListaCarrito", ListaCarrito);
            Session.Add("MontoAPagar", MontoTot);
        }
    }
}