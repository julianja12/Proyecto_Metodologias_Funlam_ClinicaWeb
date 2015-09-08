<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.Contactenos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/estilos.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class = "contentC">
    <form id="form1" runat="server">
    <h2 class="style11">Contactenos</h2>
    <p class="text-center">&nbsp;</p>
    <p class="style12" 
        style="orphans: auto; widows: 1; -webkit-text-stroke-width: 0px;">
        En nuestra EPS tenemos atención personalizada las 24 horas del día de lunes a 
        domingo. Todo esto atraves de nuestra pagina.<br />
        <span class="style8">Para comunicarse con nosotros puede enviar un mensaje atraves de esta pagina o 
        comunicarse con&nbsp; a los siguientes numeros:</span></p>
    <ul style="color: rgb(199, 110, 52); font-family: Geneva, Tahoma, 'Nimbus Sans L', sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.2px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
        <li><span class="style3"><strong><span class="style6">Atención al usuario línea 
            gratuita desde cualquier parte del país:&nbsp;</span></strong></span><span class="style6"><span 
                class="style8">018000 
            450003</li>
        </span></span><span class="style3"><span class="style6">
        <li><strong>Medellin:</strong></span><span class="style4"><span 
                class="style6">&nbsp;&nbsp; 
            4567898</span></span></li>
    </ul>
    <p>
        &nbsp;</p>
    </span>
    <h4>Envianos un Mensaje</h4>
    <p class="style8">&nbsp;</p>
    <p class="style7">
        <asp:TextBox ID="TextBox1" runat="server" Height="114px" TextMode="MultiLine" 
            Width="432px"></asp:TextBox>
    </p>
    
    <p class="style7">
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" 
            onclick="btnEnviar_Click" />
    </p>

    </div>

    <img src="Img/contacto.jpg" alt="Logo" class="contactoimg" >

    </form>
</asp:Content>
