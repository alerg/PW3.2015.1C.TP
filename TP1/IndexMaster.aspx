<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IndexMaster.aspx.cs" Inherits="TP1.IndexMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Styles/inicio.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid inicio">
        <div class="row">
            <div class="col-xs-1 col-sm-2 col-md-2"></div>
            <div class="col-xs-10 col-sm-8 col-md-8">
                <div class="titleIndex centrar">
                    <img alt="Por siempre futbol" src="Imagenes/logo.png" />
                </div>
                <div class="">
                    <form id="form1" runat="server">
                        <%--<div class="logoCentro"><img alt="Por siempre futbol" src="Imagenes/logo.png" /></div>--%>
                        <div class="row">
                            <div class="centrar col-xs-12 col-sm-6">
                                <asp:Button ID="btnListados" runat="server" Text="Equipos" CssClass="btnInicio" onclick="btnListados_Click" />    
                            </div>
                            <div class="centrar col-xs-12 col-sm-6">
                                <asp:Button ID="btnAdmin" runat="server" Text="Administración" CssClass="btnInicio" onclick="btnAdmin_Click"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-xs-1 col-sm-2 col-md-2"></div>
        </div>
    </div>
</asp:Content>
