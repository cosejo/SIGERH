<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarAusencia.aspx.cs" Inherits="Diseño.Gestion_Ausencias.EliminarAusencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 431px;
        }
        .style2
        {
            width: 380px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2 align="center"> Eliminar Ausencias</h2>
    </div>
    <br />
    <br />
    <div>
        <table style="width:121%;">
            <tr>
                <td class="style1" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownListNombre" runat="server" Height="22px" 
                        style="margin-left: 2px" Width="432px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td align="center" class="style2">
                    <br />
                    <asp:Button ID="botonConsultar" runat="server" Text="Consultar" Height="25px" 
                        style="margin-left: 0px" Width="145px" />
                    <br />
                    <br />
                </td>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>
    <hr style="width: 1298px" />
    <div>
        <table style="width:121%;">
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
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        GridLines="Vertical" style="margin-left: 261px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CheckBoxField Text="Eliminar" />
                        </Columns>
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
                <td align="left">
                    <asp:Button ID="botonEliminar" runat="server" Text="Eliminar Ausencias" 
                        onclick="botonEliminar_Click" Height="25px" style="margin-left: 569px" 
                        Width="145px" />
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
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                        onclick="botonRegresar_Click" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
    <p>
    </p>
</asp:Content>
