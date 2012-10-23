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
        //private const string _Connection = "Data Source=CARLOS-PC; Network Library=DBMSSOCN; Initial Catalog=SIGERH;User ID=proyecto;Password=Proyecto123;Integrated Security=True";
        private const string _Connection = "Data Source=DATA-CENTER; Network Library=DBMSSOCN; Initial Catalog=SIGERH;User ID=Proyecto;Password=Proyecto123;Integrated Security=false";
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

        public static SqlDataReader obtenerPuestos(int pDepartamento)
        {
            SqlConnection DataConnection = new SqlConnection(_Connection);
            SqlDataReader lectorSQL;
            try
            {
                SqlCommand execproc = new SqlCommand("SP_OBTENER_PUESTOS_DEPARTAMENTO", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@pidDepartamento", SqlDbType.Int);
                param.Value = pDepartamento;
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
        #endregion
    }
}
