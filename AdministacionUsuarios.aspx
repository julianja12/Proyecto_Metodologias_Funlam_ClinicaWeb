<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AdministacionUsuarios.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.AdministacionUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style13
        {
            height: 20px;
        }
        .style14
        {
            width: 174px;
        }
        .style15
        {
            height: 20px;
            width: 174px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
 <h2 class="style11">Administracion de Usuarios</h2>
    <p class="style11">&nbsp;</p>
    <p class="style11">&nbsp;</p>

 
    <table class="table" style="width:40%;">
        <tr>
            <td class="style14">
                <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="Label2" runat="server" Text="Apellido:"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Label ID="Label3" runat="server" Text="Edad:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Label ID="Label4" runat="server" Text="Telefono:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Label ID="Label5" runat="server" Text="Direccion:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnAgregar" class="btn btn-primary" runat="server" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnModificar" class="btn btn-primary" runat="server" Text="Editar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" />
 
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="NombreUsuario" HeaderText="Nombre" />
            <asp:BoundField DataField="ApellidoUsuario" HeaderText="Apellido" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" />
            <asp:BoundField DataField="Email" HeaderText="Correo Electronico" />
            <asp:ButtonField CommandName="Editar" Text="Editar" />
            <asp:ButtonField CommandName="Eliminar" Text="Eliminar" />
        </Columns>
    </asp:GridView>
 
    </form>
</asp:Content>
