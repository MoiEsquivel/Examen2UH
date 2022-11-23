<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Venta.aspx.cs" Inherits="ExamenVentas.Venta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Css/Menu.css" rel="stylesheet" />
    <link href="Css/Formulario.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a href="Index.aspx">Inicio</a></li>
                <li class="dropdown">
                   <a href="javascript:void(0)" class="dropbtn">Ventas</a>
                    <div class="dropdown-content">
                      <a href="Venta.aspx">Nueva venta</a>
                      <a href="Reportes.aspx">Reporte de Ventas</a>                       
                    </div>
                 </li>
                <li class="dropdown">
                   <a href="javascript:void(0)" class="dropbtn">Compras</a>
                    <div class="dropdown-content">
                      <a href="#">Facturar</a>
                      <a href="#">Reporte de Compras</a>
                      <a href="#">Pagos</a>
                    </div> 
                 </li> 
                <li><a href="#">Cajeros</a></li>
                <li style="float:right"><a class="active" href="#">Salir</a></li>
             </ul>
        </div>

        <h1 style="text-align:center"> Agregar Nuevo Cliente</h1>

        <div class="container">            
                <div class="row">
                    <div class="col-25">
                        <asp:Label ID="Lced" runat="server" Text="Cajero:"></asp:Label> 
                    </div>
                    <div class="col-75">
                        <asp:DropDownList ID="DropDownList1" Width="100px" runat="server" DataSourceID="SqlDataSource1" DataTextField="Codigo_Cajero" DataValueField="Codigo_Cajero">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-R22P047\SQLEXPRESS;Initial Catalog=Ventas;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Codigo_Cajero] FROM [Cajeros]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <asp:Label ID="Lnom" runat="server" Text="Maquina Registradora:"></asp:Label> 
                    </div>
                    <div class="col-75">
                         <asp:DropDownList ID="DropDownList2" Width="100px" runat="server" DataSourceID="SqlDataSource2" DataTextField="Codigo_Maquina" DataValueField="Codigo_Maquina">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                        </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-R22P047\SQLEXPRESS;Initial Catalog=Ventas;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Codigo_Maquina] FROM [Maquina_Registradora]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <asp:Label ID="Lapellido" runat="server" Text="Codigo de Producto:"></asp:Label> 
                    </div>
                    <div class="col-75">
                          <asp:DropDownList ID="DropDownList3" Width="100px" runat="server" DataSourceID="SqlDataSource3" DataTextField="Codigo_Producto" DataValueField="Codigo_Producto">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                        </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:VentasConnectionString2 %>" SelectCommand="SELECT [Codigo_Producto], [Nombre] FROM [Productos]"></asp:SqlDataSource>
                    </div>
                </div>
                

            <div class="row">
                <br /> 
                <asp:Button ID="Bagregar" runat="server" Text="Realizar Venta" OnClick="Bagregar_Click" />         
             
            </div>            
        </div>

        <div class="container2">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
        
    </form>
</body>
</html>
