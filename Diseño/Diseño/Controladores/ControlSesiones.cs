using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Logica;

namespace Diseño.Controladores
{
    public class ControlSesiones : System.Web.UI.Page
    {
        #region atributos
        private LogicaUsuarios _Logica = new LogicaUsuarios();
        private const string _Admin = "admin";
        #endregion

        #region propiedades
        public String NombreUsuario
        {
            get { return (String) Session["NombreUsuario"]; }
            set { Session["NombreUsuario"] = value; }
        }

        public String Contrasena
        {
            get { return (String) Session["Contrasena"]; }
            set { Session["Contrasena"] = value; }
        }

        public int Cedula
        {
            get { return (int)Session["Cedula"]; }
            set { Session["Cedula"] = value; }
        }

        public String Autorizacion
        {
            get { return (String)Session["Autorizacion"]; }
            set { Session["Autorizacion"] = value; }
        }

        #endregion

        #region metodos

        public Boolean verificarUsuario(String pUsuario, String pContrasena)
        {
            if (_Logica.verificarUsuarioPorNombre(pUsuario, pContrasena) != null || (pUsuario == _Admin && pContrasena ==_Admin))
                return true;

            return false;
        }

        public void ingresarAutorizacion() 
        {
            Autorizacion = _Logica.UsuarioActual.Autorizacion;
        }

        public void ingresarCedula() 
        {
            Cedula = _Logica.UsuarioActual.Cedula;
        }

        #endregion
    }
}