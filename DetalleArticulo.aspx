<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="WebForms.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="<%: ImagenArticulo %>" alt="Card Image">
        <div class="card-body">
            <h5 class="card-title"><%: NombreArticulo %></h5>
            <p class="card-text"><%: DescripcionArticulo.ToString() %></p>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Cras justo odio</li>
            <li class="list-group-item">Dapibus ac facilisis in</li>
            <li class="list-group-item">Vestibulum at eros</li>
        </ul>
        <div class="card-body">
            <a href="#" class="card-link">Card link</a>
            <a href="#" class="card-link">Another link</a>
        </div>
    </div>



</asp:Content>
