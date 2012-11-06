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
        #region atributos
        private Controladores.ControlSesiones _ControlSesion = new Controladores.ControlSesiones();
        #endregion

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
            ingresarUsuario();
        }
        #endregion

        #region metodos
        public void ingresarUsuario() 
        {
            if (TextBoxContrasena.Text == "" || TextBoxUsuario.Text == "")
            {
                Response.Write("<SCRIPT>alert('Debe ingresar todos los datos para poder iniciar sesión')</SCRIPT>");
                return;
            }

            if (!_ControlSesion.verificarUsuario(TextBoxUsuario.Text, TextBoxContrasena.Text))
            {
                Response.Write("<SCRIPT>alert('Ha ingresado los datos incorrectamente, por favor vuelva a intentarlo')</SCRIPT>");
            }
            else
            {
                _ControlSesion.NombreUsuario = TextBoxUsuario.Text;
                _ControlSesion.Contrasena = TextBoxContrasena.Text;
                _ControlSesion.ingresarAutorizacion();
                _ControlSesion.ingresarCedula();
                Response.Redirect("Menu.aspx");
            }
        }
        #endregion

    }
}
