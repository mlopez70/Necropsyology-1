using System;
using System.Collections.Generic;
using System.Data;
using static Necropsyology.Datos.Data;

namespace Necropsyology.Datos.Models
{
    public class Especie
    {
        #region Propiedades
        public String Opcion { get; set; }
        public String Conexion { get; set; }
        public String ValorRef { get; set; }
        public int Id_Especie { get; set; }
        public String Descripcion { get; set; }
        public Boolean Activo { get; set; }
        #endregion

        #region Metodos Privados     
        private List<Parametro> Parametros(String Opcion)
        {
            List<Parametro> Parametros = new List<Parametro>
            {
               new Parametro { Nombre="@P_Descripcion",Valor=Descripcion??""},
               new Parametro{ Nombre="@P_Id_Especie",Valor=Id_Especie},
               new Parametro{ Nombre="@P_Activo",Valor=Activo},
                new Parametro { Nombre = "@P_Opcion", Valor = Opcion },

            };
            return Parametros;
        }
        #endregion

        #region Metodos Publicos
        public List<Especie> Listar()
        {
            List<Especie> lEspecie = new List<Especie>();
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Listar"),
                SP_Nombre = "SP_TBL_Especie",
                ValorRef = ValorRef
            };
            DataSet DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                foreach (DataRow Registro in DS.Tables[0].Rows)
                {
                    lEspecie.Add(new Especie
                    {
                        Id_Especie = int.Parse(Registro["Id_Especie"].ToString()),
                        Descripcion = Registro["Descripcion"].ToString()
                    });
                }
            }
            return lEspecie;
        }
        #endregion
    }
}
