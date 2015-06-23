<%@ Page Title="" Language="C#" MasterPageFile="AdminNested.Master" AutoEventWireup="true" CodeBehind="Torneos.aspx.cs" Inherits="TP1.Administracion.Torneos" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row containerWithHeader backgroundPasto">
        <div class="hidden-xs col-sm-1 col-md-1"></div>
        <div class="col-xs-12 col-sm-7 col-md-7">
            <form id="Form1" runat="server">
                <asp:HiddenField ID="hdnIdTorneo" runat="server" />
            <div class="container-fluid acciones">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:ListBox ID="lbTorneos" runat="server" CssClass="listaAcciones list-group"></asp:ListBox>
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
              <input type="hidden" id="currentPage" value="torneos"/>
              <div class="form-group">
                <label for="txtNombre" class="col-sm-3 control-label">Torneo</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="txtNombre" data-Interactive="nombre" placeholder="Ingrese Nombre del Torneo" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-error" ID="ValidadorToneoObligatorio" EnableClientScript="true" runat="server" ErrorMessage="El Nombre del Torneo es obligatorio" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="chkboxActive" class="col-sm-3 control-label">Activo</label>
                <div class="col-sm-9">
                    <asp:CheckBox ID="chkboxActive" name="chkboxActive" runat="server"/>
                </div>
              </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10 centrar">
                        <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" onclick="btnGuardar_Click" />
                    </div>
                </div>
            </div>
            </form>
        </div>
        <div class="hidden-xs col-sm-3 col-md-3">
            <img alt="messi" class="img-responsive jugador" src="/Imagenes/messi.png"/>
        </div>
        <div class="hidden-xs col-sm-1 col-md-1"></div>
    </div>
</asp:Content>
<asp:Content ID="ContentFooter" ContentPlaceHolderID="ContentPlaceHolderFooterAdmin" runat="server">
    <script type="text/javascript" src="/Scripts/torneo.js"></script>
</asp:Content>