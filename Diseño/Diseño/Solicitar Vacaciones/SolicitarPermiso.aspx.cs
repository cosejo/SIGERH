using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace Diseño.Solicitar_Vacaciones
{
    public partial class SolicitarPermiso : System.Web.UI.Page
    {
        #region atributos
        public static LogicaSolicitudes _Logica = new LogicaSolicitudes();
        #endregion

        #region propiedades
        public String TipoSolicitud
        {
            get { return "Permisos Laborales";}
        }
        #endregion

        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                ingresarvalidadorFechas();
            }
        }
        #endregion

        #region eventos

        protected void botonEnviarSolicitud_Click(object sender, EventArgs e)
        {
            enviarSolicitud();
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }
        #endregion


        #region metodos
        public void ingresarvalidadorFechas()
        {
            RangeValidatorFinal.MinimumValue = DateTime.Now.ToString("MM/dd/yyyy");
            RangeValidatorInicio.MinimumValue = DateTime.Now.ToString("MM/dd/yyyy");
            RangeValidatorFinal.MaximumValue = DateTime.Now.AddYears(1).ToString("MM/dd/yyyy");
            RangeValidatorInicio.MaximumValue = RangeValidatorFinal.MaximumValue;
        }

        public void enviarSolicitud()
        {
            Controladores.ControlSesiones _ControlSesion = new Controladores.ControlSesiones();
            //_Logica.enviarSolicitud(TextBoxMotivo.Text,TextBoxFechaInicio_CalendarExtender.SelectedDate, TextBoxFechaFinal_CalendarExtender.SelectedDate, _ControlSesion.Cedula, TipoSolicitud);
        }
        #endregion
    }
}