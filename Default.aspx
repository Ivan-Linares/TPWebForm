﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWebForms_Linares_Falduti.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Contenedor">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="Repetidor">
                <ItemTemplate>
                    <div class="col">
                        <div class="card" style="width: 28rem;">
                            <div class="card-body">
                                <img src="<%#Eval("URLImagen") %>" class="card-img-top" alt="Imagen URL" onerror="this.src='./Images/PlaceHolder.png';" <%-- style="width: 26rem; height: 25rem"--%>>
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                <br />
                                <ul class="Descripcion-card">
                                    <p class="card-Precio">$<%#Eval("Precio") %></p>
                                </ul>
                                <ul class="link-detalle" cssclass="col-md-2">
                                    <a href="DetalleArticulo.aspx?id=<%#Eval("ArticuloId") %>">Ver Detalle</a>
                                    <asp:Button Text="Agregar a Carrito" runat="server" ID="btnComprar" CssClass="btn btn-primary" CommandArgument='<%#Eval("ArticuloId") %>' CommandName="ArticuloId" OnClick="btnComprar_Click" />
                                </ul>
                                <div class="Envio-free">
                                    <img src="https://static.vecteezy.com/system/resources/previews/007/126/366/non_2x/free-shipping-delivery-truck-icon-vector.jpg" alt="Alternate Text" />
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>


        <div class="Seccion_Contacto" id="Seccion_Contacto">
            <div class="contact-heading">
                <h2>Contacto</h2>
                <div class="divider"></div>
            </div>
            <div class="Contacto">
                <div class="Contacto_form">
                    <h4 >Enviame un mensaje...</h4>
                    <div class="Formulario">
                        <input type="email" placeholder="Email" class="Aporte">
                        <input type="text" placeholder="Nombre" class="Aporte">
                        <textarea name="Mensaje" placeholder="Escriba su mensaje aqui.."></textarea>
                        <button type="submit" class="btn_enviar">Enviar Mensaje</button>
                    </div>
                </div>
            </div>
        </div>



        <footer class="footer">
            <div class="footer_contenido">
                <h2>Matias Falduti - Santiago Linares</h2>
                <h5>Trabajo Practico Carrito</h5>
            </div>
            <div class="Redes">
                <i class="fab fa-instagram"></i>
                <i class="fab fa-linkedin"></i>
                <i class="fab fa-twitter-square"></i>
            </div>
        </footer>
    </div>
</asp:Content>

