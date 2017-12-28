using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Warlock
{
    public partial class EnviarMensaje : System.Web.UI.Page
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
            if (!String.IsNullOrEmpty(TextBox1.Text))
            {
                DateTime thisDay = DateTime.Today;
                Object[] obj = ins.getIdNickname(TextBox1.Text);
                if(obj != null)
                {
                    if (ins.Insertar("INSERT INTO `warlocksoft`.`mensaje` (`descripcion`, `fecha`, `idEmisor`, `idReceptor`) VALUES ('" + TextBox2.Text + "', '2017-12-28', '" +Convert.ToInt32(Session["Id"])+"', '"+obj[0]+"');"))
                    {
                        Response.Write("<script>alert('Mensaje enviado correctamente')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Ocurrio un error en la consulta hacia la base de datos: des= "+TextBox2.Text+", fecha = "+thisDay.ToString("d")+", idCon = "+obj[0]+"')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('No se encontro ningun usuario con ese nickname')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('No se especifico un destinatario')</script>");
            }
        }
    }
}