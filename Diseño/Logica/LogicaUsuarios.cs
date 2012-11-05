using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using AccesoDatos;
using ClasesDominio;

namespace Logica
{
    public class LogicaUsuarios
    {
        #region atributos
        private List<InfoUsuario> _ListaUsuarios = new List<InfoUsuario> ();
        private InfoUsuario _InfoUsuarioActual = new InfoUsuario();
        private List<TipoUsuario> _Tipos = new List<TipoUsuario>();
        private List<Puesto> _Puestos = new List<Puesto>();
        private List<Departamento> _Departamentos = new List<Departamento>();
        private List<Autorizacion> _Autorizacion = new List<Autorizacion>();
        private List<Roles> _Roles = new List<Roles>();
        public int banderaError;
        public const int _CantidadAños = 110;
        #endregion

        #region propiedades
        public List<InfoUsuario> ListaUsuarios
        {
            get { return _ListaUsuarios; }
            set { _ListaUsuarios = value; }
        }

        public InfoUsuario UsuarioActual
        {
            get { return _InfoUsuarioActual; }
            set { _InfoUsuarioActual = value; }
        }

        public List<TipoUsuario> Tipos
        {
          get { return _Tipos; }
          set { _Tipos = value; }
        }

        public List<Puesto> Puestos
        {
          get { return _Puestos; }
          set { _Puestos = value; }
        }

        public List<Departamento> Departamentos
        {
          get { return _Departamentos; }
          set { _Departamentos = value; }
        }

        public List<Autorizacion> Autorizacion
        {
          get { return _Autorizacion; }
          set { _Autorizacion = value; }
        }
        
        public List<Roles> Roles
        {
          get { return _Roles; }
          set { _Roles = value; }
        }
        #endregion

        #region metodos
        public void obtenerVisualizarUsuarios()
        {
            _ListaUsuarios = new List<InfoUsuario>();
            SqlDataReader lectorSQL;
            int cuenta;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerUsuarios();
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                     while (lectorSQL.Read())
                    {
                      cuenta = _ListaUsuarios.Count;
                      _ListaUsuarios.Add(new InfoUsuario());
                      _ListaUsuarios.ElementAt(cuenta).Nombre = lectorSQL.GetString(0);
                      _ListaUsuarios.ElementAt(cuenta).Apellido = lectorSQL.GetString(1);
                      _ListaUsuarios.ElementAt(cuenta).Cedula = lectorSQL.GetString(2);
                      _ListaUsuarios.ElementAt(cuenta).Usuario = lectorSQL.GetString(3);
                      _ListaUsuarios.ElementAt(cuenta).Edad = lectorSQL.GetInt32(4);
                      _ListaUsuarios.ElementAt(cuenta).Sexo = lectorSQL.GetString(5);
                      _ListaUsuarios.ElementAt(cuenta).Departamento = lectorSQL.GetString(6);
                      _ListaUsuarios.ElementAt(cuenta).Puesto = lectorSQL.GetString(7);
                      _ListaUsuarios.ElementAt(cuenta).Rol = lectorSQL.GetString(8);
                      _ListaUsuarios.ElementAt(cuenta).Autorizacion = lectorSQL.GetString(9);
                      _ListaUsuarios.ElementAt(cuenta).Contrasena = lectorSQL.GetString(10);
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;
            }
            catch (Exception ex) { return; }
        }

        public List<String> obtenerPuestos()
        {
          _Puestos = new List<Puesto>();
          List<String> _ListaPuestos = new List<String>();
          SqlDataReader lectorSQL;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerPuestos();
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                     while (lectorSQL.Read())
                    {
                      _Puestos.Add(new Puesto(lectorSQL.GetInt32(0), lectorSQL.GetString(1)));
                      _ListaPuestos.Add(lectorSQL.GetString(1));
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;

                return _ListaPuestos;
            }
            catch (Exception ex) { return _ListaPuestos; }
        }

        public List<String> obtenerDepartamentos()
        {
            _Departamentos = new List<Departamento>();
           List<String> _ListaDepartamentos = new List<String>();
           SqlDataReader lectorSQL;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerDepartamentos();
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                     while (lectorSQL.Read())
                    {
                      _Departamentos.Add(new Departamento(lectorSQL.GetInt32(0), lectorSQL.GetString(1)));
                      _ListaDepartamentos.Add(lectorSQL.GetString(1));
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;
             
                return _ListaDepartamentos; 
            }
            catch (Exception ex) { return _ListaDepartamentos; }
        }

        public List<String> obtenerRoles()
        {
          _Roles = new List<Roles>();
          List<String> _ListaRoles = new List<String>();
          SqlDataReader lectorSQL;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerRoles();
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                     while (lectorSQL.Read())
                    {
                      _Roles.Add(new Roles(lectorSQL.GetInt32(0), lectorSQL.GetString(1)));
                      _ListaRoles.Add(lectorSQL.GetString(1));
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;

                return _ListaRoles;
            }
            catch (Exception ex) { return _ListaRoles; }
        }

        public List<String> obtenerAutorizaciones()
        {
            _Autorizacion = new List<Autorizacion>();
            List<String> _ListaAutorizaciones = new List<String>();
            SqlDataReader lectorSQL;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerAutorizaciones();
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                     while (lectorSQL.Read())
                    {
                      _Autorizacion.Add(new Autorizacion(lectorSQL.GetInt32(0), lectorSQL.GetString(1)));
                      _ListaAutorizaciones.Add(lectorSQL.GetString(1));
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;

            return _ListaAutorizaciones; 
            }
            catch (Exception ex) { return _ListaAutorizaciones; }
        }

        public void obtenerTipoUsuarios()
        {
            _Tipos = new List<TipoUsuario>();
            SqlDataReader lectorSQL;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerTipoUsuarios();
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                     while (lectorSQL.Read())
                    {
                      _Tipos.Add(new TipoUsuario(lectorSQL.GetInt32(0), lectorSQL.GetString(1)));
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;
            }
            catch (Exception ex) { return; }
        }

        public void obtenerUsuarioPorIndice(int pIndice) 
        {
            _InfoUsuarioActual = _ListaUsuarios.ElementAt(pIndice);
        }

        public InfoUsuario verificarUsuarioPorNombre(String pUsuario, String pContrasena)
        {
            InfoUsuario buscado= null;
            for (int i = 0; i < _ListaUsuarios.Count; i++)
            {
                buscado = _ListaUsuarios.ElementAt(i);
                if (buscado.Usuario == pUsuario && buscado.Contrasena == pContrasena)
                    _InfoUsuarioActual = buscado;
            }
            return buscado;
        }

        public List<String> obtenerCedulas() 
        {
            List<String> _ListaCedulas = new List<String>();
            SqlDataReader lectorSQL;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerCedulas();
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                    while (lectorSQL.Read())
                    {
                        _ListaCedulas.Add(lectorSQL.GetString(0));
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;

            return _ListaCedulas;
            }
            catch (Exception ex) { return null;}
        }

        public void asignarRolUsuario(int CedulaUsuario, int IndiceRol)
        {
            AccesoDatosUsuarios.asignarRolUsuario(CedulaUsuario, _Roles.ElementAt(IndiceRol));
        }

        public void asignarAutorizacionRol(int IndicePermisos, int IndiceRol)
        {
            AccesoDatosUsuarios.asignarAutorizacionRol(_Autorizacion.ElementAt(IndicePermisos), _Roles.ElementAt(IndiceRol));
        }

        #endregion

        public void crearUsuario(Persona persona)
        {
            AccesoDatosUsuarios.crearUsuario(persona);
        }

        public List<String> obtenerAños()
        {
            List<String> _ListaAños = new List<String>();

            for(int i=15; i<_CantidadAños;i++)
                _ListaAños.Add(i.ToString());

            return _ListaAños;
        }
    }
}
