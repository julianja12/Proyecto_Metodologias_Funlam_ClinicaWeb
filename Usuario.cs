using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Funlam_2015_02_Clinica_Web
{
    public partial class Usuario
    {

        private ClinicaWebEntities datos = null;

        public ClinicaWebEntities Datos {

            get {
                if (datos == null)
                    datos = new ClinicaWebEntities();
                return datos;
            
                }


        
        }

        public Usuario ConsultaUsuarios(int id) {

            return Datos.Usuarios.SingleOrDefault<Usuario>(w => w.IdUsuario == id);
        
        }

        public List<Usuario> ConsultaNombre(String Nombre) {

            IQueryable<Usuario> Usuario = from p in Datos.Usuarios
                                          where p.NombreUsuario.Contains(Nombre)
                                          select p;

            return Usuario.ToList();
        
        }


        public Usuario Agregar(String Nombre, String Apellido, int Edad, int Telefono, String Direccion, String Email) { 
        
        Usuario ObjUsuario  = new Usuario();
            ObjUsuario.IdUsuario = 0;
            ObjUsuario.NombreUsuario = Nombre;
            ObjUsuario.ApellidoUsuario = Apellido;
            ObjUsuario.Edad = Edad;
            ObjUsuario.Telefono= Telefono;
            ObjUsuario.Direccion = Direccion;
            ObjUsuario.Email = Email;

            Datos.Usuarios.AddObject(ObjUsuario);
            Datos.SaveChanges();
            return ObjUsuario;
        
        }

        public int EliminarUsuario(int Id)
        {
            int resultado = 0;

            EntityKey key = new EntityKey("ClinicaWebEntities.Usuarios", "IdUsuario", Id);

            object usuario_Eliminar;
            if (Datos.TryGetObjectByKey(key, out usuario_Eliminar)) {

                Datos.DeleteObject(usuario_Eliminar);
                resultado = Datos.SaveChanges();
            }

            return resultado;
        }

        
        public int Actualizar( String Nombre, String Apellido, int Edad, int Telefono, String Direccion, String Email) { 
        

             int resultado = 0;
            Usuario objUsuario = new Usuario();
            objUsuario.NombreUsuario = Nombre;
            objUsuario.ApellidoUsuario = Apellido;
            objUsuario.Edad = Edad;
            objUsuario.Telefono = Telefono;
            objUsuario.Direccion = Direccion;
            objUsuario.Email = Email;

            EntityKey key = new EntityKey("ClinicaWebEntities.Usuarios", "IdUsuario", objUsuario);

            object usuario_Actualizar;

            if (Datos.TryGetObjectByKey(key, out usuario_Actualizar)) {

                Datos.ApplyCurrentValues(key.EntitySetName, objUsuario);
                resultado = Datos.SaveChanges();
            }

            return resultado;
     
        }
    }
}