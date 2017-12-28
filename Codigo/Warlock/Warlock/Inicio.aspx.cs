using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Warlock
{
    public partial class Inicio : System.Web.UI.Page
    {
        Payara.NewWebService ins;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null || Session["Rol"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                ins = new Payara.NewWebService();
            }
            Object[] obj = ins.getContactos(Convert.ToInt32(Session["Id"]));
            if(obj != null)
            {
                for (int j = 0; j < obj.Length; j++)
                {
                    Object[] obj2 = ins.getEstadoPerfil(Convert.ToInt32(obj[j]));
                    if (obj2 != null)
                    {
                        for (int i = 0; i < obj2.Length; i++)
                        {
                            Panel1.Controls.Add(new LiteralControl("<table id=\"tablainicio\">  <tr><td>" +
                                "\"<font color=\"lightblue\" face=\"Comic Sans MS\"><p align=\"justify\">"));
                            Panel1.Controls.Add(new Label()
                            {
                                Text = obj2[i].ToString()
                            }
                            );

                            Panel1.Controls.Add(new LiteralControl("</p></td></td></tr><br/><br/>"));
                        }
                    }
                    Object[] obj3 = ins.getProyecto(Convert.ToInt32(obj[j]));
                    if (obj3 != null)
                    {
                        for(int h =0; h < (obj3.Length / 3); h++)
                        {
                            Panel1.Controls.Add(new LiteralControl("<table id=\"tablainicio\">  <tr><td>" +
                                "\"<font color=\"lightblue\" face=\"Comic Sans MS\"><p align=\"justify\">"));
                            Panel1.Controls.Add(new Label()
                            {
                                Text = "Nombre del proyecto: "+obj3[h].ToString() + "\n Fecha de inicio:" + obj3[h+1].ToString() + "\n Usuario Creador:" + obj3[h+2].ToString()
                            }
                            );
                            Panel1.Controls.Add(new LiteralControl("</p></td></td></tr><br/><br/>"));
                            h += 2;
                        }
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Object[] obj = ins.getIdNickname(TextBox1.Text);
            if(obj != null)
            {
                if (ins.Insertar("INSERT INTO `warlocksoft`.`contacto` (`idUsuario`, `idContactoU`) VALUES ('" + Convert.ToInt32(Session["Id"]) + "', '" + Convert.ToInt32(obj[0]) + "');"))
                {
                    Response.Write("<script>alert('Contacto Agregado correctamente')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Ocurrio un error en la base de datos')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('No hay ningun usuario con ese Nickname')</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(TextBox2.Text))
            {
                Object[] obj = ins.getIdNickname(TextBox2.Text);
                if(obj != null)
                {
                    if (ins.Insertar("DELETE FROM contacto WHERE  contacto.idUsuario = '"+Convert.ToInt32(Session["Id"])+"' AND contacto.idContactoU = '"+obj[0]+"';"))
                    {
                        Response.Write("<script>alert('Contacto eliminado correctamente')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Ocurrio un error en la base de datos')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('No se encontro ese usuario en tu lista de contactos')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Debes especificar un Nickname de usuario')</script>");
            }
        }
    }
}