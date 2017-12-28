using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Warlock
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Id"] != null && Session["Rol"] != null)
            {
                int rol = Convert.ToInt32(Session["Rol"]);
                if(rol == 2)
                {
                    Response.Redirect("Inicio.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Payara.NewWebService ins = new Payara.NewWebService();
            object[] tab = ins.getUsuarioTipo(TextBox1.Text, TextBox2.Text);
            if (tab != null)
            {
                Session["Id"] = Convert.ToInt32(tab[0]);
                Session["Rol"] = Convert.ToInt32(tab[1]);
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                Response.Write("<script>alert('Usuario ó Contraseña invalidos')</script>");
            }
        }
    }
}