<%@ Page Title="" Language="C#" MasterPageFile="EquiposNested.Master" AutoEventWireup="true" CodeBehind="ListaEquipos.aspx.cs" Inherits="TP1.ListaEquipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Styles/lista.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container containerWithHeader theme-showcase" >
        <div class="container">
            <div class="page-header">
                <h2>Equipos</h2>
            </div>
            <div class="row">
                <div class="hidden-xs col-sm-2 col-md-2"></div>
                <div class="col-xs-12 col-sm-8 col-md-8">
                    <form id="form1" runat="server">
                        <input type="hidden" id="currentPage" value="lista"/>
                        <div class="panel panel-primary">
                            <div class="panel-heading clearfix"> 
                                <h4 class="panel-title pull-left" style="padding-top: 7.5px;">Lista de Equipos</h4>
                                <div class="btn-group pull-right">
                                    <button class="btn btn-default btn-filtro" type="button" data-toggle="button" id="btnFiltrar" name="btnFiltrar" title="Mostrar torneos inactivos"><i class="glyphicon glyphicon-filter icon-filter"></i></button>
                                    <input class="checkActive" type="checkbox" id="chkMostrarInactivos" name="chkMostrarInactivos"/>
                                </div>
                            </div>
                            <div class="panel-body">
                                <table class="table" data-interactive="tabla">
                                    <thead>
                                        <tr>
                                        <th>#</th>
                                        <th>Equipo</th>
                                        <th>Torneo</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="hidden-xs col-sm-2 col-md-2"></div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentFooter" ContentPlaceHolderID="ContentPlaceHolderFooterEquipo" runat="server">
    <script type="text/javascript" src="/Scripts/listaEquipos.js"></script>
</asp:Content>
