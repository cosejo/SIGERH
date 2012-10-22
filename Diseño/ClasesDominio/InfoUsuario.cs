using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
    public class InfoUsuario
    {
        private String _Nombre;
        private String _Apellido;
        private String _Usuario;
        private int _Edad;
        private String _Sexo;
        private String _TipoUsuario;
        private String _Departamento;
        private String _Puesto;
        private String _Rol;
        private String _Autorizacion;
        private String _Contrasena;

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

        public String Usuario
        {
            get { return _Usuario; }
            set { _Usuario = value; }
        }

        public int Edad
        {
            get { return _Edad; }
            set { _Edad = value; }
        }

        public String Sexo
        {
            get { return _Sexo; }
            set { _Sexo = value; }
        }

        public String TipoUsuario
        {
            get { return _TipoUsuario; }
            set { _TipoUsuario = value; }
        }

        public String Departamento
        {
            get { return _Departamento; }
            set { _Departamento = value; }
        }
 
        public String Puesto
        {
            get { return _Puesto; }
            set { _Puesto = value; }
        }

        public String Rol
        {
            get { return _Rol; }
            set { _Rol = value; }
        }
        
        public String Autorizacion
        {
            get { return _Autorizacion; }
            set { _Autorizacion = value; }
        }
        

        public String Contrasena
        {
            get { return _Contrasena; }
            set { _Contrasena = value; }
        }
    }
}
