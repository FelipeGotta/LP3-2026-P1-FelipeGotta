<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tienda-AltaProductos.aspx.cs" Inherits="LP3_2026_P1_FelipeGotta.Tienda_AltaProductos" %>

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
            <h1>Alta de Productos de la Tienda</h1>
            <p>&nbsp;</p>
            <p>Nombre:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>Precio:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>Categoria:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCategorias" DataTextField="descripcion" DataValueField="idCategoria">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirmar" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tienda-Inicio.aspx">Volver al Inicio</asp:HyperLink>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-2026-P1-FelipeGottaConnectionString %>" ProviderName="<%$ ConnectionStrings:LP3-2026-P1-FelipeGottaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [categorias]"></asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceProductos" runat="server" ConnectionString="<%$ ConnectionStrings:LP3-2026-P1-FelipeGottaConnectionString %>" DeleteCommand="DELETE FROM [productos] WHERE [idProducto] = @idProducto" InsertCommand="INSERT INTO [productos] ([nombre], [precio], [categoria]) VALUES (@nombre, @precio, @categoria)" SelectCommand="SELECT * FROM [productos]" UpdateCommand="UPDATE [productos] SET [nombre] = @nombre, [precio] = @precio, [categoria] = @categoria WHERE [idProducto] = @idProducto">
                    <DeleteParameters>
                        <asp:Parameter Name="idProducto" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="precio" PropertyName="Text" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="categoria" PropertyName="SelectedValue" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                        <asp:Parameter Name="categoria" Type="Int32" />
                        <asp:Parameter Name="idProducto" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
