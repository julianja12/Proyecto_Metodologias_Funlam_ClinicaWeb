<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="Funlam_2015_02_Clinica_Web.Contactenos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/estilos.css" rel="stylesheet" type="text/css" />
    <link href="Estilos/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style13
        {
        }
        .style14
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <div class="contentC">
                
            <h2 class="style11">Contáctenos</h2>
            <p class="text-center">&nbsp;</p>
            <p class="style12" 
                style="orphans: auto; windows: 1; -webkit-text-stroke-width: 0px;">
                En nuestra EPS tenemos atención personalizada las 24 horas del día de lunes a 
                domingo. Todo esto atraves de nuestra pagina.</p>
            <p class="style12" 
                style="orphans: auto; windows: 1; -webkit-text-stroke-width: 0px;">
                <br />
                <span class="style8">Para comunicarse con nosotros puede enviar un mensaje atraves de esta pagina o 
                comunicarse con&nbsp; a los siguientes numeros:</span></p>
            <ul style="color: rgb(199, 110, 52); font-family: Geneva, Tahoma, 'Nimbus Sans L', sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.2px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                <li><span class="style3"><strong><span class="style6">Atención al usuario línea 
                    gratuita desde cualquier parte del país:&nbsp;</span></strong></span><span class="style6"><span 
                        class="style8">01 8000 
                    450003</li>
                </span></span><span class="style3"><span class="style6">
                <li><strong>Medellin:</strong></span><span class="style4"><span 
                        class="style6">&nbsp;&nbsp; 
                    4567898</span></span></li>
            </ul>
            </span>

            &nbsp
            <table style="width: 94%; margin-left: 26px;">
                <tr>
                    <td class="style13" colspan="2">

            <h4>Envianos un Mensaje</h4>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Nombre:(Opcional)"></asp:Label>
                    </td>
                    <td>
                        &nbsp;<asp:TextBox ID="txtNombre" runat="server" 
                    Width="190px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Correo (Opcional)" ></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    <asp:TextBox ID="txtCorreoE" class="Email" runat="server" Width="190px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreoE" ErrorMessage="El formato del correo no es válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Asunto:"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    <asp:TextBox ID="txtAsunto" runat="server" Width="190px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAsunto" ErrorMessage="Escriba un asunto"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14" colspan="2">
                        <span style="color: rgb(77, 77, 77); font-family: 'Helvetica Neue', Helvetica, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 500; letter-spacing: normal; line-height: 34px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                        Comentario, duda o sugerencia:</span></td>
                </tr>
                <tr>
                    <td class="style14" colspan="2">
                <asp:TextBox ID="txtMensaje" runat="server" Height="114px" TextMode="MultiLine" 
                    Width="455px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMensaje" ErrorMessage="Escribe un mensaje"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14" colspan="2">
                        <asp:Label ID="lblResultado" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style14" colspan="2">
                <asp:Button ID="btnEnviar" class="btn btn-primary" runat="server" Text="Enviar" 
                    onclick="btnEnviar_Click" />
                    </td>
                </tr>
            </table>

            </div>
        </div>

        <img src="Img/contacto.jpg" alt="Logo" class="contactoimg" />

        <div class="container" id="Mapa">
            <div class="col-md-6 hidden-xs">
                    <h4>Ubicación Geográfica de la clínica</h4>
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3334.9028277794996!2d-75.58069244576527!3d6.278167774998032!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0xd3d0db8860f8092e!2sCemev+IPS+Robledo!5e0!3m2!1ses-419!2sco!4v1443050444386" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
            </div>
        </div>

    </form>

</asp:Content>
