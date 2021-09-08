<%@ Page Title="" Language="C#" MasterPageFile="~/Necros.Master" AutoEventWireup="true" CodeBehind="NecroGeneral.aspx.cs" Inherits="Necropsyology.Admin.NecroGeneral" %>

<%@ Register Src="~/Ctrls/ReporteNecros/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Ctrls/ReporteNecros/WebReporteMVZ.ascx" TagPrefix="uc1" TagName="WebReporteMVZ" %>
<%@ Register Src="~/Ctrls/ReporteNecros/CtrlOrganizacion.ascx" TagPrefix="uc1" TagName="CtrlOrganizacion" %>
<%@ Register Src="~/Ctrls/ReporteNecros/CtrlPaciente.ascx" TagPrefix="uc1" TagName="CtrlPaciente" %>
<%@ Register Src="~/Ctrls/ReporteNecros/CtrlHistClinica.ascx" TagPrefix="uc1" TagName="CtrlHistClinica" %>
<%@ Register Src="~/Ctrls/ReporteNecros/CtrlHallazgo.ascx" TagPrefix="uc1" TagName="CtrlHallazgo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- ReporteGEneral--%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="TablaContenedora">
                <tr>
                    <td colspan="3">
                        <uc1:Header runat="server" ID="Header" />
                    </td>

                </tr>
                <tr class="RenglonSeparador">
                    <td></td>
                </tr>
                <tr>
                    <td class="Columna45">
                        <uc1:WebReporteMVZ runat="server" ID="WebReporteMVZ" />
                    </td>
                    <td class="ColumnaSeparador"></td>
                    <td class="Columna45">
                        <uc1:CtrlOrganizacion runat="server" ID="CtrlOrganizacion" />
                    </td>
                </tr>              
                <tr>
                    <td colspan="3">
                        <div class="DivPaciente">
                            <uc1:CtrlPaciente runat="server" ID="CtrlPaciente" />
                        </div>
                    </td>
                </tr>               
                <tr>
                    <td colspan="3">
                        <div class="DivHistoria">
                            <uc1:CtrlHistClinica runat="server" ID="CtrlHistClinica" />
                        </div>
                    </td>
                </tr>
                 <tr>
                    <td colspan="3">
                        <div class="DivHallazgo">
                            <uc1:CtrlHallazgo runat="server" ID="CtrlHallazgo" />
                        </div>
                    </td>
                </tr>
                <tr class="RenglonSeparador">
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table class="TablaBotoneria">
                            <tr>
                                <td>
                                    <asp:Button ID="BtnLogin" runat="server" class="BtnGuardar" Text="Prueba de click" OnClick="BtnLogin_Click" /></td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" class="BtnAceptar" Text="Prueba de click" OnClick="BtnLogin_Click" /></td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" class="BtnAceptar" Text="Prueba de click" OnClick="BtnLogin_Click" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>



    <%--  <asp:Panel runat="server" ID="PanelREportes" >
        
       
        <div class="container">
            <div class="row mt-3">
                <div class="row col-md-6 pl-3">
                    <div class="col-md-2">
                        <strong>
                            <asp:Label ID="Label16" runat="server" Text="# Caso:" CssClass="label-color"></asp:Label></strong>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="lblIDCasoE" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="LblFGeneral" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-12 text-right">
                        <strong>
                            <asp:Label ID="Label22" runat="server" Text="Fecha: " CssClass="label-color"></asp:Label></strong>
                        <asp:Label ID="LblFechaE" runat="server" Text="" CssClass=""></asp:Label>
                    </div>

                </div>
                <div class="col-md-12 mt-3">
                    <div class="card_Edit card-default card-outline">
                        <div class="card-header" style="background-color: #274583;">
                            <div class="text-center col-12">
                                <h3 style="color: white;">DATOS DEL MVZ</h3>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-bordered">

                                <tbody>
                                    <tr>
                                        <td rowspan="2" class="text-center" style="border: #274583 1px solid;">
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/catcirugia1.png" Style="position: relative; width: 150px; height: auto; margin: 0 auto;" />
                                        </td>
                                        <td class="label-color" style="border: #274583 1px solid;">Nombre
                         <asp:TextBox ID="txtClient" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="border: #274583 1px solid;">E-mail
                        <asp:TextBox ID="txtEmail" Text="" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td class="label-color" style="border: #274583 1px solid;">Teléfono
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>

                                        <td class="label-color" style="border: #274583 1px solid;"># Cédula profesional
                           <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>

                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row col-md-12 mt-3">
                    <div class="col-md-6">
                        <div class="card_Edit card-default card-outline">
                            <div class="card-header" style="background-color: #ffc000;">
                                <div class="text-center col-12">
                                    <h3 class="label-color">DATOS GENERALES</h3>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <table class="table table-bordered">

                                    <tbody>
                                        <tr>
                                            <td class="label-color" style="background-color: #fff2cc; border: #ffc000 1px solid;">Nombre de Organización / Clínica:
                                                                               <asp:TextBox ID="txtOrganizacion" runat="server" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label-color" style="background-color: #fff2cc; border: #ffc000 1px solid;">Ubicación de Organización / Clínica:
                       <asp:TextBox ID="TxtUbicaOrg" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label-color" style="background-color: #fff2cc; border: #ffc000 1px solid;">Nombre del Propietario:
                       <asp:TextBox ID="TxtProp" runat="server" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label-color" style="background-color: #fff2cc; border: #ffc000 1px solid;">Teléfono:
                                                                            <asp:TextBox ID="TxtTelOrg" runat="server" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label-color" style="background-color: #fff2cc; border: #ffc000 1px solid;">E-mail:
                       <asp:TextBox ID="TxtEmailOrg" runat="server" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card_Edit card-default card-outline">
                            <div class="card-header" style="background-color: #4472c4;">
                                <div class="text-center col-12">
                                    <h3 style="color: white;">RESEÑA DEL PACIENTE</h3>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <table class="table table-bordered">

                                    <tbody>
                                        <tr>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Identificación del animal: 
                                                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>
                                            </td>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Especie / Raza:
                                                                                <asp:DropDownList ID="DdlEspecie" runat="server"></asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Edad:
                                                                                <asp:TextBox ID="txcontroltedad" runat="server" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>
                                            </td>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Condición Corporal:
                                                                               <asp:TextBox ID="txtCondicionC" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Peso: 
                                                                                  <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>
                                            </td>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Color:
                                                                               <asp:TextBox ID="txtControlColor" runat="server" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Sexo: 
                                                                                 <asp:DropDownList ID="DdlSexo" runat="server">
                                                                                     <asp:ListItem Value="0"> Seleccione una opción</asp:ListItem>
                                                                                     <asp:ListItem Value="1">Hembra</asp:ListItem>
                                                                                     <asp:ListItem Value="2">Macho</asp:ListItem>
                                                                                 </asp:DropDownList>
                                            </td>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Eutanasia:
                                                                                <br />
                                                <asp:RadioButtonList ID="RBEuta" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="true">Si</asp:ListItem>
                                                    <asp:ListItem Value="false">No</asp:ListItem>
                                                </asp:RadioButtonList>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Lugar de muerte: 
                                                                               <asp:TextBox ID="txtLugarDeMuerte" Text="" TextMode="MultiLine" runat="server" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>
                                            </td>
                                            <td class="label-color" style="background-color: #ddebf7; border: #4472c4 1px solid;">Fecha de muerte:
                                                                                <table style="width: 100%">
                                                                                    <tr>

                                                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                                                                            <ContentTemplate>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtFechaMuerte" Text="" runat="server" CssClass="form-control" Style="background-color: #ddebf7;" Enabled="False" Width="100px"></asp:TextBox></td>
                                                                                                <td>
                                                                                                    <asp:Button ID="BtnCal" runat="server" Text="...." /></td>
                                                                                            </ContentTemplate>
                                                                                            <Triggers>
                                                                                                <asp:AsyncPostBackTrigger ControlID="RBEuta" EventName="SelectedIndexChanged" />
                                                                                            </Triggers>
                                                                                        </asp:UpdatePanel>

                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Calendar ID="CFecMuerte" runat="server" Visible="false"></asp:Calendar>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>




                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 mt-3">
                    <div class="card_Edit card-default card-outline">
                        <div class="card-header" style="background-color: #70ad47;">
                            <div class="text-center col-12">
                                <h3 style="color: white;">ANTECEDENTES DE ENFERMEDAD / HISTORIA CLÍNICA </h3>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-bordered">

                                <tbody>
                                    <tr>
                                        <td class="label-color" colspan="2" style="background-color: #e2efda; border: #70ad47 1px solid;">Signos:
                                                                             <asp:TextBox ID="txtDescubrimiento" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" colspan="2" style="background-color: #e2efda; border: #70ad47 1px solid;">Días de enfermedad: 
                       <asp:TextBox ID="txtDìasEnf" runat="server" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="label-color" style="background-color: #e2efda; border: #70ad47 1px solid;">Tratamientos:
                                                                              <asp:TextBox ID="txtratamientos" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                        </td>
                                        <td colspan="2" class="label-color" style="background-color: #e2efda; border: #70ad47 1px solid;">Diagnóstico clínico:
                                                                             <asp:TextBox ID="txtDiagnostico" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td colspan="4" class="label-color" style="background-color: #e2efda; border: #70ad47 1px solid;">Historial del animal:
                                                                             <asp:TextBox ID="txtHistorialAnimal" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 mt-3">
                    <div class="card_Edit card-default card-outline">
                        <div class="card-header" style="background-color: #274583;">
                            <div class="text-center col-12">
                                <h3 style="color: white;">HALLAZGOS DE LA NECROPSIA</h3>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td class="label-color text-center" colspan="4" style="background-color: #ddebf7; border: #274583 1px solid;"><strong>SISTEMA MUSCULOESQUELÉTICO</strong> </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color" style="background-color: #ddebf7; border: #274583 1px solid;">Color:
                                                                              <asp:TextBox ID="txtColorHAllazgo" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #ddebf7; border: #274583 1px solid;">Edema:
                                                                              <asp:TextBox ID="txtEdema" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" colspan="2" style="background-color: #ddebf7; border: #274583 1px solid;">Daños físicos: Fracturas / Golpes:
                                                                             <asp:TextBox ID="txtDañosF" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color" colspan="4" style="background-color: #ddebf7; border: #274583 1px solid;">Hallazgo general:
                                                                              <asp:TextBox ID="txtAllazgoG" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #ddebf7;"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color text-center" colspan="4" style="background-color: #fff2cc; border: #274583 1px solid;"><strong>SISTEMA RESPIRATORIO</strong> </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color" colspan="2" style="background-color: #fff2cc; border: #274583 1px solid;">Laringe:
                                                                            
                                                    <asp:TextBox ID="txtLaringe" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" colspan="2" style="background-color: #fff2cc; border: #274583 1px solid;">Pulmones:
                                                                                <asp:TextBox ID="txtPulmones" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="label-color" colspan="2" style="background-color: #fff2cc; border: #274583 1px solid;">Tráquea:
                                                                               <asp:TextBox ID="txtTráquea" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" colspan="2" style="background-color: #fff2cc; border: #274583 1px solid;">Cavidad Torácica:
                                                                              <asp:TextBox ID="txtCavidadTorácica" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="label-color" colspan="2" style="background-color: #fff2cc; border: #274583 1px solid;">Bronquios:
                                                                                <asp:TextBox ID="txtControlBronquios" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" colspan="2" style="background-color: #fff2cc; border: #274583 1px solid;">Pleura:
                                                                                   <asp:TextBox ID="txtPleura" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #fff2cc;"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="label-color text-center" colspan="4" style="background-color: #efbfa4; border: #274583 1px solid;"><strong>SISTEMA CIRCULATORIO</strong> </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color" colspan="2" style="background-color: #efbfa4; border: #274583 1px solid;">Corazón:
                                                                              <asp:TextBox ID="txtCorazón" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #efbfa4;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" colspan="2" style="background-color: #efbfa4; border: #274583 1px solid;">Arterias y venas (vasos mayores):
                                                                               <asp:TextBox ID="txtArterias" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #efbfa4;"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="label-color text-center" colspan="4" style="background-color: #e2efda; border: #274583 1px solid;"><strong>SISTEMA DIGESTIVO</strong> </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color text-center" colspan="2" style="background-color: #e2efda; border: #274583 1px solid;">CAVIDAD ORAL </td>
                                        <td class="label-color text-center" colspan="2" style="background-color: #e2efda; border: #274583 1px solid;">ESÓFAGO</td>
                                    </tr>

                                    <tr>
                                        <td class="label-color" style="background-color: #e2efda; border: #274583 1px solid;">Cavidad abdominal:
                                                                                        <asp:TextBox ID="txtCavidadAbd" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #e2efda; border: #274583 1px solid;">Estómago:
                                                                                   <asp:TextBox ID="txtEstómago" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #e2efda; border: #274583 1px solid;">Rumen / Retículo:
                                                                                <asp:TextBox ID="txtRumenRetículo" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #e2efda; border: #274583 1px solid;">Abomaso / Omaso:
                                                                                                
                                                                            <asp:TextBox ID="TxtAbomasoOmaso" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>

                                        </td>
                                        <tr>
                                            <td class="label-color" style="background-color: #e2efda; border: #274583 1px solid;" colspan="4">Intestinos:
                                                                                 <asp:TextBox ID="txtIntestinos" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #e2efda;"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </tr>
                                    <tr>
                                        <td class="label-color text-center" colspan="4" style="background-color: #9bc2e6; border: #274583 1px solid;"><strong>OTROS ÓRGANOS IMPORTANTES</strong> </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;">Riñones:
                                                                                    <asp:TextBox ID="txtRiñones" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;">Vejiga:
                                                                              <asp:TextBox ID="txtControlVejiga" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;">Hígado:
                                                                                <asp:TextBox ID="txtHígado" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;">Bazo:
                                                                               <asp:TextBox ID="txtControlBazo" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;" colspan="2">Páncreas:
                                                                                  <asp:TextBox ID="txtPáncreas" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;" colspan="2">Vesícular Biliar: 
                                                                                <asp:TextBox ID="txtVesícularBiliar" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;" colspan="2">Aparato genital femenino:
                                                                                 <asp:TextBox ID="txtAparatogenitalfemenino" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;" colspan="2">Aparato genital masculino:
                                                                               <asp:TextBox ID="txtAparatogenitalmasculino" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label-color" style="background-color: #eef5fb; border: #274583 1px solid;" colspan="4">Cerebro:
                                                                                      <asp:TextBox ID="txtControlCerebro" runat="server" TextMode="MultiLine" CssClass="form-control" Style="background-color: #eef5fb;"></asp:TextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>


                        </div>
                    </div>

                    <div class="col-md-12 mt-5">
                        <h3 class="label-color">Muestras enviadas a laboratorio</h3>
                        <table class="col-md-12 mt-5">
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtMuestra1" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtMuestra2" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtMuestra3" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtMuestra4" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtMuestra5" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtMuestra6" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtMuestra7" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtMuestra8" runat="server"></asp:TextBox></td>
                            </tr>
                        </table>
                        <hr />
                    </div>

                    <div class="card_Edit card-default card-outline mt-5">
                        <div class="card-header" style="background-color: #274583;">
                            <div class="text-center col-12">
                                <h3 style="color: white;">DIAGNÓSTICO PRESUNTIVO</h3>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-bordered">

                                <tbody>

                                    <tr>
                                        <td style="border: #274583 1px solid;">
                                            <asp:TextBox ID="txtDIAGNÓSTICOPRESUNTIVO" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="card_Edit card-default card-outline mt-4">
                        <div class="card-header" style="background-color: #70ad47;">
                            <div class="text-center col-12">
                                <h3 style="color: white;">OBSERVACIONES</h3>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td style="border: #274583 1px solid;">Observaciones
                                                                            <asp:TextBox ID="txtObservacionesG" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: #274583 1px solid;">Preguntas
                                                                            <asp:TextBox ID="TxtPregunta" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: #274583 1px solid;">Recomendaciones
                                                                            <asp:TextBox ID="txtRecomendacionesG" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <table style="width: 100%; align-content: center;">

                    <tr>
                        <td colspan="2" style="vertical-align: middle; text-align: center; background-color: lightblue; color: black;">
                            <h3 class="label-color">FOTOGRAFÍAS</h3>
                            <h4 class="label-color">Solo podrá seleccionar 10 fotos máximo</h4>
                            <h5 class="label-color">Deberá dar click sobre la foto a Seleccionar / Deseleccionar para realizar la actividad</h5>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="vertical-align: middle; text-align: center">
                            <asp:FileUpload ID="FUPMRG" runat="server" AllowMultiple="True" />
                            <asp:Button ID="BtnCargaGen" runat="server" Text="Procesa" CssClass="btn btn-success" />
                        </td>
                    </tr>
                    
                </table>

            </div>
            <div class="col-md-12">
                <div class="text-center">
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-warning" Style="border-radius: 25px;" Text="Guardar" />
                    <asp:Button ID="BtnRepoprte" runat="server" CssClass="btn btn-success" Style="border-radius: 25px;" Text="Reporte" />
                    <asp:Button ID="BtnHome" runat="server" CssClass="btn btn-info" Style="border-radius: 25px;" Text="Listado Reportes" />
                </div>
            </div>

        </div>
    </asp:Panel>--%>
    <%---------------------------------------------------------%>
</asp:Content>
