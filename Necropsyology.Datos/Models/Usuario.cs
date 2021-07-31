using System;
using System.Collections.Generic;
using System.Data;
using static NecropsyOlogy.Datos.Data;

namespace NecropsyOlogy.Datos.Models
{
    /// <summary>
    /// Objeto que realiza las funciones del Usuario 
    /// </summary>
    public class Usuario
    {

        #region Propiedades        
        /// <summary>
        /// Correo electronico del Usuario
        /// </summary>
        public String Email { get; set; }
        public String Nombre { get; set; }
        public String Password { get; set; }
        public String CardNo { get; set; }
        public String CodVer { get; set; }
        public String FechaVen { get; set; }
        public int IdLicencia { get; set; }
        public String Opcion { get; set; }
        /// <summary>
        /// cadena de conexion a utilizar para la base de datos
        /// </summary>
        public String Conexion { get; set; }
        /// <summary>
        /// Llave de seguridad para base de datos
        /// </summary>
        public String ValorRef { get; set; }
        public String CodigoVer { get; set; }
        public int IdPerfil { get; set; }
        public Boolean Activo { get; set; }
        public Boolean EmailDisp { get; set; }
        /// <summary>
        /// Codigo del Usuario
        /// </summary>
        public int IdUsuario { get; set; }
        public String Fotografia { get; set; }
        public String LogoTipo { get; set; }
        public String Acronomino { get; set; }
        public String Telefono { get; set; }
        public String Cedula { get; set; }
        #endregion

        #region Metodos Publicos
        public void Agrega()
        {
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Agrega"),
                SP_Nombre = "SP_Usuario",
                ValorRef = ValorRef
            };
            Dat.EjecutaConsulta();

        }

        public void VerificaCorreo(Usuario cUser)
        {
            DataSet DS = new DataSet();
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Verifica"),
                SP_Nombre = "SP_Usuario",
                ValorRef = ValorRef
            };
            DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                if (int.Parse(DS.Tables[0].Rows[0][0].ToString()) > 0)
                    cUser.EmailDisp = false;
                else
                    cUser.EmailDisp = true;
            }
            else
                cUser.EmailDisp = true;
        }

        public Boolean ValidaCodigo()
        {
            DataSet DS = new DataSet();
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("ValidaCodigo"),
                SP_Nombre = "SP_Usuario",
                ValorRef = ValorRef
            };
            DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                if (DS.Tables[0].Rows.Count > 0)
                {
                    Email = DS.Tables[0].Rows[0]["Correo"].ToString();
                    Nombre = DS.Tables[0].Rows[0]["Nombre"].ToString();
                    Password = DS.Tables[0].Rows[0]["Password"].ToString();
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }

        public void Actualiza()
        {
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Actualiza"),
                SP_Nombre = "SP_Usuario",
                ValorRef = ValorRef
            };
            Dat.EjecutaConsulta();
        }


        /// <summary>
        /// Funcion que nos permite hacer logue sobre la aplicacion
        /// </summary>
        /// <returns></returns>
        public Boolean Login()
        {
            DataSet DS = new DataSet();
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Login"),
                SP_Nombre = "SP_Usuario",
                ValorRef = ValorRef
            };
            DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                if (DS.Tables[0].Rows.Count > 0)
                {
                    Email = DS.Tables[0].Rows[0]["Correo"].ToString();
                    Nombre = DS.Tables[0].Rows[0]["Nombre"].ToString();
                    IdPerfil = int.Parse(DS.Tables[0].Rows[0]["IdPerfil"].ToString());
                    IdUsuario = int.Parse(DS.Tables[0].Rows[0]["IdUsuario"].ToString());
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }
        #endregion

        #region Metodos Privados
        private List<Parametro> Parametros(String Opcion)
        {
            List<Parametro> Parametros = new List<Parametro>
            {
                new Parametro { Nombre = "@P_Correo", Valor = Email ?? "" },
                new Parametro { Nombre = "@P_Acronimo", Valor = Acronomino ?? "" },
                new Parametro { Nombre = "@P_Cedula", Valor = Cedula?? "" },
                new Parametro { Nombre = "@P_Telefono", Valor = Telefono ?? "" },
                new Parametro { Nombre = "@P_Fotografia", Valor = Fotografia ?? "" },
                new Parametro { Nombre = "@P_LogoTipo", Valor = LogoTipo?? "" },
                new Parametro { Nombre = "@P_IDUsuario", Valor = IdUsuario },
                new Parametro { Nombre = "@P_Nombre", Valor = Nombre ?? "" },
                new Parametro { Nombre = "@P_Password", Valor = Password ?? "" },
                new Parametro { Nombre = "@P_CodigoVer", Valor = CodigoVer ?? "" },
                new Parametro { Nombre = "@P_CardNo", Valor = CardNo??"" },
                new Parametro { Nombre = "@P_CodVer", Valor = CodVer??"" },
                new Parametro { Nombre = "@P_FechaVen", Valor = FechaVen??"" },
                new Parametro { Nombre = "@P_IdLicencia", Valor = IdLicencia },
                new Parametro { Nombre = "@P_IdPerfil", Valor = IdLicencia },
                new Parametro { Nombre = "@P_Opcion", Valor = Opcion }
            };
            return Parametros;
        }
        #endregion


    }
}
