<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tienda-Inicio.aspx.cs" Inherits="LP3_2026_P1_FelipeGotta.Tienda_Inicio" %>

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
            <h1>Bienvenido a la Tienda Online de Suplementos para Gimnasio</h1>
            <p>&nbsp;</p>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tienda-AltaProductos.aspx">Agrega un Producto</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Tienda-ConsultaProductos.aspx">Consulta de Producto</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Tienda-ModificacionProductos.aspx">Modificacion de Productos</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Tienda-BajaProductos.aspx">Baja de Productos</asp:HyperLink>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
