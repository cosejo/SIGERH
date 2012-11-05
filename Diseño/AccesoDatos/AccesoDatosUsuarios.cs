using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using ClasesDominio;


namespace AccesoDatos
{
    public static class AccesoDatosUsuarios
    {
        #region atributos
        //string _Connection = ConfigurationManager.ConnectionStrings["Pruebas2ConnectionString"].ConnectionString;
        //string _Connection = "Data Source=10.0.0.5,1433;Initial Catalog=Proyecto;Integrated Security=True";
        //string _Connection = "Data Source=CARLOS-PC; Network Library=DBMSSOCN; Initial Catalog=SIGERH;User ID=proyecto;Password=Proyecto123;Integrated Security=True";
        //string _Connection = "Data Source=10.0.0.5,1433; Network Library=DBMSSOCN; Initial Catalog=Proyecto;User ID=proyecto;Password=Proyecto123;Integrated Security=True";
        //string _Connection = "Data Source=CARLOS-PC;Initial Catalog=Pruebas;Integrated Security=True";
        //Data Source=190.190.200.100,1433;Network Library=DBMSSOCN;Initial Catalog=myDataBase;User ID=myUsername;Password=myPassword;
        //ConnectionString="Data Source=192.100.10.98\sqlexpress;Initial Catalog=TeresaDeCalcuta1;Integrated Security=SSPI;"
        //string _Connection = "Data Source=WIN-6ENZ8ZHHGWQ/;Trusted_Connection=True; Initial Catalog=Proyecto;User ID=Proyecto;Password=Proyecto123;Integrated Security=true";
        //string _Connection = "Data Source=10.0.0.4,1433; Network Library=DBMSSOCN; Initial Catalog=Proyecto;User ID=sa;Password=sa;";
        //string _Connection = "";
        private const string _Connection = "Data Source=CARLOS-PC; Network Library=DBMSSOCN; Initial Catalog=SIGERH;User ID=proyecto;Password=Proyecto123;Integrated Security=True";
        //private const string _Connection = "Data Source=192.168.0.100; Network Library=DBMSSOCN; Initial Catalog=SIGERH;User ID=Proyecto;Password=Proyecto123;Integrated Security=false";
        #endregion

        #region metodos
        public static SqlDataReader obtenerUsuarios()
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            SqlDataReader lectorSQL;
            try
            {
                SqlCommand execproc = new SqlCommand("SP_OBTENER_USUARIOS", DataConnection);
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                lectorSQL = execproc.ExecuteReader();
            }

            catch (Exception sqle) { lectorSQL = null;}
            return lectorSQL;
        }

       public static SqlDataReader obtenerCedulas()
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            SqlDataReader lectorSQL;
            try
            {
                SqlCommand execproc = new SqlCommand("SP_OBTENER_CEDULAS", DataConnection);
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                lectorSQL = execproc.ExecuteReader();
            }

            catch (Exception sqle) { lectorSQL = null;}
            return lectorSQL;
        }

        public static SqlDataReader obtenerPuestos()
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            SqlDataReader lectorSQL;
            try
            {
                SqlCommand execproc = new SqlCommand("SP_OBTENER_PUESTOS", DataConnection);
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                lectorSQL = execproc.ExecuteReader();
            }
            catch (Exception sqle) { lectorSQL = null; }
            return lectorSQL;
        }

        public static SqlDataReader obtenerDepartamentos()
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            SqlDataReader lectorSQL;
            try
            {
                SqlCommand execproc = new SqlCommand("SP_OBTENER_DEPARTAMENTOS", DataConnection);
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                lectorSQL = execproc.ExecuteReader();
            }

            catch (Exception sqle) { lectorSQL = null; }
            return lectorSQL;
        }

        public static SqlDataReader obtenerRoles() 
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            SqlDataReader lectorSQL;
            try
            {
                SqlCommand execproc = new SqlCommand("SP_OBTENER_ROLES", DataConnection);
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                lectorSQL = execproc.ExecuteReader();
            }

            catch (Exception sqle) { lectorSQL = null; }
            return lectorSQL;
        }

        public static SqlDataReader obtenerAutorizaciones() 
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            SqlDataReader lectorSQL;
            try
            {
                SqlCommand execproc = new SqlCommand("SP_OBTENER_AUTORIZACIONES", DataConnection);
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                lectorSQL = execproc.ExecuteReader();
            }

            catch (Exception sqle) { lectorSQL = null; }
            return lectorSQL;
        }

        public static SqlDataReader obtenerTipoUsuarios() 
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            SqlDataReader lectorSQL;
            try
            {
                SqlCommand execproc = new SqlCommand("SP_OBTENER_TIPOS_USUARIOS", DataConnection);
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                lectorSQL = execproc.ExecuteReader();
            }

            catch (Exception sqle) { lectorSQL = null; }
            return lectorSQL;
        }

        public static void asignarRolUsuario(int CedulaUsuario, Roles roles)
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            try
            {
                SqlCommand execproc = new SqlCommand("SP_ASIGNAR_ROLES", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@pIdCedula", SqlDbType.Int);
                param.Value = CedulaUsuario;
                 param = execproc.Parameters.Add("@pIdRol", SqlDbType.Int);
                 param.Value = roles.Id;
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                execproc.ExecuteReader();
                execproc.Connection.Close();
            }

            catch (Exception sqle) { }
        }
        
        public static void asignarAutorizacionRol(Autorizacion Autorizacion, Roles Roles)
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            try
            {
                SqlCommand execproc = new SqlCommand("SP_ASIGNAR_AUTORIZACION", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@pIdAutorizacion", SqlDbType.Int);
                param.Value = Autorizacion.Id;
                param = execproc.Parameters.Add("@pIdRol", SqlDbType.Int);
                param.Value = Roles.Id;
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                execproc.ExecuteReader();
                execproc.Connection.Close();
            }

            catch (Exception sqle) { }
        }
        
        public static Boolean crearPersona(Persona nueva)
        {
            if (crearUsuario(nueva))
            {
                asignarRolUsuario(nueva.Cedula, nueva.Rol.ElementAt(0));
                return true;
            }
            else 
            {
                return false;
            }
        }

        public static Boolean crearUsuario(Persona Persona)
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            try
            {
                SqlCommand execproc = new SqlCommand("SP_CREAR_USUARIO", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@pCedula", SqlDbType.Int);
                param.Value = Persona.Cedula;
                param = execproc.Parameters.Add("@pNombre", SqlDbType.VarChar, 50);
                param.Value = Persona.Nombre;
                param = execproc.Parameters.Add("@pApellido", SqlDbType.VarChar, 50);
                param.Value = Persona.Apellido;
                param = execproc.Parameters.Add("@pEdad", SqlDbType.Int);
                param.Value = Persona.Edad;
                param = execproc.Parameters.Add("@pSexo", SqlDbType.VarChar, 2);
                param.Value = Persona.Sexo;
                param = execproc.Parameters.Add("@pFk_idPuesto", SqlDbType.Int);
                param.Value = Persona.Puesto.Id;
                param = execproc.Parameters.Add("@pUsuario", SqlDbType.VarChar, 50);
                param.Value = Persona.Usuario;
                param = execproc.Parameters.Add("@pContrasena", SqlDbType.VarChar, 50);
                param.Value = Persona.Contrasena;
                param = execproc.Parameters.Add("@pFk_idDepartamento", SqlDbType.Int);
                param.Value = Persona.Departamento.Id;
                param = execproc.Parameters.Add("@pCorreo", SqlDbType.VarChar, 100);
                param.Value = Persona.Correo;
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                execproc.ExecuteReader();
                execproc.Connection.Close();
                return true;
            }

            catch (Exception sqle) { return false; }
        }

        #endregion
    }
}
