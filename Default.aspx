<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWebForms_Linares_Falduti.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Contenedor">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="Repetidor">
                <ItemTemplate>
                    <div class="col">
                        <div class="card" style="width: 28rem;">
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                <img src="<%#Eval("URLImagen") %>" class="card-img-top" alt="Imagen URL" onerror="this.src='./Images/PlaceHolder.png';" style="height: 290px">
                                <ul class="Descripcion-card">
                                    <p class="card-Precio">$<%#Eval("Precio") %></p>
                                </ul>
                                <ul class="link-detalle" cssclass="col-md-2">
                                    <a href="DetalleArticulo.aspx?id=<%#Eval("ArticuloId") %>">Ver Detalle</a>
                                    <asp:Button Text="Agregar a Carrito" runat="server" ID="btnComprar" CssClass="btn btn-primary" CommandArgument='<%#Eval("ArticuloId") %>' CommandName="ArticuloId" />
                                </ul>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
