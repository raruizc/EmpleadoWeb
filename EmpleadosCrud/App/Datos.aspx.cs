using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpleadosCrud.App
{
    public partial class Datos : System.Web.UI.Page
    {
        // Crear nuestro objeto para Gestionar Datos
        GestionDatos datos = new GestionDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnListarTodo_Click(object sender, EventArgs e)
        {
            //En un a lista invocamos el objeto para listar los empleados
            List<Empleado> listaEmpleados = datos.LeerTodos();
            // Volcamos la lista a nuestro gv
            gvEmpleados.DataSource = listaEmpleados;
            gvEmpleados.DataBind();
        }

        protected void gvEmpleados_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEmpleados.PageIndex = e.NewPageIndex;
            List<Empleado> listaEmpleados = datos.LeerTodos();
           
            gvEmpleados.DataSource = listaEmpleados;
            gvEmpleados.DataBind();
        }

        protected void btnBuscarCodigo_Click(object sender, EventArgs e)
        {
            if (datos.ExisteEmpleado(txtBuscarCodigo.Text))
            {
                Response.Redirect("Formulario.aspx?id=" + txtBuscarCodigo.Text);
            }
            else
            {
                LabelBuscar.Text = "No existe el código en la BD";
            }
        }
    }
}