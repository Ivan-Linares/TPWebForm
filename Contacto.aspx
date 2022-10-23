<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebForms.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="Seccion_Contacto" id="Seccion_Contacto">

            <div class="contact-heading">
                <h2>Contacto</h2>
                <div class="divider"></div>
            </div>


            <div class="Contacto">
                <div class="Contacto_form">
                    <h4>Enviame un mensaje...</h4>
                    <div class="Formulario">
                        <input type="email" placeholder="Email" class="Aporte">
                        <input type="text" placeholder="Nombre" class="Aporte">
                        <textarea name="Mensaje" placeholder="Escriba su mensaje aqui.."></textarea>
                        <button type="submit" class="btn_enviar">Enviar Mensaje</button>
                    </div>
                </div>
            </div>

                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3289.8758725033226!2d-58.626375284952026!3d-34.45529868049828!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2sar!4v1666560015505!5m2!1ses-419!2sar" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

</asp:Content>
