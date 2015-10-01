<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<h1 class="text-right">Registro de Usuarios</h1>
<img src="Img/Clinica.jpg" class="imgResgistro" alt="logo"/>&nbsp;&nbsp;&nbsp;
<div class="FormView1">
    <br />
    <br />
    <br />
    <br />
    <br />
<asp:FormView ID="FormView1" CssClass="formulario" runat="server" DataKeyNames="IdUsuario" 
        DataSourceID="EntityDataSource1" Width="401px" DefaultMode="Insert">
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
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NombreUsuarioTextBox" CssClass="form-control"  runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            Apellido:&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="ApellidoUsuarioTextBox"  CssClass="form-control" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="EdadTextBox" CssClass="form-control" runat="server" Text='<%# Bind("Edad") %>' />
            <br />
            Telefono:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TelefonoTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("Telefono") %>' />
            <br />
            Direccion:&nbsp;&nbsp;
            <asp:TextBox ID="DireccionTextBox" CssClass="form-control" runat="server" 
                Text='<%# Bind("Direccion") %>' />
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insertar" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-success" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
       
        <ItemTemplate>
            IdUsuario:<br />Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="NombreUsuarioLabel" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            Apellido:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ApellidoUsuarioLabel" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="EdadLabel" runat="server" Text='<%# Bind("Edad") %>' />
            <br />
            Telefono:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Bind("Telefono") %>' />
            <br />
            Direccion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="DireccionLabel" runat="server" Text='<%# Bind("Direccion") %>' />
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
