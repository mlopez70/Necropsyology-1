//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Necropsyology.Core.Recurso {
    using System;
    
    
    /// <summary>
    ///   Clase de recurso fuertemente tipado, para buscar cadenas traducidas, etc.
    /// </summary>
    // StronglyTypedResourceBuilder generó automáticamente esta clase
    // a través de una herramienta como ResGen o Visual Studio.
    // Para agregar o quitar un miembro, edite el archivo .ResX y, a continuación, vuelva a ejecutar ResGen
    // con la opción /str o recompile su proyecto de VS.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "16.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    public class RecursoGral {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal RecursoGral() {
        }
        
        /// <summary>
        ///   Devuelve la instancia de ResourceManager almacenada en caché utilizada por esta clase.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("Necropsyology.Core.Recurso.RecursoGral", typeof(RecursoGral).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Reemplaza la propiedad CurrentUICulture del subproceso actual para todas las
        ///   búsquedas de recursos mediante esta clase de recurso fuertemente tipado.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a Required field.
        /// </summary>
        public static string CampoRequerido {
            get {
                return ResourceManager.GetString("CampoRequerido", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a Invalid email address.
        /// </summary>
        public static string CorreoNoValido {
            get {
                return ResourceManager.GetString("CorreoNoValido", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a Please wait.
        /// </summary>
        public static string MensajeEspera {
            get {
                return ResourceManager.GetString("MensajeEspera", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a Enter the user&apos;s password.
        /// </summary>
        public static string PassReq {
            get {
                return ResourceManager.GetString("PassReq", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a List Errors.
        /// </summary>
        public static string SumarioError {
            get {
                return ResourceManager.GetString("SumarioError", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a wrong username or password.
        /// </summary>
        public static string UserNoExiste {
            get {
                return ResourceManager.GetString("UserNoExiste", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a Enter the user&apos;s email.
        /// </summary>
        public static string UsuarioReq {
            get {
                return ResourceManager.GetString("UsuarioReq", resourceCulture);
            }
        }
    }
}
