using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestión_Departamentos
{
    public partial class SeleccionGestionDepartamentos : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #endregion

        #region eventos
        protected void botonAgregarDepartamento_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestión_Departamentos/AgregarDepartamento.aspx");
        }

        protected void botonModificarDepartamento_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestión_Departamentos/ModificarDepartamento.aspx");
        }

        protected void botonVisualizarEstructura_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestión_Departamentos/VisualizarDepartamento.aspx");
        }

        protected void botonEliminarDepartamento_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestión_Departamentos/EliminarDepartamento.aspx");
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        #endregion
    }
}