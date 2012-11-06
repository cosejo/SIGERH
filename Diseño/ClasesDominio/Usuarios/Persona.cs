using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
    public class Persona
    {
        #region atributos
        private String _Nombre;
        private String _Apellido;
        private int _Cedula;
        private int _Edad;
        private String _Sexo;
        private Puesto _Puesto;
        private Departamento _Departamento;
        private String _Usuario;
        private String _Contrasena;
        private List<Roles> _Rol;
        private String _Correo;
        #endregion

        #region propiedades

        public String Nombre
        {
            get { return _Nombre; }
            set { _Nombre = value; }
        }


        public String Apellido
        {
            get { return _Apellido; }
            set { _Apellido = value; }
        }

        public int Edad
        {
            get { return _Edad; }
            set { _Edad = value; }
        }

        public int Cedula
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

        public Departamento Departamento
        {
            get { return _Departamento; }
            set { _Departamento = value; }
        }

        public String Usuario
        {
            get { return _Usuario; }
            set { _Usuario = value; }
        }

        public String Contrasena
        {
            get { return _Contrasena; }
            set { _Contrasena = value; }
        }


        public String Correo
        {
            get { return _Correo; }
            set { _Correo = value; }
        }


        public List<Roles> Rol
        {
            get { return _Rol; }
            set { _Rol = value; }
        }
        #endregion

        #region Constructores
        public Persona(int pCedula) 
        {
            _Cedula = pCedula;
            _Rol = new List<Roles>();
        }

        public Persona(String Nombre, int Cedula, int Edad, String Sexo, String Usuario, String Contrasena) 
        {
            _Nombre = Nombre;
            _Cedula = Cedula;
            _Edad = Edad;
            _Sexo = Sexo;
            _Usuario = Usuario;
            _Contrasena = Contrasena;
            _Rol = new List<Roles>();
        }
        #endregion
    }
}
