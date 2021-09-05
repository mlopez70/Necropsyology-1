using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using static Necropsyology.Datos.Data;

namespace Necropsyology.Datos.Models
{
    public class Organizacion
    {
        #region Propiedades
        public int Id_Organizacion { get; set; }
        public int Id_Usuario { get; set; }
        public String Descripcion { get; set; }
        public String Ubicacion { get; set; }
        public String Email { get; set; }
        public String Propietario { get; set; }
        public String Telefono { get; set; }
        public String Opcion { get; set; }
        public String Conexion { get; set; }
        public String ValorRef { get; set; }
        public Boolean Activo { get; set; }
        public String Acronimo { get; set; }
        public int Folio { get; set; }
        #endregion

        #region Metodos Privados     
        private List<Parametro> Parametros(String Opcion)
        {
            List<Parametro> Parametros = new List<Parametro>
            {
               new Parametro{Nombre="@P_Id_Organizacion",Valor=Id_Organizacion},
               new Parametro{Nombre="@P_Acronimo",Valor=Acronimo??""},
               new Parametro{Nombre="@P_Id_Usuario",Valor=Id_Usuario},
               new Parametro { Nombre="@P_Descripcion",Valor=Descripcion??""},
               new Parametro{ Nombre="@P_Email",Valor=Email??""},
               new Parametro{ Nombre="@P_Ubicacion",Valor=Ubicacion??""},
               new Parametro{Nombre="@P_Propietario",Valor=Propietario??""},
               new Parametro{Nombre="@P_Telefono",Valor=Telefono??""},
               new Parametro{Nombre="@P_Activo",Valor=Activo},
               new Parametro { Nombre = "@P_Opcion", Valor = Opcion },
            };
            return Parametros;
        }
        #endregion

        #region Metodos Publicos
        public void Agrega()
        {
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Agregar"),
                SP_Nombre = "SP_TBL_Organizacion",
                ValorRef = ValorRef
            };
            DataSet DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                if (DS.Tables[0].Rows.Count > 0)
                {
                    Id_Organizacion = int.Parse(DS.Tables[0].Rows[0][0].ToString());
                }
            }
            UsrOrg UO = new UsrOrg
            {
                Conexion = Conexion,
                ValorRef = ValorRef,
                Id_Usuario = Id_Usuario,
                Id_Organizacion = Id_Organizacion
            };
            UO.Agrega();
        }

        public void Elimina()
        {
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Elimina"),
                SP_Nombre = "SP_TBL_Organizacion",
                ValorRef = ValorRef
            };
            Dat.EjecutaConsulta();

        }

        public void Busca()
        {
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Agregar"),
                SP_Nombre = "SP_TBL_Organizacion",
                ValorRef = ValorRef
            };
            DataSet DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                if (DS.Tables[0].Rows.Count > 0)
                {
                    Id_Organizacion = int.Parse(DS.Tables[0].Rows[0]["Id_Organizacion"].ToString());
                }
            }
            UsrOrg UO = new UsrOrg
            {
                Conexion = Conexion,
                ValorRef = ValorRef,
                Id_Usuario = Id_Usuario,
                Id_Organizacion = Id_Organizacion
            };
            UO.Agrega();
        }

        public List<Organizacion> Listar()
        {
            List<Organizacion> lOrganizacion = new List<Organizacion>();
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Listar"),
                SP_Nombre = "SP_TBL_Organizacion",
                ValorRef = ValorRef
            };
            DataSet DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                foreach (DataRow Registro in DS.Tables[0].Rows)
                {
                    lOrganizacion.Add(new Organizacion
                    {
                        Activo = Boolean.Parse(Registro["Activo"].ToString()),
                        Id_Organizacion = int.Parse(Registro["Id_Organizacion"].ToString()),
                        Ubicacion = Registro["Ubicacion"].ToString(),
                        Propietario = Registro["Propietario"].ToString(),
                        Telefono = Registro["Telefono"].ToString(),
                        Email = Registro["Email"].ToString(),
                        Descripcion = Registro["Descripcion"].ToString(),
                        Acronimo = Registro["Iniciales"].ToString(),
                        Id_Usuario = 0
                    });
                }
            }
            return lOrganizacion;
        }

        public List<Organizacion> Listar_UsrOrg()
        {
            List<Organizacion> lOrganizacion = new List<Organizacion>();
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("ListarUsr"),
                SP_Nombre = "SP_TBL_Organizacion",
                ValorRef = ValorRef
            };
            DataSet DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                foreach (DataRow Registro in DS.Tables[0].Rows)
                {
                    lOrganizacion.Add(new Organizacion
                    {
                        Activo = Boolean.Parse(Registro["Activo"].ToString()),
                        Id_Organizacion = int.Parse(Registro["Id_Organizacion"].ToString()),
                        Ubicacion = Registro["Ubicacion"].ToString(),
                        Propietario = Registro["Propietario"].ToString(),
                        Telefono = Registro["Telefono"].ToString(),
                        Email = Registro["Email"].ToString(),
                        Descripcion = Registro["Descripcion"].ToString(),
                        Acronimo = Registro["Iniciales"].ToString(),
                        Id_Usuario = 0
                    });
                }
            }
            return lOrganizacion;
        }

        public void Buscar()
        {
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametros("Buscar"),
                SP_Nombre = "SP_TBL_Organizacion",
                ValorRef = ValorRef
            };
            DataSet DS = Dat.EjecutaConsultaDS();
            if (DS.Tables.Count > 0)
            {
                if (DS.Tables[0].Rows.Count > 0)
                {
                    Id_Organizacion = int.Parse(DS.Tables[0].Rows[0]["Id_Organizacion"].ToString());
                    Descripcion = DS.Tables[0].Rows[0]["Descripcion"].ToString();
                    Ubicacion = DS.Tables[0].Rows[0]["Ubicacion"].ToString();
                    Propietario = DS.Tables[0].Rows[0]["Propietario"].ToString();
                    Telefono = DS.Tables[0].Rows[0]["Telefono"].ToString();
                    Email = DS.Tables[0].Rows[0]["Email"].ToString();
                    Acronimo = DS.Tables[0].Rows[0]["Iniciales"].ToString();
                }
            }
        }


        #endregion

        class UsrOrg
        {
            #region Propiedades 
            public String Conexion { get; set; }
            public String ValorRef { get; set; }
            public int Id_Organizacion { get; set; }
            public int Id_Usuario { get; set; }
            public Boolean Activo { get; set; }
            #endregion

            #region Metodos Privados
            private List<Parametro> Parametros(String Opcion)
            {
                List<Parametro> Parametros = new List<Parametro>
            {
               new Parametro{Nombre="@P_Id_Organizacion",Valor=Id_Organizacion},
               new Parametro { Nombre="@P_Id_Usuario",Valor=Id_Usuario},
               new Parametro{Nombre="@P_Activo",Valor=Activo},
               new Parametro { Nombre = "@P_Opcion", Valor = Opcion },
            };
                return Parametros;
            }
            #endregion

            #region Metodos Publicos
            public void Agrega()
            {
                Data Dat = new Data
                {
                    Conexion = Conexion,
                    Parametros = Parametros("Agregar"),
                    SP_Nombre = "SP_UsrOrg",
                    ValorRef = ValorRef
                };
                Dat.EjecutaConsulta();
            }
            #endregion
        }
    }
}
