using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_2026_P1_FelipeGotta
{
    public partial class Tienda_BajaProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cant = SqlDataSource1.Delete();

            if (cant > 0)
            {
                Label1.Text = "Se eliminó correctamente el articulo";
            }
            else
            {
                Label1.Text = "No se pudo eliminar el articulo porque no existe";
            }
        }
    }
}