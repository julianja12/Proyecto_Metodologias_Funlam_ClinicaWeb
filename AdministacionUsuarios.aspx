<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AdministacionUsuarios.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.AdministacionUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
 <h2 class="style11">Administracion de Usuarios</h2>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Button ID="btnBuscar" class="btn btn-primary" runat="server" Text="Buscar" 
        onclick="btnBuscar_Click" />
    <br />
    <br />
    <br />
    <br />
 
    <br />
    <br />
    <div class="Griew">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="IdUsuario" DataSourceID="EntityDataSource1" 
        AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:CommandField HeaderText="Metodos" ShowDeleteButton="True" 
                ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="NombreUsuario" HeaderText="NombreUsuario" 
                SortExpression="NombreUsuario" />
            <asp:BoundField DataField="ApellidoUsuario" HeaderText="ApellidoUsuario" 
                SortExpression="ApellidoUsuario" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" 
                SortExpression="Edad" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" 
                SortExpression="Telefono" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" 
                SortExpression="Direccion" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    
    </div>
    
 
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=ClinicaWebEntities" 
        DefaultContainerName="ClinicaWebEntities" EnableDelete="True" 
        EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
        EntitySetName="Usuarios">
    </asp:EntityDataSource>
 
    </form>
</asp:Content>
