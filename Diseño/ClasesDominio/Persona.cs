using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
    public class Persona
    {
        #region atributos
        private int _Id;
        private String _Nombre;
        private String _Cedula;
        private int _Edad;
        private String _Sexo;
        private Puesto _Puesto;
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


        public int Edad
        {
            get { return _Edad; }
            set { _Edad = value; }
        }

        public String Cedula
        {
            get { return _Cedula; }
            set { _Cedula = value; }
        }

        public String Sexo
        {
            get { return _Sexo; }
            set { _Sexo = value; }
        }

        public Puesto Puesto
        {
            get { return _Puesto; }
            set { _Puesto = value; }
        }
        #endregion

        #region Constructores
        public Persona(String pCedula) 
        {
            _Cedula = pCedula;
        }
        #endregion
    }
}
