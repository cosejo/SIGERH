using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace Diseño.Gestion_Usuarios
{
    public partial class EliminarUsuarios : System.Web.UI.Page
    {
        #region atributos
        private LogicaUsuarios _Logica = new LogicaUsuarios();
        #endregion

        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarCedulas();
        }
        #endregion

        #region eventos
        protected void botonEliminarUsuario_Click(object sender, EventArgs e)
        {
          /*  if(DropDownListCedulas.SelectedValue!=null)
                //eliminar
            else
                {
                    Response.Write("<SCRIPT>alert('Debe seleccionar un número de cédula')</SCRIPT>");
                }*/
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gestion_Usuarios/SeleccionGestionUsuarios.aspx");
        }
        #endregion

        #region metodos
        public void cargarCedulas() 
        {
            DropDownListCedulas.DataSource = _Logica.obtenerCedulas();
            DropDownListCedulas.DataBind();
        }
        #endregion
    }
}