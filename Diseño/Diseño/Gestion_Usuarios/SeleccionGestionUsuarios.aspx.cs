using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Usuarios
{
    public partial class SeleccionGestionUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonAgregarDepartamento_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GestionUsuarios.aspx");
        }

        protected void botonModificarDepartamento_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Usuarios/AsignarPermisos.aspx");
        }

        protected void botonVisualizarEstructura_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Usuarios/VizualizarUsuarios.aspx");
        }

        protected void botonEliminarDepartamento_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Usuarios/EliminarUsuarios.aspx");
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }
    }
}