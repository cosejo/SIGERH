using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Expedientes
{
    public partial class CrearExpediente : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButtonInformacionGeneral.BackColor = System.Drawing.Color.LightGray;
            LinkButtonCurriculum.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
            MultiView2.ActiveViewIndex = 2;
        }
        #endregion

        #region eventos

        protected void LinkButtonInformacionGeneral_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
            LinkButtonInformacionGeneral.BackColor = System.Drawing.Color.LightGray;
            LinkButtonCurriculum.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
        }


        protected void LinkButtonCurriculum_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
            LinkButtonInformacionGeneral.BackColor = System.Drawing.Color.White;
            LinkButtonCurriculum.BackColor = System.Drawing.Color.LightGray;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
        }


        protected void LinkButtonContrato_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
            LinkButtonInformacionGeneral.BackColor = System.Drawing.Color.White;
            LinkButtonCurriculum.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.LightGray;
        }


        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Expedientes/SeleccionGestionExpedientes.aspx");
        }
        #endregion


    }
}