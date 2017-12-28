using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Warlock
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] != null && Session["Rol"] != null)
            {
                int rol = Convert.ToInt32(Session["Rol"]);
                if (rol == 2)
                {
                    Response.Redirect("Inicio.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Payara.NewWebService ins = new Payara.NewWebService();
            //INSERT INTO `warlocksoft`.`usuario` (`nombre`, `correo`, `fechaNacimiento`, `contraseña`, `nickname`) VALUES ('asd', 'asdafs', '2017-12-26', '123', 'asdf');
            if (!ins.Insertar("INSERT INTO `warlocksoft`.`usuario` (`nombre`, `correo`, `fechaNacimiento`, `contraseña`, `nickname`) VALUES ('"+TextBox1.Text+"', '"+TextBox2.Text+"', '"+TextBox3.Text+"', '"+TextBox4.Text+"', '"+TextBox5.Text+"');"))
            {
                Response.Write("<script>alert('Nuestra base de datos esta offline intenta mas tarde')</script>");
            }
            else
            {
                Response.Write("<script>alert('Registro exitoso')</script>");
                Response.Redirect("Login.aspx");
            }
        }
    }
}