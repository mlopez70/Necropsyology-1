using NecropsyOlogy.Datos;
using System;
using System.Collections.Generic;
using System.Data;
using static NecropsyOlogy.Datos.Data;

namespace Necropsyology.Datos.Models
{
    public class Necropsia
    {
        #region Propiedades
        public String Conexion { get; set; }
        public String ValorRef { get; set; }
        public int IdCaso { get; set; }
        public DateTime FechaCaso { get; set; }
        public int IdUsuario { get; set; }
        public int IdOrganizacion { get; set; }
        public String IdAnimal { get; set; }
        public int IdEspecie { get; set; }
        public int IdCliente { get; set; }
        public String LogoTipo { get; set; }
        public String Edad { get; set; }
        public String CondCorporal { get; set; }
        public String Organizacion { get; set; }
        public String Historia { get; set; }
        public String Descubrimiento { get; set; }
        public String Diagnostico { get; set; }
        public String Notas { get; set; }
        public String Preguntas { get; set; }
        public String Peso { get; set; }
        public String Color { get; set; }
        public int Sexo { get; set; }
        public Boolean Eutanacia { get; set; }
        public String LugarMuerte { get; set; }
        public DateTime FechaMuerte { get; set; }
        public String SignosEnfer { get; set; }
        public String DiasEnfer { get; set; }
        public String Tratamiento { get; set; }
        public String DiagEnfer { get; set; }
        public String ColorEsque { get; set; }
        public String Edema { get; set; }
        public String Golpe { get; set; }
        public String Laringe { get; set; }
        public String Pulmon { get; set; }
        public String traquea { get; set; }
        public String Toraz { get; set; }
        public String Bronquio { get; set; }
        public String Pleura { get; set; }
        public String Corazon { get; set; }
        public String Vena { get; set; }
        public String Abdomen { get; set; }
        public String Estomago { get; set; }
        public String Rumen { get; set; }
        public String Abomaso { get; set; }
        public String Intestino { get; set; }
        public String Riñon { get; set; }
        public String Vejiga { get; set; }
        public String Higado { get; set; }
        public String Bazo { get; set; }
        public String Pancreas { get; set; }
        public String Biliar { get; set; }
        public String GenitalFemenino { get; set; }
        public String GenitalMasculino { get; set; }
        public String Cerebro { get; set; }
        public String Muestra1 { get; set; }
        public String Muestra2 { get; set; }
        public String Muestra3 { get; set; }
        public String Muestra4 { get; set; }
        public String Muestra5 { get; set; }
        public String Muestra6 { get; set; }
        public String Muestra7 { get; set; }
        public String Muestra8 { get; set; }
        public String DiagPresuntivo { get; set; }
        public String NombreMVZ { get; set; }
        public String Email { get; set; }
        public String Telefono { get; set; }
        public String Cedula { get; set; }
        public String Ubicacion { get; set; }
        public String Propietario { get; set; }
        public String TelOrganizacion { get; set; }
        public String EmailOrg { get; set; }
        public String Observacion { get; set; }
        public String Recomendacion { get; set; }
        public String TExudado { get; set; }
        public String TNeumonia { get; set; }
        public String PDano { get; set; }
        public String NoLote { get; set; }
        public String NoCorral { get; set; }
        public String DEngorda { get; set; }
        public String HLote { get; set; }
        public String Folio { get; set; }
        public String Especie { get; set; }
        public String SexoRep { get; set; }
        public String Imagen { get; set; }
        public int IdCasoImg { get; set; }
        public String ImgPulmon { get; set; }
        public String Seccion1 { get; set; }
        public String Seccion2 { get; set; }
        public String Seccion3 { get; set; }
        public String Seccion4 { get; set; }
        public String Seccion5 { get; set; }
        public String Seccion6 { get; set; }
        public String Seccion7 { get; set; }
        public String Seccion8 { get; set; }
        #endregion

        #region Metodos Privados
        private List<Parametro> Parametro(String Opcion)
        {
            List<Parametro> Parametros = new List<Parametro>
            {
                new Parametro { Nombre = "@P_Id_Caso",Valor=IdCaso },
                new Parametro { Nombre = "@P_Id_Cliente",Valor=IdCliente },
                new Parametro { Nombre = "@P_Fecha", Valor=(FechaCaso.Year==1?DateTime.Now:FechaCaso) },
                new Parametro { Nombre = "@P_Id_Animal",Valor=IdAnimal ??""},
                new Parametro { Nombre = "@P_Folio",Valor=Folio ??""},
                new Parametro { Nombre = "@P_Organizacion",Valor=Organizacion ??""},
                new Parametro { Nombre = "@P_Historia",Valor=Historia ??""},
                new Parametro { Nombre = "@P_Descubrimiento",Valor=Descubrimiento ??""},
                new Parametro { Nombre = "@P_Diagnostico",Valor=Diagnostico??""},
                new Parametro { Nombre = "@P_Notas",Valor=Observacion??""},
                new Parametro { Nombre = "@P_Preguntas",Valor=Preguntas??""},
                new Parametro { Nombre = "@P_Opcion", Valor = Opcion ?? "" },
                new Parametro { Nombre = "@P_IdCaso",Valor=IdCaso },
                new Parametro { Nombre = "@P_FechaCaso", Valor=(FechaCaso.Year==1?DateTime.Now:FechaCaso) },
                new Parametro { Nombre = "@P_IdUsuario",Valor=IdUsuario },
                new Parametro { Nombre = "@P_IdOrganizacion",Valor=IdOrganizacion },
                new Parametro { Nombre = "@P_IdAnimal",Valor=IdAnimal ??""},
                new Parametro { Nombre = "@P_IdEspecie",Valor=IdEspecie },
                new Parametro { Nombre = "@P_Edad",Valor=Edad??"" },
                new Parametro { Nombre = "@P_CondCorporal",Valor=CondCorporal??"" },
                new Parametro { Nombre = "@P_Peso",Valor=Peso ??""},
                new Parametro { Nombre = "@P_Color",Valor=Color ??""},
                new Parametro { Nombre = "@P_Sexo",Valor=Sexo},
                new Parametro { Nombre = "@P_Eutanacia",Valor=Eutanacia },
                new Parametro { Nombre = "@P_LugarMuerte",Valor=LugarMuerte??"" },
                new Parametro { Nombre = "@P_FechaMuerte",Valor=(FechaMuerte.Year==1?DateTime.Now:FechaMuerte) },
                new Parametro { Nombre = "@P_SignosEnfer",Valor=SignosEnfer??"" },
                new Parametro { Nombre = "@P_DiasEnfer",Valor=DiasEnfer??"" },
                new Parametro { Nombre = "@P_Tratamiento",Valor=Tratamiento??"" },
                new Parametro { Nombre = "@P_DiagEnfer",Valor=DiagEnfer??"" },
                new Parametro { Nombre = "@P_ColorEsque",Valor=ColorEsque??"" },
                new Parametro { Nombre = "@P_Edema",Valor=Edema??"" },
                new Parametro { Nombre = "@P_Golpe",Valor=Golpe??"" },
                new Parametro { Nombre = "@P_Laringe",Valor=Laringe??"" },
                new Parametro { Nombre = "@P_Pulmon",Valor=Pulmon??"" },
                new Parametro { Nombre = "@P_traquea",Valor=traquea??"" },
                new Parametro { Nombre = "@P_Toraz",Valor=Toraz??"" },
                new Parametro { Nombre = "@P_Bronquio",Valor=Bronquio??"" },
                new Parametro { Nombre = "@P_Pleura",Valor=Pleura??"" },
                new Parametro { Nombre = "@P_Corazon",Valor=Corazon??"" },
                new Parametro { Nombre = "@P_Vena",Valor=Vena??"" },
                new Parametro { Nombre = "@P_Abdomen",Valor=Abdomen??"" },
                new Parametro { Nombre = "@P_Estomago",Valor=Estomago??"" },
                new Parametro { Nombre = "@P_Rumen",Valor=Rumen??"" },
                new Parametro { Nombre = "@P_Abomaso",Valor=Abomaso??"" },
                new Parametro { Nombre = "@P_Intestino",Valor=Intestino??"" },
                new Parametro { Nombre = "@P_Riñon",Valor=Riñon??"" },
                new Parametro { Nombre = "@P_Vejiga",Valor=Vejiga??"" },
                new Parametro { Nombre = "@P_Higado",Valor=Higado??"" },
                new Parametro { Nombre = "@P_Bazo",Valor=Bazo??"" },
                new Parametro { Nombre = "@P_Pancreas",Valor=Pancreas??"" },
                new Parametro { Nombre = "@P_Biliar",Valor=Biliar??"" },
                new Parametro { Nombre = "@P_GenitalFemenino",Valor=GenitalFemenino??"" },
                new Parametro { Nombre = "@P_GenitalMasculino",Valor=GenitalMasculino??"" },
                new Parametro { Nombre = "@P_Cerebro",Valor=Cerebro??"" },
                new Parametro { Nombre = "@P_Muestra1",Valor=Muestra1??"" },
                new Parametro { Nombre = "@P_Muestra2",Valor=Muestra2??"" },
                new Parametro { Nombre = "@P_Muestra3",Valor=Muestra3??"" },
                new Parametro { Nombre = "@P_Muestra4",Valor=Muestra4??"" },
                new Parametro { Nombre = "@P_Muestra5",Valor=Muestra5??"" },
                new Parametro { Nombre = "@P_Muestra6",Valor=Muestra6??"" },
                new Parametro { Nombre = "@P_Muestra7",Valor=Muestra7??"" },
                new Parametro { Nombre = "@P_Muestra8",Valor=Muestra8??"" },
                new Parametro { Nombre = "@P_DiagPresuntivo",Valor=DiagPresuntivo??"" },
                new Parametro { Nombre = "@P_NombreMVZ", Valor = NombreMVZ?? "" },
                new Parametro { Nombre = "@P_Email", Valor = Email?? "" },
                new Parametro { Nombre = "@P_Telefono", Valor = Telefono?? "" },
                new Parametro { Nombre = "@P_Cedula", Valor = Cedula?? "" },
                new Parametro { Nombre = "@P_EmailOrg", Valor = EmailOrg?? "" },
                new Parametro { Nombre = "@P_Propietario", Valor = Propietario?? "" },
                new Parametro { Nombre = "@P_TelOrganizacion", Valor = TelOrganizacion?? "" },
                new Parametro { Nombre = "@P_Ubicacion", Valor = Ubicacion?? "" },
                new Parametro { Nombre = "@P_Recomendacion",Valor=Recomendacion ??""},
                new Parametro { Nombre = "@P_Observacion",Valor=Observacion ??""},
                new Parametro { Nombre = "@P_TExudado",Valor=TExudado??""},
                new Parametro { Nombre = "@P_TNeumonia",Valor=TNeumonia??""},
                new Parametro { Nombre = "@P_PDano",Valor=PDano??""},
                new Parametro { Nombre = "@P_NoLote",Valor=NoLote??""},
                new Parametro { Nombre = "@P_NoCorral",Valor=NoCorral??""},
                new Parametro { Nombre = "@P_DEngorda",Valor=DEngorda??""},
                new Parametro { Nombre = "@P_HLote",Valor=HLote??""},
                new Parametro { Nombre = "@P_LogoTipo",Valor=LogoTipo??""},
                new Parametro { Nombre = "@P_Especie",Valor=Especie??""},
                new Parametro { Nombre = "@P_ImgPulmon",Valor=ImgPulmon??""},
                new Parametro { Nombre = "@P_Seccion1",Valor=Seccion1??""},
                new Parametro { Nombre = "@P_Seccion2",Valor=Seccion2??""},
                new Parametro { Nombre = "@P_Seccion3",Valor=Seccion3??""},
                new Parametro { Nombre = "@P_Seccion4",Valor=Seccion4??""},
                new Parametro { Nombre = "@P_Seccion5",Valor=Seccion5??""},
                new Parametro { Nombre = "@P_Seccion6",Valor=Seccion6??""},
                new Parametro { Nombre = "@P_Seccion7",Valor=Seccion7??""},
                new Parametro { Nombre = "@P_Seccion8",Valor=Seccion8??""},
            };
            return Parametros;
        }


        private List<Parametro> ParamImg(String Opcion)
        {
            List<Parametro> Parametros = new List<Parametro>
            {
                new Parametro { Nombre = "@P_IdCaso",Valor=IdCaso },
                new Parametro { Nombre = "@P_imagen",Valor=Imagen },
                new Parametro { Nombre = "@P_IdImgCaso",Valor=IdCasoImg },
                new Parametro { Nombre = "@P_Opcion", Valor = Opcion ?? "" },
            };
            return Parametros;
        }
        #endregion

        #region Metodos Publicos
        public void Agregar()
        {
            try
            {

                Data Dat = new Data
                {
                    Conexion = Conexion,
                    Parametros = Parametro("Agregar"),
                    SP_Nombre = "SP_Reporte",
                    ValorRef = ValorRef
                };
                DataSet DS = Dat.EjecutaConsultaDS();
                if (DS.Tables.Count > 0)
                {
                    DataRow Registro = DS.Tables[0].Rows[0];
                    Folio = Registro[0].ToString();
                    IdCaso = int.Parse(Registro[1].ToString());
                }
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }


        public DataSet Listado()
        {
            Data Dat = new Data
            {
                Conexion = Conexion,
                Parametros = Parametro("Listar"),
                SP_Nombre = "SP_Reporte",
                ValorRef = ValorRef
            };
            DataSet DS = Dat.EjecutaConsultaDS();
            return DS;
        }


        public void Actualiza()
        {
            try
            {
                Data Dat = new Data
                {
                    Conexion = Conexion,
                    Parametros = Parametro("Actualizar"),
                    SP_Nombre = "SP_Reporte",
                    ValorRef = ValorRef
                };
                Dat.EjecutaConsulta();
            }
            catch (Exception Ex)
            {

                //Notificacion.NotificacionError(Ex, "Reporte Caso ");
            }
        }


        public void Consulta_Caso()
        {
            try
            {
                Data Dat = new Data
                {
                    Conexion = Conexion,
                    Parametros = Parametro("Consulta"),
                    SP_Nombre = "SP_Reporte",
                    ValorRef = ValorRef
                };
                DataSet DS = Dat.EjecutaConsultaDS();
                if (DS.Tables.Count > 0)
                {
                    DataRow Registro = DS.Tables[0].Rows[0];

                    Abdomen = Registro["Abdomen"].ToString();
                    Abomaso = Registro["Abomaso"].ToString();
                    Bazo = Registro["Bazo"].ToString();
                    Biliar = Registro["Biliar"].ToString();
                    Bronquio = Registro["Bronquio"].ToString();
                    Cedula = Registro["Cedula"].ToString();
                    Cerebro = Registro["Cerebro"].ToString();
                    Color = Registro["Color"].ToString();
                    ColorEsque = Registro["ColorEsque"].ToString();
                    CondCorporal = Registro["CondCorporal"].ToString();
                    Corazon = Registro["Corazon"].ToString();
                    Diagnostico = Registro["Diagnostico"].ToString();
                    DiasEnfer = Registro["DiasEnfer"].ToString();
                    DiagEnfer = Registro["DiagEnfer"].ToString();
                    DiagPresuntivo = Registro["DiagPresuntivo"].ToString();
                    Descubrimiento = Registro["Descubrimiento"].ToString();
                    Edad = Registro["Edad"].ToString();
                    Edema = Registro["Edema"].ToString();
                    Email = Registro["Correo"].ToString();
                    EmailOrg = Registro["Email"].ToString();
                    Estomago = Registro["Estomago"].ToString();
                    Eutanacia = Boolean.Parse(Registro["Eutanacia"].ToString());
                    Especie = Registro["Especie"].ToString();
                    FechaCaso = DateTime.Parse(Registro["Fecha"].ToString());
                    FechaMuerte = DateTime.Parse(Registro["FechaMuerte"].ToString());
                    Folio = Registro["Folio"].ToString();
                    GenitalFemenino = Registro["GenitalFemenino"].ToString();
                    GenitalMasculino = Registro["GenitalMAsculino"].ToString();
                    Golpe = Registro["Golpe"].ToString();
                    Higado = Registro["Higado"].ToString();
                    Historia = Registro["Historia"].ToString();
                    IdAnimal = Registro["Id_Animal"].ToString();
                    IdCaso = int.Parse(Registro["Id_Caso"].ToString());
                    IdEspecie = int.Parse(Registro["IdEspecie"].ToString());
                    IdOrganizacion = int.Parse(Registro["IdOrganizacion"].ToString());
                    IdUsuario = int.Parse(Registro["Id_Cliente"].ToString());
                    Intestino = Registro["Intestino"].ToString();
                    Laringe = Registro["Laringe"].ToString();
                    LogoTipo = Registro["Logotipo"].ToString();
                    LugarMuerte = Registro["LugarMuerte"].ToString();
                    Muestra1 = Registro["Muestra1"].ToString();
                    Muestra2 = Registro["Muestra2"].ToString();
                    Muestra3 = Registro["Muestra3"].ToString();
                    Muestra4 = Registro["Muestra4"].ToString();
                    Muestra5 = Registro["Muestra5"].ToString();
                    Muestra6 = Registro["Muestra6"].ToString();
                    Muestra7 = Registro["Muestra7"].ToString();
                    Muestra8 = Registro["Muestra8"].ToString();
                    NombreMVZ = Registro["Nombre"].ToString();
                    Notas = Registro["Notas"].ToString();
                    Observacion = Registro["Observacion"].ToString();
                    Organizacion = Registro["NomOrg"].ToString();
                    Pancreas = Registro["Pancreas"].ToString();
                    Peso = Registro["Peso"].ToString();
                    Pleura = Registro["Pleura"].ToString();
                    Propietario = Registro["Propietario"].ToString();
                    Pulmon = Registro["Pulmon"].ToString();
                    Preguntas = Registro["Preguntas"].ToString();
                    Recomendacion = Registro["Recomendacion"].ToString();
                    Riñon = Registro["Riñon"].ToString();
                    Rumen = Registro["Rumen"].ToString();
                    Sexo = int.Parse(Registro["Sexo"].ToString());
                    SignosEnfer = Registro["SignosEnfer"].ToString();
                    Telefono = Registro["Telefono"].ToString();
                    TelOrganizacion = Registro["TelOrga"].ToString();
                    Toraz = Registro["Toraz"].ToString();
                    traquea = Registro["Traquea"].ToString();
                    Tratamiento = Registro["Tratamiento"].ToString();
                    Ubicacion = Registro["Ubicacion"].ToString();
                    Vejiga = Registro["Vejiga"].ToString();
                    Vena = Registro["Vena"].ToString();
                    TExudado = Registro["TExudado"].ToString();
                    TNeumonia = Registro["TNeumonia"].ToString();
                    PDano = Registro["PDano"].ToString();
                    NoLote = Registro["NoLote"].ToString();
                    NoCorral = Registro["NoCorral"].ToString();
                    DEngorda = Registro["DEngorda"].ToString();
                    HLote = Registro["HLote"].ToString();
                    SexoRep = Registro["SexoRep"].ToString();
                    ImgPulmon = Registro["ImgPulmon"].ToString();
                    Seccion1 = Registro["Seccion1"].ToString();
                    Seccion2 = Registro["Seccion2"].ToString();
                    Seccion3 = Registro["Seccion3"].ToString();
                    Seccion4 = Registro["Seccion4"].ToString();
                    Seccion5 = Registro["Seccion5"].ToString();
                    Seccion6 = Registro["Seccion6"].ToString();
                    Seccion7 = Registro["Seccion7"].ToString();
                    Seccion8 = Registro["Seccion8"].ToString();
                }
            }
            catch (Exception Ex)
            { throw Ex; }
        }


        public void ConsCasoFolio()
        {
            try
            {
                Data Dat = new Data
                {
                    Conexion = Conexion,
                    Parametros = Parametro("ConsultaFolio"),
                    SP_Nombre = "SP_Reporte",
                    ValorRef = ValorRef
                };
                DataSet DS = Dat.EjecutaConsultaDS();
                if (DS.Tables.Count > 0)
                {
                    DataRow Registro = DS.Tables[0].Rows[0];

                    Abdomen = Registro["Abdomen"].ToString();
                    Abomaso = Registro["Abomaso"].ToString();
                    Bazo = Registro["Bazo"].ToString();
                    Biliar = Registro["Biliar"].ToString();
                    Bronquio = Registro["Bronquio"].ToString();
                    Cedula = Registro["Cedula"].ToString();
                    Cerebro = Registro["Cerebro"].ToString();
                    Color = Registro["Color"].ToString();
                    ColorEsque = Registro["ColorEsque"].ToString();
                    CondCorporal = Registro["CondCorporal"].ToString();
                    Corazon = Registro["Corazon"].ToString();
                    Diagnostico = Registro["Diagnostico"].ToString();
                    DiasEnfer = Registro["DiasEnfer"].ToString();
                    DiagEnfer = Registro["DiagEnfer"].ToString();
                    DiagPresuntivo = Registro["DiagPresuntivo"].ToString();
                    Descubrimiento = Registro["Descubrimiento"].ToString();
                    Edad = Registro["Edad"].ToString();
                    Edema = Registro["Edema"].ToString();
                    Email = Registro["Correo"].ToString();
                    EmailOrg = Registro["Email"].ToString();
                    Estomago = Registro["Estomago"].ToString();
                    Eutanacia = Boolean.Parse(Registro["Eutanacia"].ToString());
                    Especie = Registro["Especie"].ToString();
                    FechaCaso = DateTime.Parse(Registro["Fecha"].ToString());
                    FechaMuerte = DateTime.Parse(Registro["FechaMuerte"].ToString());
                    Folio = Registro["Folio"].ToString();
                    GenitalFemenino = Registro["GenitalFemenino"].ToString();
                    GenitalMasculino = Registro["GenitalMAsculino"].ToString();
                    Golpe = Registro["Golpe"].ToString();
                    Higado = Registro["Higado"].ToString();
                    Historia = Registro["Historia"].ToString();
                    IdAnimal = Registro["Id_Animal"].ToString();
                    IdCliente = int.Parse(Registro["Id_Cliente"].ToString());
                    IdCaso = int.Parse(Registro["Id_Caso"].ToString());
                    IdEspecie = int.Parse(Registro["IdEspecie"].ToString());
                    IdOrganizacion = int.Parse(Registro["IdOrganizacion"].ToString());
                    IdUsuario = int.Parse(Registro["Id_Cliente"].ToString());
                    Intestino = Registro["Intestino"].ToString();
                    Laringe = Registro["Laringe"].ToString();
                    LogoTipo = Registro["Logotipo"].ToString();
                    LugarMuerte = Registro["LugarMuerte"].ToString();
                    Muestra1 = Registro["Muestra1"].ToString();
                    Muestra2 = Registro["Muestra2"].ToString();
                    Muestra3 = Registro["Muestra3"].ToString();
                    Muestra4 = Registro["Muestra4"].ToString();
                    Muestra5 = Registro["Muestra5"].ToString();
                    Muestra6 = Registro["Muestra6"].ToString();
                    Muestra7 = Registro["Muestra7"].ToString();
                    Muestra8 = Registro["Muestra8"].ToString();
                    NombreMVZ = Registro["Nombre"].ToString();
                    Notas = Registro["Notas"].ToString();
                    Observacion = Registro["Observacion"].ToString();
                    Organizacion = Registro["NomOrg"].ToString();
                    Pancreas = Registro["Pancreas"].ToString();
                    Peso = Registro["Peso"].ToString();
                    Pleura = Registro["Pleura"].ToString();
                    Propietario = Registro["Propietario"].ToString();
                    Pulmon = Registro["Pulmon"].ToString();
                    Preguntas = Registro["Preguntas"].ToString();
                    Recomendacion = Registro["Recomendacion"].ToString();
                    Riñon = Registro["Riñon"].ToString();
                    Rumen = Registro["Rumen"].ToString();
                    Sexo = int.Parse(Registro["Sexo"].ToString());
                    SignosEnfer = Registro["SignosEnfer"].ToString();
                    Telefono = Registro["Telefono"].ToString();
                    TelOrganizacion = Registro["TelOrga"].ToString();
                    Toraz = Registro["Toraz"].ToString();
                    traquea = Registro["Traquea"].ToString();
                    Tratamiento = Registro["Tratamiento"].ToString();
                    Ubicacion = Registro["Ubicacion"].ToString();
                    Vejiga = Registro["Vejiga"].ToString();
                    Vena = Registro["Vena"].ToString();
                    TExudado = Registro["TExudado"].ToString();
                    TNeumonia = Registro["TNeumonia"].ToString();
                    PDano = Registro["PDano"].ToString();
                    NoLote = Registro["NoLote"].ToString();
                    NoCorral = Registro["NoCorral"].ToString();
                    DEngorda = Registro["DEngorda"].ToString();
                    HLote = Registro["HLote"].ToString();
                    SexoRep = Registro["SexoRep"].ToString();
                    ImgPulmon = Registro["ImgPulmon"].ToString();
                    Seccion1 = Registro["Seccion1"].ToString();
                    Seccion2 = Registro["Seccion2"].ToString();
                    Seccion3 = Registro["Seccion3"].ToString();
                    Seccion4 = Registro["Seccion4"].ToString();
                    Seccion5 = Registro["Seccion5"].ToString();
                    Seccion6 = Registro["Seccion6"].ToString();
                    Seccion7 = Registro["Seccion7"].ToString();
                    Seccion8 = Registro["Seccion8"].ToString();
                }
            }
            catch (Exception Ex)
            {
                throw Ex;
            }          
        }


        public void Save_Img_Sel()
        {
            try
            {
                Data Dat = new Data
                {
                    Conexion = Conexion,
                    Parametros = ParamImg("Agrega"),
                    SP_Nombre = "SP_ImgCaso",
                    ValorRef = ValorRef
                };
                DataSet DS = Dat.EjecutaConsultaDS();
            }
            catch (Exception Ex)
            {
                throw Ex;
            }

        }


        public String Lista_Img()
        {
            String sReturn = String.Empty;
            try
            {
                Data Dat = new Data
                {
                    Conexion = Conexion,
                    Parametros = ParamImg("Listar"),
                    SP_Nombre = "SP_ImgCaso",
                    ValorRef = ValorRef
                };
                DataSet DS = Dat.EjecutaConsultaDS();
                foreach (DataRow Registro in DS.Tables[0].Rows)
                {
                    sReturn += Registro["Imagen"].ToString() + "|";
                }
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            return sReturn;
        }


        public void EliminaRegistro()
        {            
            try
            {
                Data Dat = new Data
                {
                    Conexion = Conexion,
                    Parametros = ParamImg("EliminaRegistro"),
                    SP_Nombre = "SP_ImgCaso",
                    ValorRef = ValorRef
                };
                DataSet DS = Dat.EjecutaConsultaDS();
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }
        #endregion
    }
}
