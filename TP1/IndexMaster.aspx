<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IndexMaster.aspx.cs" Inherits="TP1.IndexMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="logoCentro"><img alt="Por siempre futbol" src="Imagenes/logo.png" /></div>
        <div class="centroBoton">
            <asp:Button ID="btnListados" runat="server" Text="Equipos" CssClass="btnInicio" 
                onclick="btnListados_Click" />
            <asp:Button ID="btnAdmin" runat="server" Text="Administración" CssClass="btnInicio" />
        </div>
    </form>
</asp:Content>
