using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diseño.Gestion_Expedientes
{
    public partial class ConsultarExpediente : System.Web.UI.Page
    {
        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            LinkButtonInfo.BackColor = System.Drawing.Color.LightGray;
            LinkButtonPermisos.BackColor = System.Drawing.Color.White;
            LinkButtonIncapacidades.BackColor = System.Drawing.Color.White;
            LinkButtonVacaciones.BackColor = System.Drawing.Color.White;
            LinkButtonCurriculo.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
        }
        #endregion

        #region eventos
        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Expedientes/SeleccionGestionExpedientes.aspx");
        }
        #endregion

        protected void LinkButtonInfo_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            LinkButtonInfo.BackColor = System.Drawing.Color.LightGray;
            LinkButtonPermisos.BackColor = System.Drawing.Color.White;
            LinkButtonIncapacidades.BackColor = System.Drawing.Color.White;
            LinkButtonVacaciones.BackColor = System.Drawing.Color.White;
            LinkButtonCurriculo.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
        }

        protected void LinkButtonPermisos_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            LinkButtonInfo.BackColor = System.Drawing.Color.White;
            LinkButtonPermisos.BackColor = System.Drawing.Color.LightGray;
            LinkButtonIncapacidades.BackColor = System.Drawing.Color.White;
            LinkButtonVacaciones.BackColor = System.Drawing.Color.White;
            LinkButtonCurriculo.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
        }

        protected void LinkButtonIncapacidades_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            LinkButtonInfo.BackColor = System.Drawing.Color.White;
            LinkButtonPermisos.BackColor = System.Drawing.Color.White;
            LinkButtonIncapacidades.BackColor = System.Drawing.Color.LightGray;
            LinkButtonVacaciones.BackColor = System.Drawing.Color.White;
            LinkButtonCurriculo.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
        }

        protected void LinkButtonVacaciones_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
            LinkButtonInfo.BackColor = System.Drawing.Color.White;
            LinkButtonPermisos.BackColor = System.Drawing.Color.White;
            LinkButtonIncapacidades.BackColor = System.Drawing.Color.White;
            LinkButtonVacaciones.BackColor = System.Drawing.Color.LightGray;
            LinkButtonCurriculo.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
        }

        protected void LinkButtonCurriculo_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
            LinkButtonInfo.BackColor = System.Drawing.Color.White;
            LinkButtonPermisos.BackColor = System.Drawing.Color.White;
            LinkButtonIncapacidades.BackColor = System.Drawing.Color.White;
            LinkButtonVacaciones.BackColor = System.Drawing.Color.White;
            LinkButtonCurriculo.BackColor = System.Drawing.Color.LightGray;
            LinkButtonContrato.BackColor = System.Drawing.Color.White;
        }

        protected void LinkButtonContrato_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
            LinkButtonInfo.BackColor = System.Drawing.Color.White;
            LinkButtonPermisos.BackColor = System.Drawing.Color.White;
            LinkButtonIncapacidades.BackColor = System.Drawing.Color.White;
            LinkButtonVacaciones.BackColor = System.Drawing.Color.White;
            LinkButtonCurriculo.BackColor = System.Drawing.Color.White;
            LinkButtonContrato.BackColor = System.Drawing.Color.LightGray;
        }

        protected void botonConsultar_Click(object sender, EventArgs e)
        {


        }

    }  
}