<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tienda-ConsultaProductos.aspx.cs" Inherits="LP3_2026_P1_FelipeGotta.Tienda_ConsultaProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tienda de Suplementos</title>
    <link href="estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Consulta de Articulos</h1>
            <p>Ingrese código del articulo:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar" />
            </p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tienda-Inicio.aspx">Volver al Inicio</asp:HyperLink>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-2026-P1-FelipeGottaConnectionString %>" SelectCommand="SELECT p.nombre, p.precio, c.descripcion FROM productos AS p INNER JOIN categorias AS c ON p.categoria = c.idCategoria WHERE (p.idProducto = @idProducto)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="idProducto" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
