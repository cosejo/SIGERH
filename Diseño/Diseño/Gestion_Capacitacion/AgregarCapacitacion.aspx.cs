﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Capacitacion
{
    public partial class AgregarCapacitacion : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #endregion

        #region eventos
        protected void botonCrearCapacitacion_Click(object sender, EventArgs e)
        {

        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Gestion_Capacitacion/SeleccionGestionCapacitacion.aspx");
        }

        #endregion
    }
}