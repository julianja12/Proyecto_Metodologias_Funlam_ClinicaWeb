<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AdministracionCitas.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.AdministracionCitas" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Administración de Citas</h1>
    <p>&nbsp;</p>
    <p>
    <div ID="formCitas" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="IdUsuario:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtUsuario" ErrorMessage="Debes Ingresar Un Numero" 
                ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Fecha Cita:"></asp:Label>
        
    &nbsp;<asp:TextBox ID="txtFecha" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtFecha" 
            runat="server">
                </asp:CalendarExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtFecha" ErrorMessage="Debe Seleccionar Un Fecha" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Hora Cita: "></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtCita" runat="server" Text="" CssClass="form-control"></asp:TextBox>
<Ajaxified:TimePicker ID="TimePicker1" runat="server" TargetControlID="txtCita">
</Ajaxified:TimePicker>	
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtCita" ErrorMessage="Debe Seleccionar Una Hora" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <asp:Label ID="Label4" runat="server" Text="Lugar Cita:"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Hospital Universitario San Vicente</asp:ListItem>
        <asp:ListItem>Clinica Pablo Tobon Uribe</asp:ListItem>
        <asp:ListItem>PoliClinica</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="DropDownList1" ErrorMessage="Debe Seleccionar Un Lugar" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    </div>
    <asp:Button ID="btnAgendar" runat="server" CssClass="btn btn-primary" 
        Text="Agendar Cita" onclick="btnAgendar_Click" />
&nbsp;&nbsp;
    <asp:Button ID="btnConsultas" runat="server" CssClass="btn btn-primary" 
        Text="Consultar Citas" onclick="btnConsultas_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-primary" 
        Text="Cancelar Cita" onclick="btnCancelar_Click" />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:GridView ID="GridView1" CssClass="tableCita table table-hover table-striped" 
        runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" />
            <asp:BoundField DataField="Cedula" HeaderText="Cedula" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
            <asp:BoundField DataField="Hora" HeaderText="Hora" />
            <asp:BoundField DataField="Lugar" HeaderText="Lugar" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    </form>
</asp:Content>
