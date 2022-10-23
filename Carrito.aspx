<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPWebForms_Linares_Falduti.Carrito" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Pagos" id="Pagos">   
    <h3> Monto total a pagar: <%: Session["MontoAPagar"] %></h3>
    </div>
    <div class="Contenedor">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="Repetidor">
                <ItemTemplate>
                    <div class="col">
                        <div class="card" style="width: 28rem;">
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                <img src="<%#Eval("URLImagen") %>" class="card-img-top" alt="Imagen URL" onerror="this.src='./Images/PlaceHolder.png';" style="width: 26rem; height: 25rem">
                                <ul class="Descripcion-card">
                                    <p class="card-Precio">$<%#Eval("Precio") %></p>
                                </ul>
                                <ul class="link-detalle" cssclass="col-md-2">
                                    <a href="DetalleArticulo.aspx?id=<%#Eval("ArticuloId") %>">Ver Detalle</a>
                                    <asp:Button Text="Eliminar del Carrito" runat="server" ID="btnEliminar" CssClass="btn btn-primary" CommandArgument='<%#Eval("ArticuloId") %>' CommandName="ArticuloId" OnClick="btnEliminar_Click"/>
                                </ul>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
