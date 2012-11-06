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
    public static class AccesoDatosSolicitudes
    {

        public static void ingresarSolicitud(string Motivo, DateTime FechaInicio, DateTime FechaFinal, int CedulaUsuario)
        {
            SqlConnection DataConnection = new SqlConnection(AccesoDatos._Connection);
            try
            {
                SqlCommand execproc = new SqlCommand("SP_ASIGNAR_ROLES", DataConnection);
                SqlParameter param = execproc.Parameters.Add("@pIdCedula", SqlDbType.Int);
                param.Value = CedulaUsuario;
                 param = execproc.Parameters.Add("@pIdRol", SqlDbType.Int);
                // param.Value = roles.Id;
                execproc.CommandType = CommandType.StoredProcedure;
                execproc.Connection.Open();
                execproc.ExecuteReader();
                execproc.Connection.Close();
            }

            catch (Exception sqle) { }
        }
    }
}
