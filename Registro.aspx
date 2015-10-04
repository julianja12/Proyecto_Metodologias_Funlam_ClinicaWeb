<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<h1 class="text-right">Registro de Usuarios</h1>
<img src="Img/Clinica.jpg" class="imgResgistro" alt="logo"/><asp:FormView 
        ID="FormView1" CssClass="FormView1" runat="server"  DataKeyNames="IdUsuario" 
        DataSourceID="EntityDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            IdUsuario:
            <asp:Label ID="IdUsuarioLabel1" runat="server" 
                Text='<%# Eval("IdUsuario") %>' />
            <br />
            Cedula:
            <asp:TextBox ID="CedulaTextBox" runat="server" Text='<%# Bind("Cedula") %>' />
            <br />
            NombreUsuario:
            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            ApellidoUsuario:
            <asp:TextBox ID="ApellidoUsuarioTextBox" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" 
                Text='<%# Bind("UserName") %>' />
            <br />
            Contraseña:
            <asp:TextBox ID="ContraseñaTextBox" runat="server" 
                Text='<%# Bind("Contraseña") %>' />
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
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Cedula:
            <asp:TextBox ID="CedulaTextBox"  CssClass="form-control" runat="server" 
                Text='<%# Bind("Cedula") %>' />
            <br />
            NombreUsuario:
            <asp:TextBox ID="NombreUsuarioTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            ApellidoUsuario:
            <asp:TextBox ID="ApellidoUsuarioTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("UserName") %>' />
            <br />
            Contraseña:
            <asp:TextBox ID="ContraseñaTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("Contraseña") %>' TextMode="Password" />
            <br />
            Edad:
            <asp:TextBox ID="EdadTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("Edad") %>' />
            <br />
            Telefono:
            <asp:TextBox ID="TelefonoTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("Telefono") %>' />
            <br />
            Direccion:
            <asp:TextBox ID="DireccionTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("Direccion") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("Email") %>' />
            <br />
            &nbsp;<asp:LinkButton ID="InsertButton"  CssClass="btn btn-primary" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Registrar Usuario" />
&nbsp;<asp:LinkButton ID="InsertCancelButton"   CssClass="btn btn-primary" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            IdUsuario:
            <br />
            Cedula:
            <asp:Label ID="CedulaLabel" runat="server" Text='<%# Bind("Cedula") %>' />
            <br />
            NombreUsuario:
            <asp:Label ID="NombreUsuarioLabel" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            ApellidoUsuario:
            <asp:Label ID="ApellidoUsuarioLabel" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            Contraseña:
            <asp:Label ID="ContraseñaLabel" runat="server" 
                Text='<%# Bind("Contraseña") %>' />
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
            Citas:
            <asp:Label ID="CitasLabel" runat="server" Text='<%# Bind("Citas") %>' />
            <br />
            TipoUsuarios:
            <asp:Label ID="TipoUsuariosLabel" runat="server" 
                Text='<%# Bind("TipoUsuarios") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
    &nbsp;&nbsp;&nbsp;
    
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=ClinicaWebEntities" 
        DefaultContainerName="ClinicaWebEntities" 
        EnableFlattening="False" EnableInsert="True" 
        EntitySetName="Usuarios" EnableDelete="True" EnableUpdate="True">
    </asp:EntityDataSource>
    </form>
</asp:Content>
