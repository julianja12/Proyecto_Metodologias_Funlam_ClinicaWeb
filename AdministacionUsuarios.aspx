<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AdministacionUsuarios.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.AdministacionUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
 <h2 class="style11">Administracion de Usarios</h2>
    <p class="style11">&nbsp;</p>

    <div class="container">
        <br />
    

    <div class="form-group">
      <label for="nombre" class="control-label col-md-2">Nombre:</label>
      <div class="col-md-10">
      <input class="form-control" id="campos" type="text" placeholder="Nombre:">
      </div>
    </div>

    <div class="form-group">
      <label for="apellido" class="control-label col-md-2"> Apellido:</label>
      <div class="col-md-10">
      <input class="form-control" id="campos" type="text" placeholder="Apellido:">
      </div>
    </div>

    <div class="form-group"> 
      <label for="edad" class="control-label col-md-2">Edad:</label>
      <div class="col-md-10">
      <input class="form-control" id="campos" type="text" placeholder="Edad::">
      </div>   
    </div>

    <div class="form-group">
      <label for="telefono" class="control-label col-md-2">Telefono:</label>
      <div class="col-md-10">
      <input class="form-control" id="campos" type="text" placeholder="Telefono:">
      </div>
    </div>

    <div class="form-group">
      <label for="direccion" class="control-label col-md-2">Direccion:</label>
      <div class="col-md-10">
      <input class="form-control" id="campos" type="text" placeholder="Direccion:">
    </div>
    </div>

   <div class="form-group">
      <label for="email" class="control-label col-md-2">Email:</label>
      <div class="col-md-10">
      <input class="form-control" id="campos" type="text" placeholder="Email:">
    </div>
  </div>
   
  <div class="Botones">
  <div class="FAgregar">
  <button class="btn btn-primary">Agregar</button>
  </div>
 

<div class="FEditar">
  <button class="btn btn-primary">Editar</button>
 </div>


<div class="FEliminar">
  <button class="btn btn-primary">Eliminar</button>
</div>
 </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    </asp:GridView>

 </div>
 
    </form>
</asp:Content>
