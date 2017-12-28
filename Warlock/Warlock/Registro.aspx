<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Warlock.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro</title>
    <link href="img/oev.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="img/styleRegistro.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="menu">
                <ul>
                    <li class="arriba"><a href="Login.aspx">Iniciar Sesion </a></li>
                    <li class="bajo"><a href="Recuperacion.aspx">Recuperar Password </a></li>
                </ul>
            </div>


            <div id="fondo">

                <br>
                <br>

                <table id="tablainicio">
                    <tr>
                        <td>
                            <div class="cuadrado" style="background-color: rgba(153,153,153,0.4);">
                                <font face="Consolas"><div id="h3"><h1>Registrarse</h1></div></font>
                            </div>
                    </tr>
                    </td>
     
            <tr>
                <td>
                    <font color="white" face="Comic Sans MS"><p align="justify">Nombre Completo 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br><br> 
            Correo 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br><br> 
            Fecha de Nacimiento 
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br><br> 
            Contrase&ntilde;a
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br><br> 
            Nombre de Usuario 
<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br><br><br>
            </p></font>

                    <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click" />


                </td>
            </tr>
                </table>

                <br>




                <footer>
                    Derechos reservados | Adriana G&oacute;mez &copy 
          <br>
                    Ingenier&iacute;a en Ciencias y Sistemas | USAC
          <br>
                    201504236		  
                </footer>
            </div>
    </form>
</body>
</html>
