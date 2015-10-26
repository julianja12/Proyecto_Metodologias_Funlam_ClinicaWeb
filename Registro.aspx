<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<h1 class="text-right"><br />Registro de Usuarios</h1>

<h1 class="text-right"><br />Registrarse es muy fácil y sencillo, solo debes llenar 
    los siguientes campos:</h1>
<img src="Img/Clinica.jpg" class="imgResgistro" alt="logo"/>&nbsp;&nbsp;&nbsp;<asp:FormView 
        ID="FormView1" CssClass="FormView1" runat="server" DataKeyNames="Cedula" 
        DataSourceID="EntityDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Cedula:
            <asp:Label ID="CedulaLabel1" runat="server" Text='<%# Eval("Cedula") %>' />
            <br />
            NombreUsuario:
            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            ApellidoUsuario:
            <asp:TextBox ID="ApellidoUsuarioTextBox" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" 
                Text='<%# Bind("Username") %>' />
            <br />
            contrasena:
            <asp:TextBox ID="contrasenaTextBox" runat="server" 
                Text='<%# Bind("contrasena") %>' />
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
            Cita:
            <asp:TextBox ID="CitaTextBox" runat="server" Text='<%# Bind("Cita") %>' />
            <br />
            TipoUsuario:
            <asp:TextBox ID="TipoUsuarioTextBox" runat="server" 
                Text='<%# Bind("TipoUsuario") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Cedula:
            <asp:TextBox ID="CedulaTextBox" runat="server" Text='<%# Bind("Cedula") %>' 
                CssClass="form-control" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="CedulaTextBox" ErrorMessage="Debes Ingresar Un Numero" 
                ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            <br />
            NombreUsuario:
            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' CssClass="form-control" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="NombreUsuarioTextBox" ErrorMessage="Solo Ingresar Texto" 
                ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
            <br />
            ApellidoUsuario:
            <asp:TextBox ID="ApellidoUsuarioTextBox" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' CssClass="form-control" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="ApellidoUsuarioTextBox" ErrorMessage="Solo Ingresar Texto" 
                ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" 
                Text='<%# Bind("Username") %>' CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="UsernameTextBox" ErrorMessage="Debes Ingresar un Usuario" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            contrasena:
            <asp:TextBox ID="contrasenaTextBox" runat="server" 
                Text='<%# Bind("contrasena") %>' CssClass="form-control" 
                TextMode="Password" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="contrasenaTextBox" 
                ErrorMessage="Debes Ingresar una Contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Edad:
            <asp:TextBox ID="EdadTextBox" runat="server" Text='<%# Bind("Edad") %>' 
                CssClass="form-control" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                ControlToValidate="EdadTextBox" ErrorMessage="Debes Ingresar Un Numero" 
                ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            <br />
            Telefono:
            <asp:TextBox ID="TelefonoTextBox" runat="server" 
                Text='<%# Bind("Telefono") %>' CssClass="form-control" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                ControlToValidate="TelefonoTextBox" ErrorMessage="Debes Ingresar Un Numero" 
                ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            <br />
            Direccion:
            <asp:TextBox ID="DireccionTextBox" runat="server" 
                Text='<%# Bind("Direccion") %>' CssClass="form-control" />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' 
                CssClass="form-control" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                ControlToValidate="EmailTextBox" 
                ErrorMessage="La Direccion de Correo No Es Correcta" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Registrar Usuario" CssClass="btn btn-primary" 
                onclick="InsertButton_Click" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" 
                CssClass="btn btn-primary" />
        </InsertItemTemplate>
        <ItemTemplate>
            Cedula:
            <asp:Label ID="CedulaLabel" runat="server" Text='<%# Eval("Cedula") %>' />
            <br />
            NombreUsuario:
            <asp:Label ID="NombreUsuarioLabel" runat="server" 
                Text='<%# Bind("NombreUsuario") %>' />
            <br />
            ApellidoUsuario:
            <asp:Label ID="ApellidoUsuarioLabel" runat="server" 
                Text='<%# Bind("ApellidoUsuario") %>' />
            <br />
            Username:
            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            contrasena:
            <asp:Label ID="contrasenaLabel" runat="server" 
                Text='<%# Bind("contrasena") %>' />
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
            Cita:
            <asp:Label ID="CitaLabel" runat="server" Text='<%# Bind("Cita") %>' />
            <br />
            TipoUsuario:
            <asp:Label ID="TipoUsuarioLabel" runat="server" 
                Text='<%# Bind("TipoUsuario") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
&nbsp;<asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=ClinicaWebEntities" 
        DefaultContainerName="ClinicaWebEntities" 
        EnableFlattening="False" EnableInsert="True" 
        EntitySetName="Usuario" EnableDelete="True" EnableUpdate="True">
    </asp:EntityDataSource>
    </form>

</asp:Content>
