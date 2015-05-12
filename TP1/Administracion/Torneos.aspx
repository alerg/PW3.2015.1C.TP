<%@ Page Title="" Language="C#" MasterPageFile="AdminNested.Master" AutoEventWireup="true" CodeBehind="Torneos.aspx.cs" Inherits="TP1.Administracion.Torneos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/dist/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row formContainer">
        <div class="col-md-2">
        </div>
        <div class="col-md-4">
            <div class="container-fluid formulario">
            <form id="Form1" runat="server" class="form-horizontal" action="">
              <div class="form-group">
                <label for="txtNombre" class="col-sm-2 control-label">Torneo</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtNombre" placeholder="Ingrese Nombre del Torneo" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator4" EnableClientScript="true" runat="server" ErrorMessage="El Nombre del Equipo es obligatorio" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="txtActivo" class="col-sm-2 control-label">Activo</label>
                <div class="col-sm-10">
                    <input  type="checkbox" name="chkActive" id="chkActive" class="checkActive" checked="checked"/>
                </div>
              </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnGuardar" class="btn btn-default" runat="server" Text="Guardar" />
                    </div>
                </div>
            </form>
            </div>
        </div>
        <div class="col-md-4 colImagen">
            <img  src="/Imagenes/messi.png" class="jugador"/>
        </div>
        <div class="col-md-2">
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentFooter" ContentPlaceHolderID="ContentPlaceHolderFooterAdmin" runat="server">
    <script type="text/javascript" src="/dist/js/bootstrap-switch.min.js"></script>
    <script type="text/javascript" src="/Scripts/torneos.js"></script>
</asp:Content>