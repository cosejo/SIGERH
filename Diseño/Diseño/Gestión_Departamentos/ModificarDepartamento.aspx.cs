using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestión_Departamentos
{
    public partial class ModificarDepartamento : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #endregion

        #region eventos
        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestión_Departamentos/SeleccionGestionDepartamentos.aspx");
        }

        protected void botonAplicarModificacion_Click(object sender, EventArgs e)
        {

        }
        #endregion

    }
}