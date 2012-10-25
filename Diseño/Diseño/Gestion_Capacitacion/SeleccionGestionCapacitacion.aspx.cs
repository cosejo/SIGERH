using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Capacitacion
{
    public partial class SeleccionGestionCapacitacion : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #endregion

        #region eventos
        protected void botonAgregarCapacitacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Capacitacion/AgregarCapacitacion.aspx");
        }

        protected void botonAsignarAProyecto_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Capacitacion/AsignarAProyecto.aspx");
        }

        protected void botonAsignarAColaborador_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Capacitacion/AsignarAColaborador.aspx");
        }

        protected void botonEliminarCapacitacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Capacitacion/EliminarCapacitacion.aspx");
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }

        #endregion
    }
}