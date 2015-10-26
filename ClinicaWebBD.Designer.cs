﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;

[assembly: EdmSchemaAttribute()]
#region Metadatos de relaciones en EDM

[assembly: EdmRelationshipAttribute("ClinicaWebModel", "FK__Cita__Cedula__0519C6AF", "Usuario", System.Data.Metadata.Edm.RelationshipMultiplicity.One, typeof(Funlam_2015_02_Clinica_Web.Usuario), "Cita", System.Data.Metadata.Edm.RelationshipMultiplicity.Many, typeof(Funlam_2015_02_Clinica_Web.Cita), true)]
[assembly: EdmRelationshipAttribute("ClinicaWebModel", "FK__TipoUsuar__Cedul__09DE7BCC", "Usuario", System.Data.Metadata.Edm.RelationshipMultiplicity.ZeroOrOne, typeof(Funlam_2015_02_Clinica_Web.Usuario), "TipoUsuario", System.Data.Metadata.Edm.RelationshipMultiplicity.Many, typeof(Funlam_2015_02_Clinica_Web.TipoUsuario), true)]

#endregion

namespace Funlam_2015_02_Clinica_Web
{
    #region Contextos
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    public partial class ClinicaWebEntities : ObjectContext
    {
        #region Constructores
    
        /// <summary>
        /// Inicializa un nuevo objeto ClinicaWebEntities usando la cadena de conexión encontrada en la sección 'ClinicaWebEntities' del archivo de configuración de la aplicación.
        /// </summary>
        public ClinicaWebEntities() : base("name=ClinicaWebEntities", "ClinicaWebEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Inicializar un nuevo objeto ClinicaWebEntities.
        /// </summary>
        public ClinicaWebEntities(string connectionString) : base(connectionString, "ClinicaWebEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Inicializar un nuevo objeto ClinicaWebEntities.
        /// </summary>
        public ClinicaWebEntities(EntityConnection connection) : base(connection, "ClinicaWebEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Métodos parciales
    
        partial void OnContextCreated();
    
        #endregion
    
        #region Propiedades de ObjectSet
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        public ObjectSet<Cita> Cita
        {
            get
            {
                if ((_Cita == null))
                {
                    _Cita = base.CreateObjectSet<Cita>("Cita");
                }
                return _Cita;
            }
        }
        private ObjectSet<Cita> _Cita;
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        public ObjectSet<TipoUsuario> TipoUsuario
        {
            get
            {
                if ((_TipoUsuario == null))
                {
                    _TipoUsuario = base.CreateObjectSet<TipoUsuario>("TipoUsuario");
                }
                return _TipoUsuario;
            }
        }
        private ObjectSet<TipoUsuario> _TipoUsuario;
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        public ObjectSet<Usuario> Usuario
        {
            get
            {
                if ((_Usuario == null))
                {
                    _Usuario = base.CreateObjectSet<Usuario>("Usuario");
                }
                return _Usuario;
            }
        }
        private ObjectSet<Usuario> _Usuario;

        #endregion

        #region Métodos AddTo
    
        /// <summary>
        /// Método desusado para agregar un nuevo objeto al EntitySet Cita. Considere la posibilidad de usar el método .Add de la propiedad ObjectSet&lt;T&gt; asociada.
        /// </summary>
        public void AddToCita(Cita cita)
        {
            base.AddObject("Cita", cita);
        }
    
        /// <summary>
        /// Método desusado para agregar un nuevo objeto al EntitySet TipoUsuario. Considere la posibilidad de usar el método .Add de la propiedad ObjectSet&lt;T&gt; asociada.
        /// </summary>
        public void AddToTipoUsuario(TipoUsuario tipoUsuario)
        {
            base.AddObject("TipoUsuario", tipoUsuario);
        }
    
        /// <summary>
        /// Método desusado para agregar un nuevo objeto al EntitySet Usuario. Considere la posibilidad de usar el método .Add de la propiedad ObjectSet&lt;T&gt; asociada.
        /// </summary>
        public void AddToUsuario(Usuario usuario)
        {
            base.AddObject("Usuario", usuario);
        }

        #endregion

    }

    #endregion

    #region Entidades
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="ClinicaWebModel", Name="Cita")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Cita : EntityObject
    {
        #region Método de generador
    
        /// <summary>
        /// Crear un nuevo objeto Cita.
        /// </summary>
        /// <param name="idCita">Valor inicial de la propiedad IdCita.</param>
        /// <param name="cedula">Valor inicial de la propiedad Cedula.</param>
        /// <param name="fechaCita">Valor inicial de la propiedad FechaCita.</param>
        /// <param name="horaCita">Valor inicial de la propiedad HoraCita.</param>
        /// <param name="lugarCita">Valor inicial de la propiedad LugarCita.</param>
        public static Cita CreateCita(global::System.Int32 idCita, global::System.Int32 cedula, global::System.String fechaCita, global::System.String horaCita, global::System.String lugarCita)
        {
            Cita cita = new Cita();
            cita.IdCita = idCita;
            cita.Cedula = cedula;
            cita.FechaCita = fechaCita;
            cita.HoraCita = horaCita;
            cita.LugarCita = lugarCita;
            return cita;
        }

        #endregion

        #region Propiedades primitivas
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 IdCita
        {
            get
            {
                return _IdCita;
            }
            set
            {
                if (_IdCita != value)
                {
                    OnIdCitaChanging(value);
                    ReportPropertyChanging("IdCita");
                    _IdCita = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("IdCita");
                    OnIdCitaChanged();
                }
            }
        }
        private global::System.Int32 _IdCita;
        partial void OnIdCitaChanging(global::System.Int32 value);
        partial void OnIdCitaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Cedula
        {
            get
            {
                return _Cedula;
            }
            set
            {
                OnCedulaChanging(value);
                ReportPropertyChanging("Cedula");
                _Cedula = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("Cedula");
                OnCedulaChanged();
            }
        }
        private global::System.Int32 _Cedula;
        partial void OnCedulaChanging(global::System.Int32 value);
        partial void OnCedulaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String FechaCita
        {
            get
            {
                return _FechaCita;
            }
            set
            {
                OnFechaCitaChanging(value);
                ReportPropertyChanging("FechaCita");
                _FechaCita = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("FechaCita");
                OnFechaCitaChanged();
            }
        }
        private global::System.String _FechaCita;
        partial void OnFechaCitaChanging(global::System.String value);
        partial void OnFechaCitaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String HoraCita
        {
            get
            {
                return _HoraCita;
            }
            set
            {
                OnHoraCitaChanging(value);
                ReportPropertyChanging("HoraCita");
                _HoraCita = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("HoraCita");
                OnHoraCitaChanged();
            }
        }
        private global::System.String _HoraCita;
        partial void OnHoraCitaChanging(global::System.String value);
        partial void OnHoraCitaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String LugarCita
        {
            get
            {
                return _LugarCita;
            }
            set
            {
                OnLugarCitaChanging(value);
                ReportPropertyChanging("LugarCita");
                _LugarCita = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("LugarCita");
                OnLugarCitaChanged();
            }
        }
        private global::System.String _LugarCita;
        partial void OnLugarCitaChanging(global::System.String value);
        partial void OnLugarCitaChanged();

        #endregion

    
        #region Propiedades de navegación
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("ClinicaWebModel", "FK__Cita__Cedula__0519C6AF", "Usuario")]
        public Usuario Usuario
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Usuario>("ClinicaWebModel.FK__Cita__Cedula__0519C6AF", "Usuario").Value;
            }
            set
            {
                ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Usuario>("ClinicaWebModel.FK__Cita__Cedula__0519C6AF", "Usuario").Value = value;
            }
        }
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [BrowsableAttribute(false)]
        [DataMemberAttribute()]
        public EntityReference<Usuario> UsuarioReference
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Usuario>("ClinicaWebModel.FK__Cita__Cedula__0519C6AF", "Usuario");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedReference<Usuario>("ClinicaWebModel.FK__Cita__Cedula__0519C6AF", "Usuario", value);
                }
            }
        }

        #endregion

    }
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="ClinicaWebModel", Name="TipoUsuario")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class TipoUsuario : EntityObject
    {
        #region Método de generador
    
        /// <summary>
        /// Crear un nuevo objeto TipoUsuario.
        /// </summary>
        /// <param name="idTipoUsuario">Valor inicial de la propiedad IdTipoUsuario.</param>
        /// <param name="nombreTipoUsuario">Valor inicial de la propiedad NombreTipoUsuario.</param>
        public static TipoUsuario CreateTipoUsuario(global::System.Int32 idTipoUsuario, global::System.String nombreTipoUsuario)
        {
            TipoUsuario tipoUsuario = new TipoUsuario();
            tipoUsuario.IdTipoUsuario = idTipoUsuario;
            tipoUsuario.NombreTipoUsuario = nombreTipoUsuario;
            return tipoUsuario;
        }

        #endregion

        #region Propiedades primitivas
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Int32> Cedula
        {
            get
            {
                return _Cedula;
            }
            set
            {
                OnCedulaChanging(value);
                ReportPropertyChanging("Cedula");
                _Cedula = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("Cedula");
                OnCedulaChanged();
            }
        }
        private Nullable<global::System.Int32> _Cedula;
        partial void OnCedulaChanging(Nullable<global::System.Int32> value);
        partial void OnCedulaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 IdTipoUsuario
        {
            get
            {
                return _IdTipoUsuario;
            }
            set
            {
                if (_IdTipoUsuario != value)
                {
                    OnIdTipoUsuarioChanging(value);
                    ReportPropertyChanging("IdTipoUsuario");
                    _IdTipoUsuario = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("IdTipoUsuario");
                    OnIdTipoUsuarioChanged();
                }
            }
        }
        private global::System.Int32 _IdTipoUsuario;
        partial void OnIdTipoUsuarioChanging(global::System.Int32 value);
        partial void OnIdTipoUsuarioChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String NombreTipoUsuario
        {
            get
            {
                return _NombreTipoUsuario;
            }
            set
            {
                OnNombreTipoUsuarioChanging(value);
                ReportPropertyChanging("NombreTipoUsuario");
                _NombreTipoUsuario = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("NombreTipoUsuario");
                OnNombreTipoUsuarioChanged();
            }
        }
        private global::System.String _NombreTipoUsuario;
        partial void OnNombreTipoUsuarioChanging(global::System.String value);
        partial void OnNombreTipoUsuarioChanged();

        #endregion

    
        #region Propiedades de navegación
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("ClinicaWebModel", "FK__TipoUsuar__Cedul__09DE7BCC", "Usuario")]
        public Usuario Usuario
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Usuario>("ClinicaWebModel.FK__TipoUsuar__Cedul__09DE7BCC", "Usuario").Value;
            }
            set
            {
                ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Usuario>("ClinicaWebModel.FK__TipoUsuar__Cedul__09DE7BCC", "Usuario").Value = value;
            }
        }
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [BrowsableAttribute(false)]
        [DataMemberAttribute()]
        public EntityReference<Usuario> UsuarioReference
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Usuario>("ClinicaWebModel.FK__TipoUsuar__Cedul__09DE7BCC", "Usuario");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedReference<Usuario>("ClinicaWebModel.FK__TipoUsuar__Cedul__09DE7BCC", "Usuario", value);
                }
            }
        }

        #endregion

    }
    
    /// <summary>
    /// No hay documentación de metadatos disponible.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="ClinicaWebModel", Name="Usuario")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Usuario : EntityObject
    {
        #region Método de generador
    
        /// <summary>
        /// Crear un nuevo objeto Usuario.
        /// </summary>
        /// <param name="cedula">Valor inicial de la propiedad Cedula.</param>
        /// <param name="nombreUsuario">Valor inicial de la propiedad NombreUsuario.</param>
        /// <param name="apellidoUsuario">Valor inicial de la propiedad ApellidoUsuario.</param>
        /// <param name="username">Valor inicial de la propiedad Username.</param>
        /// <param name="contrasena">Valor inicial de la propiedad contrasena.</param>
        /// <param name="edad">Valor inicial de la propiedad Edad.</param>
        public static Usuario CreateUsuario(global::System.Int32 cedula, global::System.String nombreUsuario, global::System.String apellidoUsuario, global::System.String username, global::System.String contrasena, global::System.Int32 edad)
        {
            Usuario usuario = new Usuario();
            usuario.Cedula = cedula;
            usuario.NombreUsuario = nombreUsuario;
            usuario.ApellidoUsuario = apellidoUsuario;
            usuario.Username = username;
            usuario.contrasena = contrasena;
            usuario.Edad = edad;
            return usuario;
        }

        #endregion

        #region Propiedades primitivas
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Cedula
        {
            get
            {
                return _Cedula;
            }
            set
            {
                if (_Cedula != value)
                {
                    OnCedulaChanging(value);
                    ReportPropertyChanging("Cedula");
                    _Cedula = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("Cedula");
                    OnCedulaChanged();
                }
            }
        }
        private global::System.Int32 _Cedula;
        partial void OnCedulaChanging(global::System.Int32 value);
        partial void OnCedulaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String NombreUsuario
        {
            get
            {
                return _NombreUsuario;
            }
            set
            {
                OnNombreUsuarioChanging(value);
                ReportPropertyChanging("NombreUsuario");
                _NombreUsuario = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("NombreUsuario");
                OnNombreUsuarioChanged();
            }
        }
        private global::System.String _NombreUsuario;
        partial void OnNombreUsuarioChanging(global::System.String value);
        partial void OnNombreUsuarioChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String ApellidoUsuario
        {
            get
            {
                return _ApellidoUsuario;
            }
            set
            {
                OnApellidoUsuarioChanging(value);
                ReportPropertyChanging("ApellidoUsuario");
                _ApellidoUsuario = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("ApellidoUsuario");
                OnApellidoUsuarioChanged();
            }
        }
        private global::System.String _ApellidoUsuario;
        partial void OnApellidoUsuarioChanging(global::System.String value);
        partial void OnApellidoUsuarioChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Username
        {
            get
            {
                return _Username;
            }
            set
            {
                OnUsernameChanging(value);
                ReportPropertyChanging("Username");
                _Username = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Username");
                OnUsernameChanged();
            }
        }
        private global::System.String _Username;
        partial void OnUsernameChanging(global::System.String value);
        partial void OnUsernameChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String contrasena
        {
            get
            {
                return _contrasena;
            }
            set
            {
                OncontrasenaChanging(value);
                ReportPropertyChanging("contrasena");
                _contrasena = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("contrasena");
                OncontrasenaChanged();
            }
        }
        private global::System.String _contrasena;
        partial void OncontrasenaChanging(global::System.String value);
        partial void OncontrasenaChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Edad
        {
            get
            {
                return _Edad;
            }
            set
            {
                OnEdadChanging(value);
                ReportPropertyChanging("Edad");
                _Edad = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("Edad");
                OnEdadChanged();
            }
        }
        private global::System.Int32 _Edad;
        partial void OnEdadChanging(global::System.Int32 value);
        partial void OnEdadChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Int32> Telefono
        {
            get
            {
                return _Telefono;
            }
            set
            {
                OnTelefonoChanging(value);
                ReportPropertyChanging("Telefono");
                _Telefono = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("Telefono");
                OnTelefonoChanged();
            }
        }
        private Nullable<global::System.Int32> _Telefono;
        partial void OnTelefonoChanging(Nullable<global::System.Int32> value);
        partial void OnTelefonoChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Direccion
        {
            get
            {
                return _Direccion;
            }
            set
            {
                OnDireccionChanging(value);
                ReportPropertyChanging("Direccion");
                _Direccion = StructuralObject.SetValidValue(value, true);
                ReportPropertyChanged("Direccion");
                OnDireccionChanged();
            }
        }
        private global::System.String _Direccion;
        partial void OnDireccionChanging(global::System.String value);
        partial void OnDireccionChanged();
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Email
        {
            get
            {
                return _Email;
            }
            set
            {
                OnEmailChanging(value);
                ReportPropertyChanging("Email");
                _Email = StructuralObject.SetValidValue(value, true);
                ReportPropertyChanged("Email");
                OnEmailChanged();
            }
        }
        private global::System.String _Email;
        partial void OnEmailChanging(global::System.String value);
        partial void OnEmailChanged();

        #endregion

    
        #region Propiedades de navegación
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("ClinicaWebModel", "FK__Cita__Cedula__0519C6AF", "Cita")]
        public EntityCollection<Cita> Cita
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedCollection<Cita>("ClinicaWebModel.FK__Cita__Cedula__0519C6AF", "Cita");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedCollection<Cita>("ClinicaWebModel.FK__Cita__Cedula__0519C6AF", "Cita", value);
                }
            }
        }
    
        /// <summary>
        /// No hay documentación de metadatos disponible.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("ClinicaWebModel", "FK__TipoUsuar__Cedul__09DE7BCC", "TipoUsuario")]
        public EntityCollection<TipoUsuario> TipoUsuario
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedCollection<TipoUsuario>("ClinicaWebModel.FK__TipoUsuar__Cedul__09DE7BCC", "TipoUsuario");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedCollection<TipoUsuario>("ClinicaWebModel.FK__TipoUsuar__Cedul__09DE7BCC", "TipoUsuario", value);
                }
            }
        }

        #endregion

    }

    #endregion

    
}
