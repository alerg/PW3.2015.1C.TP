<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP1.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Siempre Fútbol</title>
    <link href="Styles/sticky-footer-navbar.css" rel="stylesheet" type="text/css" />
    <link href="Styles/generales.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
    <form id="form1" runat="server">
    <div class="logoCentro"><img alt="Por siempre futbol" src="Imagenes/logo.png" /></div>
    <div class="centroBoton">
        <asp:Button ID="btnListados" runat="server" Text="Equipos" CssClass="btnInicio" 
            onclick="btnListados_Click" />
        <asp:Button ID="btnAdmin" runat="server" Text="Administración" CssClass="btnInicio" />
    </div>
    </form>
    
</body>
</html>
