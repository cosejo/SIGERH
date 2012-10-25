using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Proyectos
{
    public partial class SeleccionGestionProyectos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonCrearExpediente_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Proyectos/CrearProyecto.aspx");
        }

        protected void botonEditar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Proyectos/EliminarProyecto.aspx");
        }

        protected void botonConsultarExpediente_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Proyectos/VisualizarProyecto.aspx");
        }

        protected void botonHabilitarExpediente_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Proyectos/HabilitarProyecto.aspx");
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }
    }
}