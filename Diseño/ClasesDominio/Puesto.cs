using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
    public class Puesto
    {
        #region atributos
        private int _Id;
        private String _Nombre;
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
        #endregion

        #region constructor
        public Puesto(int pID, String pNombre)
        {
            Id = pID;
            Nombre = pNombre;
        }
        #endregion
    }
}
