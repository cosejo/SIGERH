using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Visualizar_Vacaciones_Permisos
{
    public partial class VisualizarSolicitudesPermisos : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            //verificar permisos
        }

        #endregion 

        #region eventos
        protected void botonConsultar_Click(object sender, EventArgs e)
        {

        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }

        #endregion

    }
}