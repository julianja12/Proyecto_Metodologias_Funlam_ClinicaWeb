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
    <h3 class="style13"><strong>Bienvenidos a la Clinica Web</strong></h3>
<br />
&nbsp;<p>
<img src="Img/Clinica.jpg" class="ImgPrincipal" alt="logo"/></p>
<asp:Panel ID="Panel1" runat="server">
    <div class="text-right">
        <br />
        <strong><span class="style14">Login</span></strong><br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Usuario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtUsuario" ErrorMessage="Por Favor Ingrese al Usuario" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contraseña&nbsp; &nbsp;
        <asp:TextBox ID="txtContrasenia" runat="server" type="password"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtContrasenia" 
            ErrorMessage="Por Favor Ingrese la Contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server" style="color: #FF0000"></asp:Label>
        <br />
        <asp:Button ID="btnIngresar" runat="server" CssClass="btn btn-success" onclick="btnIngresar_Click" Text="Ingresar" 
            BorderStyle="None" />
    </div>
</asp:Panel>
<p>
&nbsp;<br />
    </p>
</form>
</asp:Content>
