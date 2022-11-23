<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ExamenVentas.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Css/Menu.css" rel="stylesheet" />
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
    </form>
</body>
</html>
