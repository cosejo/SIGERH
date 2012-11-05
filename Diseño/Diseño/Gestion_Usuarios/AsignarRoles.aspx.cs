using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace Diseño.Gestion_Usuarios
{
    public partial class AsignarRoles : System.Web.UI.Page
    {
        #region atributos
        private static LogicaUsuarios _Logica = new LogicaUsuarios();

        #endregion

        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarCedulas();
                cargarRoles();
            }
        }
        #endregion

        #region eventos
        protected void botonAplicarModificacion_Click(object sender, EventArgs e)
        {
            if(DropDownListRoles.SelectedValue=="" || DropDownListUsuarios.SelectedValue=="")
            {
                Response.Write("<SCRIPT>alert('Debe seleccionar los datos para poder realizar la asignación')</SCRIPT>");
            }
            else
            {
                _Logica.asignarRolUsuario(Int32.Parse(DropDownListUsuarios.SelectedValue), DropDownListRoles.SelectedIndex);
              Response.Write("<SCRIPT>alert('Asignación realizada con éxito')</SCRIPT>");
            }
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gestion_Usuarios/SeleccionGestionUsuarios.aspx");
        }
        #endregion

        #region metodos

        public void cargarCedulas() 
        {
            DropDownListUsuarios.DataSource = _Logica.obtenerCedulas();
            DropDownListUsuarios.DataBind();
        }

        public void cargarRoles() 
        {
            DropDownListRoles.DataSource = _Logica.obtenerRoles();
            DropDownListRoles.DataBind();
        }
        #endregion
    }
}