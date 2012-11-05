using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        private Controladores.ControlSesiones _ControlSesion = new Controladores.ControlSesiones();

        protected void Page_Load(object sender, EventArgs e)
        {
            String usuario = _ControlSesion.NombreUsuario;
            if (usuario != null)
                labelUsuario.Text = usuario;
            else
                labelUsuario.Text = "Bienvenido";
        }

        protected void CerrarSesion(object sender, EventArgs e) 
        {
            _ControlSesion.NombreUsuario = null;
            _ControlSesion.Contrasena = null;
            Response.Redirect("~/Default.aspx");
        }
    }
}
