using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
    public class Departamento
    {
        #region atributos
        private int _Id;
        private String _Nombre;
        private int _Padre;
        private List<Puesto> _Puestos;
        private int p;
        private string p_2;
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

        public int Padre
        {
            get { return _Padre; }
            set { _Padre = value; }
        }

        public List<Puesto> Puestos
        {
            get { return _Puestos; }
            set { _Puestos = value; }
        }
        #endregion

        #region constructores

        public Departamento(int pID, String pNombre)
        {
            Id = pID;
            Nombre = pNombre;
        }

        #endregion
    }
}
