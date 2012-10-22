using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Vacaciones_Globales
{
    public partial class ModificarVacaciones : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            //pedir la fecha para ponersela de fecha minima a los validadores
        }
        #endregion

        #region eventos
        protected void botonGuardarCambios_Click(object sender, EventArgs e)
        {

        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Vacaciones_Globales/SeleccionGestionVacaciones.aspx");
        }
        #endregion


    }
}