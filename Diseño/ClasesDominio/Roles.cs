using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
    public class Roles
    {
        #region atributos
        private int _Id;
        private String _Nombre;
        private String _Descripcion;
        private List<Autorizacion> _Autorizaciones;
        #endregion

        #region propiedades

        public int Id
        {
            get { return _Id; }
            set { _Id = value; }
        }

        public String Nombre
        {
            get { return _Nombre; }
            set { _Nombre = value; }
        }

        public String Descripcion
        {
            get { return _Descripcion; }
            set { _Descripcion = value; }
        }

        public List<Autorizacion> Autorizaciones
        {
            get { return _Autorizaciones; }
            set { _Autorizaciones = value; }
        }
        #endregion

        #region constructores

        public Roles(int pId, String pNombre) 
        {
            Id = pId;
            Nombre = pNombre;
        }
        #endregion
    }
}
