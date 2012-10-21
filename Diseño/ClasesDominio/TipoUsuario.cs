using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
    public class TipoUsuario
    {
        #region atributos
        private int _Id;
        private String _Tipo;
        #endregion

        #region propiedades

        public String Tipo
        {
            get { return _Tipo; }
            set { _Tipo = value; }
        }

        public int Id
        {
            get { return _Id; }
            set { _Id = value; }
        }
        #endregion

        #region
        public TipoUsuario(int pId, String pTipo) 
        {
            Id = pId;
            Tipo = pTipo;
        }
        #endregion
    }
}
