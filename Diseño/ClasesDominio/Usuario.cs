using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClasesDominio
{
    public class Usuario
    {
        #region atributos
        private int _Id;
        private String _Nombre;
        private String _Contrasena;
        private TipoUsuario _Tipo;
        private Persona _Persona;
        private List<Roles> _Rol;
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

        public String Contrasena
        {
            get { return _Contrasena; }
            set { _Contrasena = value; }
        }

        public TipoUsuario Tipo
        {
            get { return _Tipo; }
            set { _Tipo = value; }
        }

        public Persona Persona
        {
            get { return _Persona; }
            set { _Persona = value; }
        }

        public List<Roles> Rol
        {
            get { return _Rol; }
            set { _Rol = value; }
        }
        #endregion

    }
}
