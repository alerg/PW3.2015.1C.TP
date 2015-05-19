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
                            <div class="panel-heading">
                                <h3 class="panel-title">Lista de Equipos</h3>
                            </div>
                            <div class="row">
                                <div class="checkBlock col-xs-12 col-sm-3 col-md-3">
                                    <!--<asp:RadioButton CssClass="checkActive" GroupName="TipoTorneo" AutoPostBack="true" ID="radTodos" runat="server" Text="Todos los torneos" OnCheckedChanged="OnCheckedState" />-->
                                    <asp:RadioButton CssClass="checkActive" GroupName="TipoTorneo" AutoPostBack="true" Checked="true" ID="radActivo" runat="server" Text="Torneos activos" OnCheckedChanged="OnCheckedState" />
                                </div>
                                <div class="checkBlock col-xs-12 col-sm-3 col-md-3">
                                    <asp:RadioButton CssClass="checkActive" GroupName="TipoTorneo" AutoPostBack="true" ID="radInactivo" runat="server" Text="Torneos inactivos" OnCheckedChanged="OnCheckedState" />
                                </div>
                                <div class="hidden-xs col-sm-6 col-md-6"></div>
                            </div>
                            <div class="panel-body">
                                    <asp:GridView ID="gdvEquipos" runat="server" AutoGenerateColumns="False" EmptyDataText="No hay datos."
                                        CssClass="table table-striped" GridLines="None" ShowHeaderWhenEmpty="True">
                                        <AlternatingRowStyle />
                                            <Columns>
                                                <asp:BoundField DataField="idEquipo" HeaderText="#" />
                                                <asp:BoundField DataField="eNombre" HeaderText="Nombre" />
                                                <asp:BoundField DataField="eIdTorneo" HeaderText="Torneo" />
                                            </Columns>
                                    </asp:GridView>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="hidden-xs col-sm-2 col-md-2"></div>
            </div>
        </div>
    </div>
</asp:Content>
