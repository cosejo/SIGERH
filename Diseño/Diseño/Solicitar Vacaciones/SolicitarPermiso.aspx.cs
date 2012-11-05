using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Solicitar_Vacaciones
{
    public partial class SolicitarPermiso : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                RangeValidatorFinal.MinimumValue = DateTime.Now.ToString("MM/dd/yyyy");
                RangeValidatorInicio.MinimumValue = DateTime.Now.ToString("MM/dd/yyyy");
                RangeValidatorFinal.MaximumValue = DateTime.Now.AddYears(1).ToString("MM/dd/yyyy");
                RangeValidatorInicio.MaximumValue = RangeValidatorFinal.MaximumValue;
            }
        }
        #endregion

        #region eventos
        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }
        #endregion
    }
}