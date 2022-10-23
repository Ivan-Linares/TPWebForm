<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="WebForms.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Contenedor">
        <div class="card" style="width: 28rem;margin:auto; align-content:center">
            <img class="card-img-top" src="<%: art.URLImagen %>" alt="Card Image">
            <div class="card-body">
                <h5 class="card-title"><%: art.Nombre %></h5>
            </div>
            <ul class="list-group list-group-flush" style=" align-content:center;text-align:center">
                <li class ="list-group-item"><%: art.Categoria %></li>
                <li class="list-group-item"><%: art.Marca %></li>
                <li class="list-group-item"><%: art.Descripcion %></li>
                <li class="list-group-item"> $ <%: art.Precio %></li>
            </ul>
            <div class="card-body">
                <asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary" Text="Volver" OnClick="btnBack_Click"/>
            </div>
        </div>
    </div>

</asp:Content>
