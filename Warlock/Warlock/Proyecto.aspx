<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proyecto.aspx.cs" Inherits="Warlock.Proyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>WarlockSoft</title>
    <link href="img/ev.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="img/cssProyectos.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="menu">
		 <ul>
			<li class="arriba"><a href="Inicio.aspx"> Inicio </a></li>
             <li class="centro"><a href="Perfil.aspx"> Perfil</a></li>
			<li class="centro"><a href="./.././Ver Contactos/VerContactos.html"> Ver Contactos </a></li>
			<li class="centro"><a href="./.././Enviar Mensaje/Mensajes.html"> Enviar Mensaje </a></li>
			<li class="centro"><a href="Proyectos.html"> Proyectos </a></li>
			<li class="centro"><a href="./.././Tareas/Tareas.html"> Tareas </a></li>
			<li class="bajo"><a href="./.././Asociaciones/Asociaciones.html"> Asociaciones </a></li>
		 </ul>
	  </div>
 
   
	  <div id="fondo">

<br><br>
            
		<table id="tablainicio">
		    <tr>
            	<td>
                	<div id="h1"><h1>Crear Proyecto</h1></div>
                    <br>
                    <font color="white" face="Comic Sans MS"><p align="center">Nombre:  
            		<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    
                    <br/>
                    Fecha Inicio:  
            		 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                       
                    <br/>
                    Fecha Final:  
            		<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        
                        <br/>
            		<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"></asp:Button>
                    </p>
                    </font>
            	</td>
            </tr>
         </table>
        </div>
    </form>
</body>
</html>
