<%@ Page Title="" Language="C#" MasterPageFile="EquiposNested.Master" AutoEventWireup="true" CodeBehind="ListaEquipos.aspx.cs" Inherits="TP1.ListaEquipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container theme-showcase" >
        <div class="container">
            <div class="page-header">
                <h2>Equipos</h2>
            </div>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Lista de Equipos</h3>
                </div>
                <div>
                    <%--<asp:RadioButton GroupName="TipoTorneo" AutoPostBack="true" ID="radTodos" runat="server" Text="Todos los torneos" oncheckedchanged="radTodos_CheckedChanged" />
                    <asp:RadioButton GroupName="TipoTorneo" AutoPostBack="true" ID="radInactivo" runat="server" Text="Torneos inactivos" oncheckedchanged="chkInactivo_CheckedChanged" />
                    <asp:RadioButton GroupName="TipoTorneo" AutoPostBack="true" ID="radActivo" runat="server" Text="Torneos activos" oncheckedchanged="RadioButton1_CheckedChanged" />--%>
                </div>
                <div class="panel-body">
                    <form id="form1" runat="server">
                        <asp:GridView ID="gdvEquipos" runat="server" AutoGenerateColumns="False" EmptyDataText="No hay datos."
                            CssClass="table table-striped" GridLines="None" ShowHeaderWhenEmpty="True">
                            <AlternatingRowStyle />
                                <Columns>
                                    <asp:BoundField DataField="idEquipo" HeaderText="#" />
                                    <asp:BoundField DataField="eNombre" HeaderText="Nombre" />
                                    <asp:BoundField DataField="eIdTorneo" HeaderText="Torneo" />
                                </Columns>
                        </asp:GridView>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
