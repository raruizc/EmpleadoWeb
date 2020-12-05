<%@ Page Title="" Language="C#" MasterPageFile="~/App/Layout.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="EmpleadosCrud.App.Formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
                

     <h1 class="textoH1"> FORMULARIO DE DATOS  </h1>

    <main class="estiloMain">

        <div class="contendeorApp"> 

        <div class="menuApp"> 
            <div class="contenedorBtnApp">
                <asp:Label ID="LabelRta" runat="server" Font-Bold="True"></asp:Label>
            </div>
        </div>


        <div class="contenedorDatos">
            <!--Inicio de contenedor datos-->
            <div class="contenedorTodoForm">
                <div class="contenedorDatoForm">
                    <div class="contenedorLabel"><asp:Label ID="Label1" runat="server" Text="Codigo"></asp:Label></div>
                    <div class="contenedorText"> <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox></div>
                    <div class="contenedorError">  <asp:Label ID="ErrorCodigo" runat="server" Font-Size="Smaller" ForeColor="Red" Text="!!!"></asp:Label></div>
                </div>

                <div class="contenedorDatoForm">
                    <div class="contenedorLabel"><asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label></div>
                    <div class="contenedorText"> <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></div>
                    <div class="contenedorError">  <asp:Label ID="ErrorNombre" runat="server" Font-Size="Smaller" ForeColor="Red" Text="!!!"></asp:Label></div>
                </div>

                <div class="contenedorDatoForm">
                    <div class="contenedorLabel"><asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label></div>
                    <div class="contenedorText"> <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox></div>
                    <div class="contenedorError">  <asp:Label ID="ErrorApellido" runat="server" Font-Size="Smaller" ForeColor="Red" Text="!!!"></asp:Label></div>
                </div>

                <div class="contenedorDatoForm">
                    <div class="contenedorLabel"><asp:Label ID="Label4" runat="server" Text="Cargo"></asp:Label></div>
                    <div class="contenedorText"> <asp:TextBox ID="txtCargo" runat="server"></asp:TextBox></div>
                    <div class="contenedorError">  <asp:Label ID="ErrorCargo" runat="server" Font-Size="Smaller" ForeColor="Red" Text="!!!"></asp:Label></div>
                </div>

                <div class="contenedorDatoForm">
                    <div class="contenedorLabel"><asp:Label ID="Label5" runat="server" Text="Salario"></asp:Label></div>
                    <div class="contenedorText"> <asp:TextBox ID="txtSalario" runat="server"></asp:TextBox></div>
                    <div class="contenedorError">  <asp:Label ID="ErrorSalario" runat="server" Font-Size="Smaller" ForeColor="Red" Text="!!!"></asp:Label></div>
                </div>

                <div class="contenedorDatoForm">
                    <div class="contenedorLabel"><asp:Label ID="Label6" runat="server" Text="Área"></asp:Label></div>
                    <div class="contenedorText"> <asp:TextBox ID="txtArea" runat="server"></asp:TextBox></div>
                    <div class="contenedorError">  <asp:Label ID="ErrorArea" runat="server" Font-Size="Smaller" ForeColor="Red" Text="!!!"></asp:Label></div>
                </div>

                <div class="contenedorDatoForm">
                    <div class="contenedorLabel"><asp:Label ID="Label7" runat="server" Text="Ciudad"></asp:Label></div>
                    <div class="contenedorText"> <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox></div>
                    <div class="contenedorError">  <asp:Label ID="ErrorCiudad" runat="server" Font-Size="Smaller" ForeColor="Red" Text="!!!"></asp:Label></div>
                </div>
                <div class="contenedorBtnApp">
                    <asp:Button ID="btnAgregarEmpleado" runat="server" Text=" Enviar Datos" CssClass="btnApp" OnClick="btnAgregarEmpleado_Click" />
                    <asp:Button ID="btnEditarEmpleado" runat="server" Text=" Guardar Cambios" CssClass="btnApp" OnClick="btnEditarEmpleado_Click"  />
                    <asp:Button ID="btnBorrarEmpleado" runat="server" Text=" Borrar Datos" CssClass="btnApp" OnClick="btnBorrarEmpleado_Click"  />
                </div>
            </div>
        </div>       
        
        !!!Formularios   
        </div>
    </main>

</asp:Content>
