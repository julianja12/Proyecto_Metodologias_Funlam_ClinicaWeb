<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="ProyectoClinica.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style13
        {
            text-align: center;
        }
    .style14
    {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h3 class="style13">Bienvenidos a la Clinica Web</h3>
<br />
&nbsp;<p>
<img src="Img/Clinica.jpg" class="ImgPrincipal" alt="logo"/></p>
<asp:Panel ID="Panel1" runat="server">
    <div class="text-right">
        <br />
        <strong><span class="style14">Login</span></strong><br />
        <br />
        Usuario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <br />
        <br />
        Contraseña&nbsp;&nbsp;
        <asp:TextBox ID="txtContraseña" type="password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnIngresar" runat="server" BackColor="#33CC33" 
            ForeColor="White" onclick="btnIngresar_Click" Text="Ingresar" />
    </div>
</asp:Panel>
<p>
&nbsp;<br />
    </p>
</form>
</asp:Content>
