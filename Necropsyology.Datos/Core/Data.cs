using NecropsyOlogy.Core;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace NecropsyOlogy.Datos
{
    public class Data
    {
        #region Propiedades
        public String ValorRef { get; set; }
        public String SP_Nombre { get; set; }
        public String Conexion { get; set; }
        public List<Parametro> Parametros { get; set; }
        #endregion

        #region Metodos Publicos

        /// <summary>
        /// Ejecuta Consulta en base de Datos y devuelve un Dataset
        /// </summary>
        /// <returns>DataSet</returns>
        public DataSet EjecutaConsultaDS()
        {
            String sDat = Seguridad.CodigoEnlace(ValorRef);
            String sConex = Seguridad.DesencriptarCadenaDeCaracteres(ValorRef, "ReneAndCo");
            String Cadena = Seguridad.DesencriptarCadenaDeCaracteres(Conexion, sConex);
            DataSet DS = new DataSet();
            using (SqlConnection Conex = new SqlConnection(Cadena))
            {
                try
                {
                    using (SqlCommand Cmd = new SqlCommand(SP_Nombre, Conex))
                    {
                        Cmd.CommandType = CommandType.StoredProcedure;
                        foreach (Parametro Param in Parametros)
                        {
                            Cmd.Parameters.Add(new SqlParameter(Param.Nombre, Param.Valor));
                        }
                        Conex.Open();
                        using (SqlDataAdapter DA = new SqlDataAdapter(Cmd))
                        {
                            DA.Fill(DS);
                        }
                        Conex.Close();
                    }
                }
                catch (Exception Ex)
                {
                    Notificacion.NotificacionError(Ex," Data en Core "+Cadena);
                    Conex.Close();
                    throw Ex;
                }
            }
            return DS;
        }


        /// <summary>
        /// Ejecuta una consulta NonQuery en Base de Datos 
        /// </summary>
        public void EjecutaConsulta()
        {
            String sConex =  Seguridad.DesencriptarCadenaDeCaracteres(ValorRef, "ReneAndCo");
            String Cadena = Seguridad.DesencriptarCadenaDeCaracteres(Conexion, sConex);
            using (SqlConnection Conex = new SqlConnection(Cadena))
            {
                try
                {
                    using (SqlCommand Cmd = new SqlCommand(SP_Nombre, Conex))
                    {
                        Cmd.CommandType = CommandType.StoredProcedure;
                        foreach (Parametro Param in Parametros)
                        {
                            Cmd.Parameters.Add(new SqlParameter(Param.Nombre, Param.Valor));
                        }
                        Conex.Open();
                        var result = Cmd.ExecuteNonQuery();
                        Conex.Close();
                    }
                }
                catch (Exception Ex)
                {
                    Conex.Close();
                    throw Ex;
                }
            }
        }
        #endregion

        #region Clase Parametros
        public class Parametro
        {
            public String Nombre { get; set; }
            public object Valor { get; set; }
        }
        #endregion
    }
}
