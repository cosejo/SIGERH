using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
   public class Autorizacion
    {
        #region atributos
        private int _Id;
        private String _Nombre;
        private String _Descripcion;
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
        #endregion

        #region
        public Autorizacion(int pId, String pNombre, String pDescripcion) 
        {
            Id = pId;
            Nombre = pNombre;
            Descripcion = pDescripcion;
        }
        public Autorizacion(int pId, String pNombre)
        {
            Id = pId;
            Nombre = pNombre;
        }
        #endregion
    }
}
