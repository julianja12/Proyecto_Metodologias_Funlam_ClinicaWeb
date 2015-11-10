<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AdministracionCitas.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.AdministracionCitas" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
      .form-control
      {
          width:400px;
          
          }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Administración de Citas</h1>
    <p>&nbsp;</p>
    <p>
    <div ID="formCitas" class="form-group">
&nbsp;&nbsp;<br />
        <asp:Label ID="Label5" runat="server" Text="Codigo Cita"></asp:Label>
        <asp:TextBox ID="txtIdCita" runat="server" CssClass="form-control"></asp:TextBox>
&nbsp;<p>
        <asp:Label ID="Label2" runat="server" Text="Fecha Cita:"></asp:Label>
        
    &nbsp;<asp:TextBox ID="txtFecha" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtFecha" 
            runat="server">
                </asp:CalendarExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtFecha" ErrorMessage="Debe Seleccionar Un Fecha" 
        ForeColor="Red" CssClass="style4"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Hora Cita: "></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtHoraCita" runat="server" Text="" CssClass="form-control"></asp:TextBox>
<Ajaxified:TimePicker ID="TimePicker1" runat="server" TargetControlID="txtHoraCita">
</Ajaxified:TimePicker>	
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtHoraCita" ErrorMessage="Debe Seleccionar Una Hora" 
        ForeColor="Red" CssClass="style4"></asp:RequiredFieldValidator>
    </p>
  
    <asp:Label ID="Label4" runat="server" Text="Lugar Cita:"></asp:Label>
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
    <asp:GridView ID="GriewCitas" CssClass="tableCita table table-hover table-striped" 
        runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="CodigoCita" HeaderText="Codigo Cita" />
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
