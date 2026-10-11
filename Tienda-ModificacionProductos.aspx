<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tienda-ModificacionProductos.aspx.cs" Inherits="LP3_2026_P1_FelipeGotta.Tienda_ModificacionProductos" %>

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
            <h1>Modificar Productos de la Tienda</h1>
            <p>Ingrese ID del producto:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:LP3-2026-P1-FelipeGottaConnectionString %>" 
                    SelectCommand="SELECT * FROM productos WHERE idProducto = @id" 
                    UpdateCommand="UPDATE productos SET nombre = @nombre, precio = @precio, categoria = @categoria WHERE idProducto = @id">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="nombre" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox3" Name="precio" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="categoria" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>Nombre:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>Precio:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <p>Categoría:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCategorias" DataTextField="descripcion" DataValueField="idCategoria">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:LP3-2026-P1-FelipeGottaConnectionString %>" 
                    SelectCommand="SELECT idCategoria, descripcion FROM categorias">
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tienda-Inicio.aspx">Volver al Inicio</asp:HyperLink>
            </p>
        </div>
    </form>
</body>
</html>
