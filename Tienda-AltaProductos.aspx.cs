using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LP3_2026_P1_FelipeGotta
{
    public partial class Tienda_AltaProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceProductos.Insert();

            this.Label1.Text = "Producto agregado correctamente";
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;
        }
    }
}