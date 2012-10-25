<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="VizualizarUsuarios.aspx.cs" Inherits="Diseño.Gestion_Usuarios.VizualizarUsuarios" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
         Consulta de usuarios GestionUsuarios</h2>
        <input id="txtMensajes" runat="server" style="DISPLAY:none; WIDTH: 10px"/>
    <div style="width: 714px; margin-left: 0px">
    <asp:GridView ID="GridViewConsultaUsuarios" runat="server" 
        onselectedindexchanged="GridViewConsultaUsuarios_SelectedIndexChanged" 
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

    <p>
        <asp:Label ID="LabelConsulta" runat="server" Text="Consultar Usuarios: "></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="botonConsultar" 
            runat="server" Text="Consultar" 
            onclick="ButtonConsulta_Click" />
    </p>

        </div>
<p>

        
    <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
        style="margin-left: 1139px" Text="Regresar" />
    </p>
</asp:Content>
