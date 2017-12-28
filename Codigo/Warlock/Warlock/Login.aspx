<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Warlock.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link href="img/ev.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="img/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="menu">
                <ul>
                    <li class="arriba"><a href="Registro.aspx">Registrarse </a></li>
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
                                <font face="Consolas"><div id="h3"><h1>Iniciar Sesion</h1></div></font>
                            </div>
                    </tr>
                    </td>
     
            <tr>
                <td>
                    <img src="img/usuario.png" width="50" height="50"></h2>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br>
                    <br>
                    <img src="img/password.png" width="50" height="50"></h2>
            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                    <br>
                    <br>
                    <br>
                    <asp:Button ID="Button1" runat="server" Text="Iniciar" OnClick="Button1_Click" />
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
