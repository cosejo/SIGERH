using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ClasesDominio;
using AccesoDatos;

namespace Logica
{
    public class LogicaSolicitudes
    {
        private AdapterSolicitudes _Adapter = new AdapterSolicitudes();

        public void enviarSolicitud(String Motivo, DateTime FechaInicio, DateTime FechaFinal, int CedulaUsuario,String TipoSolicitud)
        {
           //AccesoDatosSolicitudes.ingresarSolicitud();
        }
    }
}
