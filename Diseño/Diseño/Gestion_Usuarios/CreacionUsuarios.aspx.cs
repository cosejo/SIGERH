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
    public partial class CreacionUsuarios : System.Web.UI.Page
    {
        #region atributos
        private static LogicaUsuarios _Logica = new LogicaUsuarios();
        string _Connection;
        #endregion

        #region inicializacion
        protected void Page_Load(object sender, EventArgs e)
        {
            obtenerDepartamentos();
            obtenerRoles();
            obtenerAños();
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

        //Response.Write("<SCRIPT>alert('El Usuario fue borrado correctamente')</SCRIPT>");

        protected void ButtonEjecutar_Click(object sender, EventArgs e)
        {
            verificarCampos();
        }

        protected void botonRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Gestion_Usuarios/SeleccionGestionUsuarios.aspx");
        }

        protected void botonCrear_Click(object sender, EventArgs e)
        {
            verificarCampos();
        }
        #endregion

        #region metodos

        private void llenarCamposModificar() 
        {
            if (TextBoxNombre.Text != "" ||
               TextBoxApellido.Text != "" ||
               TextBoxUsuario.Text != "" ||
               DropDownListDepartamento.SelectedValue != "" ||
               DropDownListPuesto.SelectedValue != "" ||
               DropDownListRol.SelectedValue != "" ||
               TextBoxContrasena.Text == TextBoxConfirmarContrasena.Text ||
               TextBoxContrasena.Text != "")
            {
                Response.Write("<SCRIPT>alert('Debe ingresar todos los datos para poder realizar la operación')</SCRIPT>");
                return;
            }
           /* else
                _Logica.crearUsuario(new Persona());*/
        }

        public void obtenerPuestos()
        {
            DropDownListPuesto.DataSource = _Logica.obtenerPuestos();
            DropDownListPuesto.DataBind();
        }

        public void obtenerDepartamentos()
        {
            DropDownListDepartamento.DataSource = _Logica.obtenerDepartamentos();
            DropDownListDepartamento.DataBind();
        }

        public void obtenerRoles()
        {

            DropDownListRol.DataSource = _Logica.obtenerRoles();
            DropDownListRol.DataBind();
        }

        public void obtenerAños() 
        {
            DropDownListEdad.DataSource = _Logica.obtenerAños();
            DropDownListEdad.DataBind();
        }


#endregion

    }
}
