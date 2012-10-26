using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Ausencias
{
    public partial class ModificarAusencia : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        #endregion

        #region eventos
        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Ausencias/SeleccionGestionAusencias.aspx");
        }

        protected void botonAplicarCambios_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownListNombres_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        #endregion
    }
}