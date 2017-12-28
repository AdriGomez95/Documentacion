using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Warlock
{
    public partial class Proyecto : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(!String.IsNullOrEmpty(TextBox1.Text) && !String.IsNullOrEmpty(TextBox2.Text) && !String.IsNullOrEmpty(TextBox3.Text))
            {
                if (ins.Insertar("INSERT INTO `warlocksoft`.`proyecto` (`nombre`, `fechaInicio`, `idUsuario`) VALUES ('"+TextBox1.Text+"', '"+TextBox2.Text+"', '"+Convert.ToInt32(Session["Id"])+"');"))
                {
                    Response.Write("<script>alert('Proyecto creado exitosamente')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Ocurrio un error en la consulta hacia la base de datos')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Datos obligatorios no llenados')</script>");
            }
        }
    }
}