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
        public void obtenerUsuarios()
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
                      _ListaUsuarios.ElementAt(cuenta).Usuario = lectorSQL.GetString(2);
                      _ListaUsuarios.ElementAt(cuenta).Edad = lectorSQL.GetInt32(3);
                      _ListaUsuarios.ElementAt(cuenta).Sexo = lectorSQL.GetString(4);
                      _ListaUsuarios.ElementAt(cuenta).TipoUsuario = lectorSQL.GetString(5);
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

        public List<Puesto> obtenerPuestos(int pDepartamento)
        {
          _Puestos = new List<Puesto>();
          SqlDataReader lectorSQL;
          List<Puesto> temporal;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerPuestos(pDepartamento);
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                     while (lectorSQL.Read())
                    {
                      _Puestos.Add(new Puesto(lectorSQL.GetInt32(0), lectorSQL.GetString(1)));
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;
            }
            catch (Exception ex) {return null;}
            
            temporal = _Puestos;
            return temporal;
        }

        public void obtenerDepartamentos()
        {
            _Departamentos = new List<Departamento>();
           SqlDataReader lectorSQL;
            try
            {
                lectorSQL = AccesoDatosUsuarios.obtenerDepartamentos();
                if (lectorSQL.HasRows)
                {
                    banderaError = 0;
                     while (lectorSQL.Read())
                    {
                      _Departamentos.Add(new Departamento(lectorSQL.GetInt32(0), lectorSQL.GetString(1), obtenerPuestos(lectorSQL.GetInt32(0))));
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;
            }
            catch (Exception ex) { return; }
        }

        public void obtenerRoles()
        {
            _Roles = new List<Roles>();
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
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;
            }
            catch (Exception ex) { return; }
        }

        public void obtenerAutorizaciones()
        {
            _Autorizacion = new List<Autorizacion>();
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
                    }
                    lectorSQL.Close();
                }
                else
                    banderaError = 1;
            }
            catch (Exception ex) { return; }
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
        #endregion
    }
}
