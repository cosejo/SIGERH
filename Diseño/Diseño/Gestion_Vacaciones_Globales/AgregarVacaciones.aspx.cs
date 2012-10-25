using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Vacaciones_Globales
{
    public partial class AgregarVacaciones : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            //pedir la fecha para ponersela de fecha minima a los validadores
        }
        #endregion

        #region eventos
        protected void botonAgregarCambios_Click(object sender, EventArgs e)
        {

        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Vacaciones_Globales/SeleccionGestionVacaciones.aspx");
        }

        #endregion
    }
}