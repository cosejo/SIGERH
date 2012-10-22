using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Vacaciones_Globales
{
    public partial class SeleccionGestionVacaciones : System.Web.UI.Page
    {
        #region inicializacion

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #endregion

        #region eventos
        protected void botonAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Vacaciones_Globales/AgregarVacaciones.aspx");
        }

        protected void botonModificar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Vacaciones_Globales/ModificarVacaciones.aspx");
        }

        protected void botonEliminarVacaciones_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Vacaciones_Globales/EliminarVacaciones.aspx");
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
        #endregion
    }
}