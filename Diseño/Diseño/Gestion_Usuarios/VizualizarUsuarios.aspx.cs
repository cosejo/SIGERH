using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Logica;
using ClasesDominio;

namespace Diseño.Gestion_Usuarios
{
    public partial class VizualizarUsuarios : System.Web.UI.Page
    {
        #region atributos
        private static LogicaUsuarios _Logica = new LogicaUsuarios();
        string _Connection;
        #endregion

        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            mostrarDatosUsuarios();
        }
        #endregion

        #region verificar si sirven

        /*Insertar en la Base de Datos*/
        private Boolean insertar() {
            try
            {
                SqlConnection DataConnection = new SqlConnection(_Connection);
                SqlCommand execproc = new SqlCommand("sp_InsertarUsuarios", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@Nombre", SqlDbType.VarChar,100);
                /* param.Value = TextBox1.Text;
                 param = execproc.Parameters.Add("@Alias", SqlDbType.VarChar,100);
                 param.Value = TextBox2.Text;
                 param = execproc.Parameters.Add("@Puesto", SqlDbType.VarChar,100);
                 param.Value = TextBox3.Text;*/
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                execproc.ExecuteReader();
                return true;
            }

            catch (Exception sqle) { return false;}
        }


        /*Modificar en la Base de Datos*/

        private Boolean modificar()
        {
            try
            {
                SqlConnection DataConnection = new SqlConnection(_Connection);
                SqlCommand execproc = new SqlCommand("sp_ModificarUsuario", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@id", SqlDbType.Int);
              /*  param.Value = TextBox4.Text;
                param = execproc.Parameters.Add("@Nombre", SqlDbType.VarChar, 100);
                param.Value = TextBox1.Text;
                param = execproc.Parameters.Add("@Alias", SqlDbType.VarChar, 100);
                param.Value = TextBox2.Text;
                param = execproc.Parameters.Add("@Puesto", SqlDbType.VarChar, 100);
                param.Value = TextBox3.Text;*/
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                execproc.ExecuteReader();
                return true;
            }

            catch (Exception sqle) { return false; }
        }

        /*Borrar en la Base de Datos*/
        private Boolean borrar(int pID)
        {
          try
            {
                SqlConnection DataConnection = new SqlConnection(_Connection);
                SqlCommand execproc = new SqlCommand("sp_BorrarUsuarios", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@id", SqlDbType.Int);
                 param.Value = pID;
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                execproc.ExecuteReader();
                return true;
            }

            catch (Exception sqle) { return false;}
        }

        #endregion

        #region eventos
        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gestion_Usuarios/SeleccionGestionUsuarios.aspx");
        }
#endregion

        #region metodos
        private void mostrarDatosUsuarios() 
        {
            _Logica.obtenerVisualizarUsuarios();
            if (_Logica.ListaUsuarios.Count == 0)
            {
                LabelNoHayDatos.Visible = true;
                return;
            }
            GridViewConsultaUsuarios.DataSource = _Logica.ListaUsuarios;
            GridViewConsultaUsuarios.DataBind();
        }

        private void llenarCamposModificar() 
        {
            /*_Logica.obtenerUsuarioPorIndice(GridViewConsultaUsuarios.SelectedIndex);
            TextBoxNombre.Text = _Logica.UsuarioActual.Nombre + " " + _Logica.UsuarioActual.Apellido;
            TextBoxUsuario.Text = _Logica.UsuarioActual.Usuario;
            DropDownListEdad.SelectedValue = _Logica.UsuarioActual.Edad+"";
            DropDownListSexo.SelectedValue = _Logica.UsuarioActual.Sexo;
            DropDownListDepartamento.SelectedValue = _Logica.UsuarioActual.Departamento;
            DropDownListPuesto.SelectedValue = _Logica.UsuarioActual.Puesto;
            DropDownListRol.SelectedValue = _Logica.UsuarioActual.Rol;
            DropDownListAutorizacion.SelectedValue = _Logica.UsuarioActual.Autorizacion;
            TextBoxContrasena.Attributes.Add("value", _Logica.UsuarioActual.Contrasena);
            TextBoxConfirmarContrasena.TextMode = TextBoxMode.SingleLine;
            TextBoxConfirmarContrasena.Attributes.Add("value", _Logica.UsuarioActual.Contrasena);*/
        }

        public void obtenerPuestos()
        {
           /* int cuenta = 0;
            foreach(Puesto puesto in _Logica.Departamentos.ElementAt(DropDownListDepartamento.SelectedIndex).Puestos)
            {
                DropDownListPuesto.Items.Insert(cuenta,puesto.Nombre);
                cuenta++;
            }
            DropDownListPuesto.DataBind();*/
        }

        public void obtenerDepartamentos()
        {
           /* int cuenta = 0;
            _Logica.obtenerDepartamentos();
            foreach (Departamento departamento in _Logica.Departamentos)
            {
                DropDownListDepartamento.Items.Insert(cuenta, departamento.Nombre);
                cuenta++;
            }
            DropDownListDepartamento.DataBind();*/
        }

        public void obtenerRoles()
        {
           /* _Logica.obtenerRoles();
            int cuenta = 0;
            foreach (Roles rol in _Logica.Roles)
            {
                DropDownListRol.Items.Insert(cuenta, rol.Nombre);
                cuenta++;
            }
            DropDownListRol.DataBind();*/
        }

        public void obtenerAutorizaciones()
        {
           /* _Logica.obtenerAutorizaciones();
            int cuenta = 0;
            foreach (Autorizacion autorizacion in _Logica.Autorizacion)
            {
                DropDownListAutorizacion.Items.Insert(cuenta, autorizacion.Nombre);
                cuenta++;
            }
            DropDownListAutorizacion.DataBind();*/
        }

        public void obtenerTipoUsuarios()
        {
          /*  _Logica.obtenerTipoUsuarios();
            int cuenta = 0;
            foreach (TipoUsuario tipo in _Logica.Tipos)
            {
                DropDownListTipoUsuario.Items.Insert(cuenta, tipo.Tipo);
                cuenta++;
            }
            DropDownListTipoUsuario.DataBind();*/
        }


#endregion

    }
}
