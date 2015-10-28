<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<div class="container-fluid">
        <div id="informacion">
                <asp:Label ID="Label1" runat="server" Text="Información Basica" Font-Size="14"></asp:Label>
                <br/>
                <label>Identificación:</label><br/>
                <asp:TextBox ID="txtIdentificacion" runat="server" ReadOnly="True" BackColor="#CCCCCC"></asp:TextBox><br/><br/>
                <label>Nombre de Usuario:</label> <br/>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Escriba tu nombre de usuario" ForeColor="Red" ControlToValidate="txtUserName"></asp:RequiredFieldValidator><br/>
                <label>Nombre:</label> <br/>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Se debe ingresar letras" ForeColor="Red" ControlToValidate="txtNombre" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator><br/>
                <label>Apellido:</label> <br/>
                <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox><br/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Se debe ingresar letras" ForeColor="Red" ControlToValidate="txtApellidos" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator><br/>
                <label>Email:</label> <br/>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="El formato del correo no es válido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator><br/>
                <label>Dirección:</label> <br/>
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Escriba tu dirección" ForeColor="Red" ControlToValidate="txtDireccion"></asp:RequiredFieldValidator><br/>
                <label>Teléfono:</label> <br/>
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox><br/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Ingrese solo caracteres númericos" ForeColor="Red" ValidationExpression="^[0-9]*$" ControlToValidate="txtTelefono"></asp:RegularExpressionValidator><br/>
			    <label>Edad:</label> <br/>
                <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Ingrese solo caracteres númericos" ForeColor="Red" ValidationExpression="^[0-9]*$" ControlToValidate="txtEdad"></asp:RegularExpressionValidator><br/><br/> 
                <asp:Button ID="btnActualizar" runat="server" class="btn btn-primary" Text="Actualizar información" onclick="btnActualizar_Click"/>
        </div>
        <div class="divider" id="lidivider">
        </div>
        <div id="password">
            <asp:Label ID="Label2" runat="server" Text="Modificar Contraseña" Font-Size="14"></asp:Label>
                <br/>
                <label>Actual Contraseña :</label><br/>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox><br/>
                <asp:Label ID="LabelMensajePass" runat="server" Text="" ForeColor="Red"></asp:Label><br/>
        	    <label>Nueva Contraseña:</label><br/>
                <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password"></asp:TextBox><br/>
                <asp:Label ID="LabelMensajeNuenoPass" runat="server" Text="" ForeColor="Red"></asp:Label><br/>
                <label>Valide la nueva Contraseña:</label><br/>
                <asp:TextBox ID="txtValidarPass" runat="server" TextMode="Password"></asp:TextBox><br/>
                <asp:Label ID="LabelMensajeValidorPass" runat="server" Text="" ForeColor="Red"></asp:Label><br/><br/> 
            <asp:Button ID="btnCambiarPass" class="btn btn-primary" runat="server" Text="Cambiar Contraseña" onclick="btnCambiarPass_Click" CausesValidation="False" />
        </div>
   </div>
</form>
</asp:Content>
