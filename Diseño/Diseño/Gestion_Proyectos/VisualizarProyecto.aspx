<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarProyecto.aspx.cs" Inherits="Diseño.Gestion_Proyectos.VisualizarProyecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">



        .style2
        {
            width: 466px;
        }
        .style1
        {
            width: 412px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Visualización 
            de Proyectos</h2>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Proyecto:"></asp:Label>
                    <asp:DropDownList ID="DropDownListdepartamentos" runat="server" Height="22px" 
                        Width="233px" style="margin-left: 20px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 80px">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    <br />
                    <br />
                    <asp:Button ID="botonEliminarDepartamento" runat="server" 
                            Text="Consultar" 
                            onclick="botonEliminarDepartamento_Click" Height="25px" 
                        style="margin-left: 0px" Width="145px" />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        &nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" style="margin-left: 139px" 
                        Width="145px" />
                </td>
            </tr>
            <tr align="right">
                <td class="style2">
                    &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="right">
                <td class="style2">
                    &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
