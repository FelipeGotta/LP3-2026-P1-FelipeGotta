<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tienda-BajaProductos.aspx.cs" Inherits="LP3_2026_P1_FelipeGotta.Tienda_BajaProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
    <h1>Eliminar articulos</h1>
    <p>Ingrese ID del articulo:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Eliminar" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <br />


    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tienda-Inicio.aspx">Volver al Inicio</asp:HyperLink>
    <br />
</div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-2026-P1-FelipeGottaConnectionString %>" DeleteCommand="DELETE FROM productos WHERE (idProducto = @id)" SelectCommand="SELECT * FROM productos">
    <DeleteParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
    </DeleteParameters>
</asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
