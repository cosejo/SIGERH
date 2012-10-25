using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Expedientes
{
    public partial class HabilitarExpediente : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #endregion

        #region eventos
        protected void CheckBoxHabilitado_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void botonGuardar_Click(object sender, EventArgs e)
        {
            
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Expedientes/SeleccionGestionExpedientes.aspx");
        }

        #endregion
    }
}