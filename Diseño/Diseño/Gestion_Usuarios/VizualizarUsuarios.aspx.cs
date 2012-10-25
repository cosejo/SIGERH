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
            /*obtenerDepartamentos();
            obtenerRoles();
            obtenerAutorizaciones();
            obtenerUsuarios();*/
        }
        #endregion

        #region verificar si sirven
        /*Verificar Campos y borrar datos*/
        private void verificarCampos() {
           /* if (TextBox1.Text != "")
            {
                _IdActual = int.Parse(TextBox1.Text);
                if (borrar(_IdActual))
                {
                    Response.Write("<SCRIPT>alert('El Usuario fue borrado correctamente')</SCRIPT>");
                    }
                else
                    Response.Write("<SCRIPT>alert('Digite un número para el id del usuario a borrar')</SCRIPT>");
             }
            else
                Response.Write("<SCRIPT>alert('Debe rellenar el campo para el id del usuario para poder borrarlo')</SCRIPT>");*/
            }


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

        private Boolean modificarUnValor(int pCambio)
        {
            string parametro;

         /*   if (pCambio == 1)
            {
                //parametro = TextBox1.Text;
            }
            else if (pCambio == 2)
                  //  parametro = TextBox2.Text;
               // else
                   // parametro = TextBox3.Text;*/

            try
            {
                SqlConnection DataConnection = new SqlConnection(_Connection);
                SqlCommand execproc = new SqlCommand("sp_ModificarCampoUsuario", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@Cambio", SqlDbType.Int);
                param.Value = pCambio;
                param = execproc.Parameters.Add("@id", SqlDbType.Int);
               // param.Value = TextBox4.Text;
                param = execproc.Parameters.Add("@Parametro", SqlDbType.VarChar, 100);
               // param.Value = parametro;
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                execproc.ExecuteReader();
                return true;
            }

            catch (Exception sqle) { return false; }
        }

        private Boolean modificarDosValores(int pCambio, int pCambio2)
        {
            string parametro;
            string parametro2;
            if (pCambio == 1)
            {
             /*   parametro = TextBox1.Text;
                if (pCambio2 == 2)
                    parametro2 = TextBox2.Text;
                else
                    parametro2 = TextBox3.Text;
            }
            else {
                parametro = TextBox2.Text;
                parametro2 = TextBox3.Text;*/
                }

            try
            {
                SqlConnection DataConnection = new SqlConnection(_Connection);
                SqlCommand execproc = new SqlCommand("sp_ModificarDosCamposUsuario", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@Cambio", SqlDbType.Int);
                param.Value = pCambio;
                param = execproc.Parameters.Add("@Cambio2", SqlDbType.Int);
                param.Value = pCambio2;
                param = execproc.Parameters.Add("@id", SqlDbType.Int);
             //   param.Value = TextBox4.Text;
                param = execproc.Parameters.Add("@Parametro", SqlDbType.VarChar, 100);
              //  param.Value = parametro;
                param = execproc.Parameters.Add("@Parametro2", SqlDbType.VarChar, 100);
               // param.Value = parametro2;
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
        protected void ButtonConsulta_Click(object sender, EventArgs e)
        {
            _Logica.obtenerUsuarios();
            GridViewConsultaUsuarios.DataSource = _Logica.ListaUsuarios;
            GridViewConsultaUsuarios.DataBind();
            //Response.Write("<SCRIPT>alert('El Usuario fue borrado correctamente')</SCRIPT>");
        }

        protected void ButtonEjecutar_Click(object sender, EventArgs e)
        {
            //verificarCampos();
        }

        protected void botonBorrar_Click(object sender, EventArgs e)
        {
        }

        protected void botonInsertar_Click(object sender, EventArgs e)
        {
            //verificarCampos();
        }

        protected void GridViewConsultaUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            //llenarCamposModificar();
        }

        protected void TextBoxConfirmarContrasena_TextChanged(object sender, EventArgs e)
        {
            //TextBoxConfirmarContrasena.TextMode = TextBoxMode.Password;
        }

        protected void DropDownListDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {
           // obtenerPuestos();
        }
#endregion

        #region metodos

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

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/pruebaDB/Gestion_Usuarios/SeleccionGestionUsuarios.aspx");
        }

    }
}
