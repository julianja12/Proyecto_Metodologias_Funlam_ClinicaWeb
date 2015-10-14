using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Funlam_2015_02_Clinica_Web
{
    public class UsuarioCitas
    {
        public int IdUsuario { get; set; }
        public int Cedula { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Fecha { get; set; }
        public string Hora { get; set; }
        public string Lugar { get; set; }
    }
}