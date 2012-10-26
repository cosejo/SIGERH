using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Solicitar_Vacaciones
{
    public partial class SolicitarPermiso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }
    }
}