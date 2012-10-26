<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultarExpediente.aspx.cs" Inherits="Diseño.Gestion_Expedientes.ConsultarExpediente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 458px;
        }
        .style3
        {
            width: 447px;
        }
        .style4
        {
            width: 397px;
        }
        .style5
        {
            width: 495px;
        }
        .style7
        {
            width: 490px;
        }
        .style8
        {
            width: 436px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2 align="center"> Consultar Expediente</h2>
        <p> &nbsp;</p>
        <p> &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Cédula:      "></asp:Label>
                    <asp:DropDownList ID="DropDownListNombrePersona" runat="server" Height="22px" 
                        Width="256px">
                    </asp:DropDownList>
                    <br />
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" align="left">
                    <br />
                    <br />
                    <asp:Button ID="botonConsultar" runat="server" Text="Consultar" Height="25px"
                        Width="145px" onclick="botonConsultar_Click" style="margin-left: 94px" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div> 
        <table style="width:121%;">
            <tr>
                <td class="style3"  align="center">
                    <asp:LinkButton ID="LinkButtonInfo" runat="server" 
                        onclick="LinkButtonInfo_Click">Información General</asp:LinkButton>
                </td>
                <td class="style4" align="center">
                    <asp:LinkButton ID="LinkButtonPermisos" runat="server" 
                        onclick="LinkButtonPermisos_Click">Permisos</asp:LinkButton>
                </td>
                <td align="center">
                    <asp:LinkButton ID="LinkButtonIncapacidades" runat="server" 
                        onclick="LinkButtonIncapacidades_Click">Incapacidades</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" align="center">
                    <asp:LinkButton ID="LinkButtonVacaciones" runat="server" 
                        onclick="LinkButtonVacaciones_Click">Vacaciones</asp:LinkButton>
                </td>
                <td class="style4" align="center">
                    <asp:LinkButton ID="LinkButtonCurriculo" runat="server" 
                        onclick="LinkButtonCurriculo_Click">Curriculo</asp:LinkButton>
                </td>
                <td align="center">
                    <asp:LinkButton ID="LinkButtonContrato" runat="server" 
                        onclick="LinkButtonContrato_Click">Contrato</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    <div>

        <hr style="width: 1297px" />

    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View6" runat="server">
            <div>
                <asp:Label ID="Label2" runat="server" Text="Información General"></asp:Label>
                <br />
                <asp:GridView ID="GridViewInformaciónGeneral" runat="server" BackColor="White" 
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
                <br />
            </div>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <div>
                <asp:Label ID="Label3" runat="server" Text="Permisos"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridViewPermisos" runat="server" BackColor="White" 
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
                <br />
            </div>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <div>
                <asp:Label ID="Label4" runat="server" Text="Incapacidades"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridViewIncapacidades" runat="server" BackColor="White" 
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
                <br />
            </div>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <div>
                <asp:Label ID="Label5" runat="server" Text="Vacaciones"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridViewVacaciones" runat="server" BackColor="White" 
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
                <br />
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div>
                <asp:Label ID="Label6" runat="server" Text="Curriculum Vitae"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridViewCurriculum" runat="server" BackColor="White" 
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
                <br />
            </div>
        </asp:View>
        <asp:View ID="View1" runat="server">
            <div>
                <asp:Label ID="Label7" runat="server" Text="Contrato"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridViewContrato" runat="server" BackColor="White" 
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
                <br />
                <br />
        </asp:View>
    </asp:MultiView>
                    <div>
                    <table style="width:121%;">
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td align="left">
                                <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
                                    Text="Regresar" Height="25px" style="margin-left: 166px" Width="145px" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
    </asp:Content>
