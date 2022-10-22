<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPWebForms_Linares_Falduti.Carrito" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
</asp:Content>
