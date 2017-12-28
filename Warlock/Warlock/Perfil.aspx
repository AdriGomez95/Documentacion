<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Warlock.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>WarlockSoft</title>
    <link href="img/ev.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="img/cssPerfil.css">
    <style type="text/css">
        .auto-style1 {
            margin-left: 249px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="menu">
                <ul>
                    <li class="arriba"><a href="Inicio.aspx">Inicio </a></li>
                    <li class="centro"><a href="./.././Ver Contactos/VerContactos.html">Ver Contactos </a></li>
                    <li class="centro"><a href="EnviarMensaje.aspx">Enviar Mensaje </a></li>
                    <li class="centro"><a href="./.././Proyectos/Proyectos.html">Proyectos </a></li>
                    <li class="centro"><a href="./.././Tareas/Tareas.html">Tareas </a></li>
                    <li class="bajo"><a href="./.././Asociaciones/Asociacinoes.html">Asociaciones </a></li>
                </ul>
            </div>


            <div id="fondo">

                <br>
                <br>

                <table id="tablainicio">
                    <tr>
                        <td>
                            <img src="img/usuario.png" width="150" height="150">
                            <div id="h1">
                                <h1>
                                    <label>Usuario </label>
                                </h1>
                            </div>

                        </td>
                        <td>
                            <div id="h1">
                                <h1>Punteo</h1>
                            </div>
                            <br>
                            <div id="h2">
                                <h3>Habilidades: </h3>
                            </div>
                            <div id="h2">
                                <h2>0 </h2>
                            </div>
                            <div id="h2">
                                <h3>Conocimientos: </h3>
                            </div>
                            <div id="h2">
                                <h2>0 </h2>
                            </div>
                            <div id="h2">
                                <h3>Karma: </h3>
                            </div>
                            <div id="h2">
                                <h2>0 </h2>
                            </div>

                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="115px" Width="409px"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Postear" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font color="lightblue" face="Comic Sans MS"><p align="justify"> Estados Posteados: </p></td>
                    </tr>
                </table>
                <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Width="397px"></asp:Panel>
            </div>
    </form>
</body>
</html>
