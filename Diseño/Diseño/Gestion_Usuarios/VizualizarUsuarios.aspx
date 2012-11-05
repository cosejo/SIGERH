<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="VizualizarUsuarios.aspx.cs" Inherits="Diseño.Gestion_Usuarios.VizualizarUsuarios" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center">
         Consulta de usuarios </h2>
    <p>
         <asp:Label ID="LabelNoHayDatos" runat="server" 
             Text="No hay usuarios creados dentro del sistema" Visible="False"></asp:Label>
    </p>
        <input id="txtMensajes" runat="server" style="DISPLAY:none; WIDTH: 10px"/>
    <div style="width: 714px; margin-left: 0px">
    <asp:GridView ID="GridViewConsultaUsuarios" runat="server" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical" Width="911px" 
        HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
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

        </div>
<p>

        
    <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
        style="margin-left: 1105px" Text="Regresar" Height="25px" Width="145px" />
    </p>
</asp:Content>
