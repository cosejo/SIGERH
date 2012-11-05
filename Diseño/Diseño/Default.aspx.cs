using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño
{
    public partial class Default : System.Web.UI.Page
    {
        private const string _User = "admin";
        private const string _Pass = "admin";
        private Controladores.ControlSesiones _ControlSesion = new Controladores.ControlSesiones();

        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            if(_ControlSesion.NombreUsuario!=null)
                Response.Redirect("Menu.aspx");
        }

        #endregion

        #region eventos
        protected void BotonIngresar_Click(object sender, EventArgs e)
        {
            //Response.Redirect("GestionUsuarios.aspx");
            //Response.Redirect("/Gestion_Expedientes/SeleccionGestionExpedientes.aspx");
            //Response.Redirect("/Gestion_Vacaciones_Globales/SeleccionGestionVacaciones.aspx");
            //Response.Redirect("/Gestion_Ausencias/SeleccionGestionAusencias.aspx");
            //Response.Redirect("/Gestión_Departamentos/SeleccionGestionDepartamentos.aspx");
            //Response.Redirect("/Gestion_Puestos/SeleccionGestionPuestos.aspx");
            //Response.Redirect("GestionUsuarios.aspx");
            //Response.Redirect("/Gestion_Capacitacion/SeleccionGestionCapacitacion.aspx");
            if (TextBoxContrasena.Text != _Pass || TextBoxUsuario.Text != _User)
            {
                Response.Write("<SCRIPT>alert('Ha ingresado los datos incorrectamente, por favor vuelva a intentarlo')</SCRIPT>");
            }
            else
            {
                _ControlSesion.NombreUsuario = TextBoxUsuario.Text;
                _ControlSesion.Contrasena = TextBoxContrasena.Text;
                Response.Redirect("Menu.aspx");
            }
        }
#endregion

    }
}
