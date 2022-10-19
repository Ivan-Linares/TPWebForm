<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWebForms_Linares_Falduti.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  CssClass="background-color:#191c32"  >
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


        
        <asp:Repeater runat="server" id="Repetidor">
            <ItemTemplate>
                <div class="col">
                <div class="card">
                    <img src="<%#Eval("URLImagen") %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("Nombre") %></h5>
                        <p class="card-text"><%#Eval("Descripcion") %></p>
                       <%-- --<a href="DetallePokemon.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>--%>
                       
                    </div>
                </div>
            </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
    <%--Termina listar --%>
</asp:Content>
