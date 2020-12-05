using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpleadosCrud.App
{
    public partial class Formulario : System.Web.UI.Page
    {

        ValidarCajas validar = new ValidarCajas();
        GestionDatos datos = new GestionDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Cuando se cargué el formulario
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    txtCodigo.Text = Request.QueryString["id"];
                    Empleado myEmpleado = datos.consultaEmpleado(txtCodigo.Text);
                    txtNombre.Text = myEmpleado.Nombre;
                    txtApellido.Text = myEmpleado.Apellido;
                    txtCargo.Text = myEmpleado.Cargo;
                    txtSalario.Text = myEmpleado.Salario;
                    txtArea.Text = myEmpleado.Area;
                    txtCiudad.Text = myEmpleado.Ciudad;
                    btnAgregarEmpleado.Visible = false;
                    btnEditarEmpleado.Visible = true;
                    btnBorrarEmpleado.Visible = true;
                    txtCodigo.Enabled = false;
                }
                else
                {
                    txtCodigo.Enabled = true;
                    btnAgregarEmpleado.Visible = true;
                    btnEditarEmpleado.Visible = false;
                    btnBorrarEmpleado.Visible = false;
                }
                    
            }
        }

        protected void btnAgregarEmpleado_Click(object sender, EventArgs e)
        {
            //Enviar los datos
            if(!validar.Vacio(txtCodigo,ErrorCodigo, "No puede ser vacio"))
                if (!validar.Vacio(txtNombre, ErrorNombre, "No puede ser vacio"))
                    if (!validar.Vacio(txtApellido, ErrorApellido, "No puede ser vacio"))
                        if (!validar.Vacio(txtCargo, ErrorCargo, "No puede ser vacio"))
                            if (!validar.Vacio(txtSalario, ErrorSalario, "No puede ser vacio"))
                                if (!validar.Vacio(txtArea, ErrorArea, "No puede ser vacio"))
                                    if (!validar.Vacio(txtCiudad, ErrorCiudad, "No puede ser vacio"))
                                    {
                                        InsertarDatosBD();
                                    }

        }

        private void InsertarDatosBD()
        {
            Empleado myEmpleado = new Empleado();
            myEmpleado.Codigo = txtCodigo.Text;
            myEmpleado.Nombre = txtNombre.Text;
            myEmpleado.Apellido = txtApellido.Text;
            myEmpleado.Cargo = txtCargo.Text;
            myEmpleado.Salario = txtSalario.Text;
            myEmpleado.Area = txtArea.Text;
            myEmpleado.Ciudad = txtCiudad.Text;

            if (!datos.ExisteEmpleado(txtCodigo.Text))
            {
                if (datos.InsertarEmpleadoBD(myEmpleado))
                {
                    LabelRta.Text = "El Registro Fue Insertado Correctamente";
                }
                else
                {
                    LabelRta.Text = "Error al insertar" + datos.error;
                }

            }
            else
            {
                LabelRta.Text = "El código:  " + txtCodigo.Text + " ya existe";
            }
            
        }
        private void LimpiarCajas()
        {
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCargo.Text = "";
            txtSalario.Text = "";
            txtArea.Text = "";
            txtCiudad.Text = "";
        }

        protected void btnEditarEmpleado_Click(object sender, EventArgs e)
        {
            // código para editar empleado
            Empleado myEmpleado = new Empleado();
            myEmpleado.Codigo = txtCodigo.Text;
            myEmpleado.Nombre = txtNombre.Text;
            myEmpleado.Apellido = txtApellido.Text;
            myEmpleado.Cargo = txtCargo.Text;
            myEmpleado.Salario = txtSalario.Text;
            myEmpleado.Area = txtArea.Text;
            myEmpleado.Ciudad = txtCiudad.Text;

            if (datos.editarEmpleado(myEmpleado))
            {
                LabelRta.Text = "El Registro Fue Actualizado  Correctamente";
            }
            else
            {
                LabelRta.Text = "El error al actualizar" + datos.error;
            }

        }

        protected void btnBorrarEmpleado_Click(object sender, EventArgs e)
        {
            // código para borrar empleado
            
            
            if (datos.eliminarEmpleado(txtCodigo.Text))
            {
                LabelRta.Text = "El Registro Fue Borrado  Correctamente";
                LimpiarCajas();
            }
            else
            {
                LabelRta.Text = "El error al Borrar" + datos.error;
            }

        }
    }
}