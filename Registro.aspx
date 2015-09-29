<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<h1 class="text-right">Registro de Usuarios</h1>
<img src="Img/Clinica.jpg" class="imgResgistro" alt="logo"/>&nbsp;&nbsp;&nbsp;
<div class="FormView1">
<asp:FormView ID="FormView1" runat="server" DataKeyNames="IdUsuario" 
        DataSourceID="EntityDataSource1" Width="333px" DefaultMode="Insert">
        <EditItemTemplate>
            IdUsuario:
            <asp:Label ID="IdUsuarioLabel1" runat="server" 
                Text='<%# Eval("IdUsuario") %>' />
            <br />
            NombreUsuario:
            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            ApellidoUsuario:
            <asp:TextBox ID="ApellidoUsuarioTextBox" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            Edad:
            <asp:TextBox ID="EdadTextBox" runat="server" Text='<%# Bind("Edad") %>' />
            <br />
            Telefono:
            <asp:TextBox ID="TelefonoTextBox" runat="server" 
                Text='<%# Bind("Telefono") %>' />
            <br />
            Direccion:
            <asp:TextBox ID="DireccionTextBox" runat="server" 
                Text='<%# Bind("Direccion") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Citas:
            <asp:TextBox ID="CitasTextBox" runat="server" Text='<%# Bind("Citas") %>' />
            <br />
            TipoUsuarios:
            <asp:TextBox ID="TipoUsuariosTextBox" runat="server" 
                Text='<%# Bind("TipoUsuarios") %>' />
            <br />
            Datos:
            <asp:TextBox ID="DatosTextBox" runat="server" Text='<%# Bind("Datos") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            NombreUsuario:
            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            ApellidoUsuario:
            <asp:TextBox ID="ApellidoUsuarioTextBox" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            Edad:
            <asp:TextBox ID="EdadTextBox" runat="server" Text='<%# Bind("Edad") %>' />
            <br />
            Telefono:
            <asp:TextBox ID="TelefonoTextBox" runat="server" 
                Text='<%# Bind("Telefono") %>' />
            <br />
            Direccion:
            <asp:TextBox ID="DireccionTextBox" runat="server" 
                Text='<%# Bind("Direccion") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insertar" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            IdUsuario:<br />
            NombreUsuario:
            <asp:Label ID="NombreUsuarioLabel" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            ApellidoUsuario:
            <asp:Label ID="ApellidoUsuarioLabel" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            Edad:
            <asp:Label ID="EdadLabel" runat="server" Text='<%# Bind("Edad") %>' />
            <br />
            Telefono:
            <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Bind("Telefono") %>' />
            <br />
            Direccion:
            <asp:Label ID="DireccionLabel" runat="server" Text='<%# Bind("Direccion") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Editar" />
            &nbsp;&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>


</div>
    
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=ClinicaWebEntities" 
        DefaultContainerName="ClinicaWebEntities" EnableDelete="True" 
        EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
        EntitySetName="Usuarios">
    </asp:EntityDataSource>
    </form>
</asp:Content>
