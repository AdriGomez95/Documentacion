<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Warlock.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>WarlockSoft</title>
    <link href="img/ev.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="img/cssPrincipal.css">
    <style type="text/css">
        .auto-style1 {
            margin-left: 345px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="menu">
		 <ul>
			<li class="arriba"><a href="Perfil.aspx"> Perfil </a></li>
			<li class="centro"><a href="Inicio.aspx"> Principal </a></li>
			<li class="centro"><a href="./.././Ver Contactos/VerContactos.html"> Ver Contactos </a></li>
			<li class="centro"><a href="EnviarMensaje.aspx"> Enviar Mensaje </a></li>
			<li class="centro"><a href="Proyecto.aspx"> Proyectos </a></li>
			<li class="centro"><a href="./.././Tareas/Tareas.html"> Tareas </a></li>
			<li class="centro"><a href="./.././Asociaciones/Asociaciones.html"> Asociaciones </a></li>
             <li class="bajo"><asp:Button ID="Button1" runat="server" Text="Cerrar Session" OnClick="Button1_Click" /></li>
		 </ul>
	  </div>
 
   
	  <div id="fondo">

<br><br>
            
		<table id="tablainicio">
		    <tr>
            	<td>
                	<div id="h1"><h1>Inicio</h1></div>
                    <br>
            	</td>
            </tr>
            <tr>
                <td><p>Agregar contacto por nickname</p></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Agregar" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td><p>Elimar contacto por nickname</p></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Eliminar" OnClick="Button3_Click" />
                </td>
            </tr>
         </table>
         
         <br>
          <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Width="410px"></asp:Panel>
        </div>
    </form>
</body>
</html>
