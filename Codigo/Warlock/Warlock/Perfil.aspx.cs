using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Warlock
{
    public partial class Perfil : System.Web.UI.Page
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
            Object[] obj = ins.getEstadoPerfil(Convert.ToInt32(Session["ID"]));
            if(obj != null)
            {
                for(int i=0; i < obj.Length; i++)
                {
                    Panel1.Controls.Add(new LiteralControl("<table id=\"tablainicio\">  <tr><td>" +
                        "\"<font color=\"lightblue\" face=\"Comic Sans MS\"><p align=\"justify\">"));
                    Panel1.Controls.Add(new Label()
                    {
                        Text = obj[i].ToString()
                    }
                    );

                    Panel1.Controls.Add(new LiteralControl("</p></td></td></tr"));
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TextBox1.Text))
            {
                Response.Write("<script>alert('No se puede postear un post vacio')</script>");
            }
            else
            {
                
                if(ins.Insertar("INSERT INTO `warlocksoft`.`estado` (`descripcion`, `idUsuario`,`Reporte`) VALUES ('"+TextBox1.Text+"', '"+Convert.ToInt32(Session["Id"])+ "','0');"))
                {
                    Response.Redirect("Perfil.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Ocurrio un error al conectar a la base de datos')</script>");
                }
            }
        }
    }
}