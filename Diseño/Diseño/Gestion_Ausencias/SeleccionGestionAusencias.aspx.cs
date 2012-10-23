using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Ausencias
{
    public partial class SeleccionGestionAusencias : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #endregion

        #region eventos

        protected void botonAgregarAusencia_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Ausencias/AgregarAusencia.aspx");
        }

        protected void botonModificarAusencia_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Ausencias/ModificarAusencia.aspx");
        }

        protected void botonConsultarAusencia_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Ausencias/VisualizarAusencia.aspx");
        }

        protected void botonEliminarAusencia_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Ausencias/EliminarAusencia.aspx");
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        #endregion

    }
}