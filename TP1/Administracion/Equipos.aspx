<%@ Page Title="" Language="C#" MasterPageFile="AdminNested.Master" AutoEventWireup="true" CodeBehind="Equipos.aspx.cs" Inherits="TP1.Administracion.Equipos" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row containerWithHeader backgroundPasto">
        <div class="hidden-xs col-sm-1 col-md-7"></div>
        <div class="col-xs-12 col-sm-7 col-md-7">
            <form id="formEquipos" runat="server" class="form-horizontal" action="">
            <asp:HiddenField ID="hdnIdEquipo" runat="server" />
            <div class="container-fluid acciones">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:ListBox ID="lbEquipos" runat="server" CssClass="listaAcciones list-group"></asp:ListBox>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <div class="btn-group botonesAccines" role="group">    
                        <asp:Button runat="server" class="btn btn-default" type="button" ID="btnCrear" 
                            name="btnCrear" title="Crear" Text="Crear" onclick="btnCrear_Click" CausesValidation="false"/>
                        <asp:Button runat="server" class="btn btn-warning" type="button" ID="btnEditar" 
                            name="btnEditar" title="Editar" Text="Editar" onclick="btnEditar_Click" CausesValidation="false"/>
                        <asp:Button runat="server" class="btn btn-danger" type="button" 
                            ID="btnEliminar" name="btnEliminar" title="Eliminar" Text="Eliminar" CausesValidation="false" 
                            onclick="btnEliminar_Click" />
                    </div>
                    <div ID="divWarning" data-interactive="divWarning" class="alert alert-warning" role="alert" runat="server"></div>
                </div>
            </div>
            <div runat="server" ID="divFormulario" class="container-fluid formulario">
              <input type="hidden" id="currentPage" value="equipos"/>
              <div class="form-group">
                <label for="InputName" class="col-sm-3 control-label">Nombre de Equipo</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="txtNombre" data-interactive="txtNombre" placeholder="Nombre" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert" ID="RequiredFieldValidator4" EnableClientScript="true" runat="server" ErrorMessage="El Nombre del Equipo es obligatorio" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="ddlTorneo" class="col-sm-3 control-label">Torneo</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="ddlTorneo" data-interactive="ddlTorneo" class="form-control" runat="server" AppendDataBoundItems="true">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert" ID="RequiredFieldValidator6" EnableClientScript="true" runat="server" ErrorMessage="El torneo es obligatorio" ControlToValidate="ddlTorneo" >
                    </asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="InputMonto" class="col-sm-3 control-label">Monto</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="txtMonto" data-interactive="txtMonto" placeholder="Monto" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="alert" Display="Dynamic" EnableClientScript="true" ControlToValidate="txtMonto" runat="server" ErrorMessage="El Monto es obligatorio"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator  Display="Dynamic" CssClass="alert" ID="RegularExpressionValidator1" EnableClientScript="true" ControlToValidate="txtMonto" runat="server" ErrorMessage="Formato de moneda invalido. Debe ser 10.00." ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" onclick="btnGuardar_Click"/>
                </div>
              </div>
            </div>
            </form>
            </div>
        <div class="hidden-xs col-sm-3 col-md-3">
            <img alt="messi" class="img-responsive" src="/Imagenes/messi.png" class="jugador"/>
        </div>
        <div class="hidden-xs col-sm-1 col-md-1"></div>
    </div>
</asp:Content>
<asp:Content ID="ContentFooter" ContentPlaceHolderID="ContentPlaceHolderFooterAdmin" runat="server">
    <script type="text/javascript" src="/Scripts/equipo.js"></script>
</asp:Content>
