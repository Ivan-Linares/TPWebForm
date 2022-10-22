<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="WebForms.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="<%: art.URLImagen %>" alt="Card Image">
        <div class="card-body">
            <h5 class="card-title"><%: art.Nombre %></h5>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item"><%: art.Categoria %></li>
            <li class="list-group-item"><%: art.Marca %></li>
            <li class="list-group-item"><%: art.Descripcion %></li>
            <li class="list-group-item"><%: art.Precio %></li>
        </ul>
        <div class="card-body">
            <asp:Button Text="Agregar a Carrito" runat="server" ID="btnComprar" CssClass="btn btn-primary" />
        </div>
    </div>

</asp:Content>
