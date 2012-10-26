<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarDepartamento.aspx.cs" Inherits="Diseño.Gestión_Departamentos.AgregarDepartamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .style10
        {
            width: 123px;
        }
        .style13
        {
            width: 659px;
        }
        .style14
        {
            width: 746px;
        }
        .style15
        {
            width: 659px;
            height: 21px;
        }
        .style16
        {
            width: 746px;
            height: 21px;
        }
        .style17
        {
            width: 123px;
            height: 21px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Creación de 
            Departamentos</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:1297px;">
            <tr>
                <td class="style13" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBoxNombreDepartamento" runat="server" Height="21px" 
                        style="margin-left: 0px" Width="281px"></asp:TextBox>
                </td>
                <td class="style10">
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style13">
                        &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style10">
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="style13" align="right">
                    <asp:Label ID="Label2" runat="server" Text="Pertenece a:"></asp:Label>
                </td>
                <td class="style14" style="margin-left: 80px">
                    <asp:DropDownList ID="DropDownListdepartamentos" runat="server" Height="22px" 
                        style="margin-left: 0px" Width="280px">
                    </asp:DropDownList>
                </td>
                <td class="style10">
                        &nbsp;</td>
            </tr>
            <tr >
                <td class="style15">
                        </td>
                <td class="style16" style="margin-left: 160px">
                    <br />
                    <br />
                    </td>
                <td class="style17">
                        </td>
            </tr>
            <tr align="left">
                <td class="style13">
                        &nbsp;</td>
                <td class="style14" style="margin-left: 160px">
                    <asp:Button ID="botonCrearDepartamento" runat="server" 
                            Text="Crear Departamento" 
                            onclick="botonCrearDepartamento_Click" Height="25px" 
                        style="margin-left: 46px" Width="145px" />
                </td>
                <td class="style10">
                        &nbsp;</td>
            </tr>
            <tr align="right">
                <td class="style13">
                        &nbsp;</td>
                <td class="style14" style="margin-left: 160px">
                        &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr align="right">
                <td class="style13">
                    &nbsp;</td>
                <td class="style14" style="margin-left: 160px">
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" style="margin-left: 0px" 
                        Width="145px" />
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
