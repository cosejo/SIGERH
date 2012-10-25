using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Expedientes
{
    public partial class EditarExpediente : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        #endregion

        #region eventos

        protected void LinkButtonInformacionGeneral_Click(object sender, EventArgs e)
        {
             MultiView1.ActiveViewIndex = 2;
        }


        protected void LinkButtonCurriculum_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }


        protected void LinkButtonContrato_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Expedientes/SeleccionGestionExpedientes.aspx");
        }

        #endregion
    }
}