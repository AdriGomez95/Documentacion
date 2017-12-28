using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Warlock
{
    public partial class Recuperacion : System.Web.UI.Page
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
            Object[] obj = ins.getPass(TextBox1.Text, TextBox2.Text);
            if(obj != null)
            {
                Response.Write("<script>alert('Su contraseña es: "+obj[0].ToString()+"')</script>");
            }
            else
            {
                Response.Write("<script>alert('Datos sin considencia alguna')</script>");
                Response.Redirect("Login.aspx");
            }
        }
    }
}