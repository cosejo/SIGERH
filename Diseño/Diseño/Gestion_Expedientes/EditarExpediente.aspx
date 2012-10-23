<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarExpediente.aspx.cs" Inherits="Diseño.Gestion_Expedientes.EditarExpediente" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 365px;
        }
        .style2
        {
            width: 323px;
        }
        .style3
        {
            width: 300px;
        }
        .style4
        {
            width: 308px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        EDITAR Expediente </h2>
    </div>
    <p>
        <table style="width:100%;">
            <tr align="center">
                <td class="style1">
                    <asp:LinkButton ID="LinkButtonInformacionGeneral" runat="server" 
                        onclick="LinkButtonInformacionGeneral_Click">Informacion General</asp:LinkButton>
                </td>
                <td class="style2">
                    <asp:LinkButton ID="LinkButtonCurriculum" runat="server" 
                        onclick="LinkButtonCurriculum_Click">Curriculum</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButtonContrato" runat="server" 
                        onclick="LinkButtonContrato_Click">Contrato</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr >
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <p>
        &nbsp;</p>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="2">
            <asp:View ID="ViewContrato" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewCurriculo" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td> 
                         <td>
                             Informacón del Curriculo</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td> 
                         <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Experiencia Laboral"></asp:Label>
                        </td> 
                         <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Formación Académica"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewInfoGeneral" runat="server">
            <table style="width:100%;">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    Información General</td>
                <td>
                    &nbsp;</td>
            </tr>
                        <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxNombre" runat="server" Width="586px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    <asp:Label ID="Label2" runat="server" Text="Apellido:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxApellidos" runat="server" Width="583px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px" class="style3" align="right">
                    <asp:Label ID="Label3" runat="server" Text="Edad:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxEdad" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidatorEdad" runat="server" controltovalidate="TextBoxEdad" type="Integer" minimumvalue="15" maximumvalue="110"
                        ErrorMessage="Por favor digite una edad que se encuentre entre los 15 y 110 años"></asp:RangeValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px" class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px" class="style3" align="right">
                    <asp:Label ID="Label4" runat="server" Text="Sexo:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListSexo" runat="server" Height="16px" 
                        Width="132px">
                        <asp:ListItem Value="0">Masculino</asp:ListItem>
                        <asp:ListItem Value="1">Femenino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px" class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px" class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px" class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px" class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
            </asp:View>
        </asp:MultiView>
    <div>
        <br />
    </div>
    <div>
        <table style="width:100%;">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td align="center">
                    <asp:Button ID="botonCrear" runat="server" Text="Crear" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="right">
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                        onclick="botonRegresar_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div>
    </div>
    <div>
    </div>
    <p>
    </p>
</asp:Content>
