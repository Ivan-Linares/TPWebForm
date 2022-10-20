<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWebForms_Linares_Falduti.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" CssClass="bg-dark">
    <%-- <asp:GridView ID="GVArticulos" CssClass="table" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre"/>
            <asp:BoundField HeaderText="Marca" DataField="Marca"/>
            <asp:BoundField HeaderText="Categoria" DataField="Categoria"/>
            <asp:BoundField HeaderText="Precio" DataField="Precio"/>
        </Columns>
    </asp:GridView>--%>


    <%--Listar la base de datos con foreach --%>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%-- <%foreach (Dominio_Clases.Articulo Art in ListaArticulos)
        {
    %>
        <div class="col">
            <div class="card h-100">
                <img src="<%: Art.URLImagen %>" class="card-img-top" alt="Imagen catalogo" h>
                <div class="card-body">
                    <h5 class="card-title"><%: Art.Nombre %></h5>
                    <p class="<%: Art.Descripcion %>"</p>
                </div>
            </div>
        </div>
    
    <%
        }
    %>--%>



        <asp:Repeater runat="server" ID="Repetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <img src="<%#Eval("URLImagen") %>" class="card-img-top" alt="...">
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <p class="card-text"><%#Eval("Precio") %></p>
                            <a href="DetalleArticulo.aspx?id=<%#Eval("ArticuloId") %>">Ver Detalle</a>
                            <asp:Button Text="Agregar a Carrito" runat="server" ID="btnComprar" CssClass="btn btn-primary" CommandArgument='<%#Eval("ArticuloId") %>' CommandName="ArticuloId" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <%--Termina listar --%>
</asp:Content>
