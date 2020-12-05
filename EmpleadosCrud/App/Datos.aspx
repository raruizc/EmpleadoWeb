<%@ Page Title="" Language="C#" MasterPageFile="~/App/Layout.Master" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="EmpleadosCrud.App.Datos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="textoH1"> CRUD básico a una tabla html  </h1>

    <main class="estiloMain">

        <div class="contendeorApp"> 

        <div class="menuApp"> 
        <div class="contenedorBtnApp">
            <!--<a class="btnApp" href="#"> Crear </a>
            <a class="btnApp" href="#"> Buscar </a>
            <a class="btnApp" href="#"> Editar </a>
            <a class="btnApp" href="#"> Borar </a>-->
            <div>
                <asp:Button ID="btnListarTodo" runat="server" OnClick="btnListarTodo_Click" Text="Listar Empleados" class="btnApp"/>
            </div>

            <div>
                <div class="contenedorText"> <asp:TextBox ID="txtBuscarCodigo" runat="server"></asp:TextBox></div>
            </div>

            <div>
                <asp:Button ID="btnBuscarCodigo" runat="server" Text="Bucar Empleados" class="btnApp" OnClick="btnBuscarCodigo_Click"/>
            </div>

            <div>
                <asp:Label ID="LabelBuscar" runat="server" Font-Bold="True"></asp:Label>
            </div>
           
        </div>
        </div>
       
        <div class="contenedorDatos">
            <div class="contenedorGrid">
            &nbsp;<asp:GridView cssclass="formatoGrid" ID="gvEmpleados" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" AllowPaging="True" OnPageIndexChanging="gvEmpleados_PageIndexChanging">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            </div>
        </div>

    </div>

    </main>
</asp:Content>
