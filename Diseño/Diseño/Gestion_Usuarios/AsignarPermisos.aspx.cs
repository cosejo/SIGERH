using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace Diseño.Gestion_Usuarios
{
    public partial class AsignarPermisos : System.Web.UI.Page
    {
        #region atributos
        private LogicaUsuarios _Logica = new LogicaUsuarios();
        #endregion

        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarRoles();
            cargarPermisos();

        }
        #endregion

        #region eventos
        protected void botonAplicarModificacion_Click(object sender, EventArgs e)
        {
            if (DropDownListRoles.SelectedValue == "" || DropDownListPermisos.SelectedValue == "")
            {
                Response.Write("<SCRIPT>alert('Debe seleccionar los datos para poder realizar la asignación')</SCRIPT>");
            }
            else
            {
                _Logica.asignarAutorizacionRol(DropDownListPermisos.SelectedIndex, DropDownListRoles.SelectedIndex);
                Response.Write("<SCRIPT>alert('Asignación realizada con éxito')</SCRIPT>");
            }
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gestion_Usuarios/SeleccionGestionUsuarios.aspx");
        }
        #endregion
        #region metodos

        public void cargarRoles()
        {
            DropDownListRoles.DataSource = _Logica.obtenerRoles();
            DropDownListRoles.DataBind();
        }

        public void cargarPermisos()
        {
            DropDownListPermisos.DataSource = _Logica.obtenerAutorizaciones();
            DropDownListPermisos.DataBind();
        }
        #endregion
    }
}