using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Puestos
{
    public partial class SeleccionGestionPuestos : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #endregion

        #region eventos

        protected void botonAgregarPuesto_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Puestos/CrearPuestos.aspx");
        }

        protected void botonModificarPuesto_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Puestos/ModificarPuesto.aspx");
        }

        protected void botonVisualizarPuestos_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Puestos/VisualizarPuestos.aspx");
        }

        protected void botonEliminarPuesto_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Puestos/EliminarPuesto.aspx");
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        #endregion

    }
}