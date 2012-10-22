using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Expedientes
{
    public partial class SeleccionGestionExpedientes : System.Web.UI.Page
    {
        #region inicializacion

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #endregion

        #region eventos
        protected void botonCrearExpediente_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Expedientes/CrearExpediente.aspx");
        }

        protected void botonEditar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Expedientes/EditarExpediente.aspx");
        }

        protected void botonConsultarExpediente_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Expedientes/ConsultarExpediente.aspx");
        }

        protected void botonHabilitarExpediente_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Expedientes/HabilitarExpediente.aspx");
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        #endregion
    }
}