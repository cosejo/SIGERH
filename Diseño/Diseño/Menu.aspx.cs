using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonGestionExpedientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gestion_Expedientes/SeleccionGestionExpedientes.aspx");
        }

        protected void botonGestionGlobalVacaciones_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Gestion_Vacaciones_Globales/SeleccionGestionVacaciones.aspx");
            Response.Redirect("~/Gestion_Vacaciones_Globales/SeleccionGestionVacaciones.aspx");
        }

        protected void botonAprobarVacaciones_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Aprobar_Vacaciones_Permisos/AprobarVacaciones.aspx");
            Response.Redirect("~/Aprobar_Vacaciones_Permisos/AprobarVacaciones.aspx");
        }

        protected void botonAprobarPermisos_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Aprobar_Vacaciones_Permisos/AprobarPermisos.aspx");
            Response.Redirect("~/Aprobar_Vacaciones_Permisos/AprobarPermisos.aspx");
        }

        protected void botonSolicitarVacaciones_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Solicitar Vacaciones/SolicitarVacaciones.aspx");
            Response.Redirect("~/Solicitar Vacaciones/SolicitarVacaciones.aspx");
        }

        protected void botonVisualizarPermisos_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Visualizar_Vacaciones_Permisos/VisualizarSolicitudesPermisos.aspx");
            Response.Redirect("~/Visualizar_Vacaciones_Permisos/VisualizarSolicitudesPermisos.aspx");
        }

        protected void botonVisualizarVacaciones_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Visualizar_Vacaciones_Permisos/VisualizarSolicitudesVacaciones.aspx");
            Response.Redirect("~/Visualizar_Vacaciones_Permisos/VisualizarSolicitudesVacaciones.aspx");
        }

        protected void botonGestionAusencias_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Gestion_Ausencias/SeleccionGestionAusencias.aspx");
            Response.Redirect("~/Gestion_Ausencias/SeleccionGestionAusencias.aspx");
        }

        protected void botonGestionDepartamento_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Gestión_Departamentos/SeleccionGestionDepartamentos.aspx");
            Response.Redirect("~/Gestión_Departamentos/SeleccionGestionDepartamentos.aspx");
        }

        protected void botonGestionPuestos_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Gestion_Puestos/SeleccionGestionPuestos.aspx");
            Response.Redirect("~/Gestion_Puestos/SeleccionGestionPuestos.aspx");
        }

        protected void botonGestionCapacitacion_Click(object sender, EventArgs e)
        {
           // Response.Redirect("/pruebaDB/Gestion_Capacitacion/SeleccionGestionCapacitacion.aspx");
            Response.Redirect("~/Gestion_Capacitacion/SeleccionGestionCapacitacion.aspx");
        }

        protected void botonGestionUsuarios_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Gestion_Usuarios/SeleccionGestionUsuarios.aspx");
            Response.Redirect("~/Gestion_Usuarios/SeleccionGestionUsuarios.aspx");
        }

        protected void botonGestionProyectos_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Gestion_Proyectos/SeleccionGestionProyectos.aspx");
            Response.Redirect("~/Gestion_Proyectos/SeleccionGestionProyectos.aspx");
        }

        protected void botonGestionReportes_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Gestion_Reportes/SeleccionReporte.aspx");
            Response.Redirect("~/Gestion_Reportes/SeleccionReporte.aspx");
        }

        protected void botonSolicitarPermiso_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/pruebaDB/Solicitar Vacaciones/SolicitarPermiso.aspx");
            Response.Redirect("~/Solicitar Vacaciones/SolicitarPermiso.aspx");
        }
    }
}