using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_2026_P1_FelipeGotta
{
    public partial class Tienda_ModificacionProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;

            datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                TextBox2.Text = datos[1].ToString();
                TextBox3.Text = datos[2].ToString();
                DropDownList1.SelectedValue = datos[3].ToString();

            }
            else
            {
                this.Label1.Text = "No se encontraron resultados";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int cant = SqlDataSource1.Update();
            if (cant > 0)
            {
                this.Label2.Text = "Se modificó el artículo correctamente";
            }
            else
            {
                this.Label2.Text = "No se pudo modificar el artículo";
            }
        }
    }
}