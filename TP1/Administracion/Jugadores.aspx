<%@ Page Title="" Language="C#" MasterPageFile="AdminNested.Master" AutoEventWireup="true" CodeBehind="Jugadores.aspx.cs" Inherits="TP1.Administracion.Jugadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row containerWithHeader backgroundPasto">
        <div class="hidden-xs col-sm-1 col-md-1"></div>
        <div class="col-xs-12 col-sm-7 col-md-7">
            <form id="Form1" runat="server" class="form-horizontal" action="">
            <div class="container-fluid acciones">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Label">Seleccione equipo:</asp:Label>
                    <asp:ListBox data-interactive="lbEquipos" ID="lbEquipos" runat="server" CssClass="listaAcciones list-group" 
                        OnSelectedIndexChanged="lbEquipos_Click" AutoPostBack="True"></asp:ListBox>
                    <div runat="server" id="divJugadores">
                        <asp:Label ID="Label2" runat="server" Text="Label">Seleccione jugador:</asp:Label>
                        <asp:ListBox data-interactive="lbJugadores" ID="lbJugadores" runat="server" CssClass="listaAcciones list-group"></asp:ListBox>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <div class="btn-group botonesAccines" role="group">    
                        <asp:Button runat="server" class="btn btn-default" type="button" ID="btnCrear" name="btnCrear" title="Crear" Text="Crear" 
                            onclick="btnCrear_Click" CausesValidation="false"/>
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
              <input type="hidden" id="currentPage" value="jugadores"/>
              <div class="form-group">
                <label for="txtNombre" class="col-sm-3 control-label">Nombre</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="txtNombre" data-interactive="txtNombre" class="form-control" placeholder="Nombre" runat="server" MaxLength="30"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert" ID="ValidadorNombreObligatoria" EnableClientScript="true" runat="server" ErrorMessage="El Nombre es obligatorio" ControlToValidate="txtNombre" >
                    </asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Longitud máxima es de 30" 
                            onservervalidate="CustomValidatorNombre_ServerValidate" ControlToValidate="txtNombre" CssClass="alert"  ClientValidationFunction="validarLongitudNombre"></asp:CustomValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="txtApellido" class="col-sm-3 control-label">Apellido</label>
                <div class="col-sm-9">
                  <asp:TextBox ID="txtApellido" data-interactive="txtApellido" class="form-control" placeholder="Apellido" runat="server" MaxLength="30"></asp:TextBox>
                  <asp:RequiredFieldValidator  Display="Dynamic" CssClass="alert" ID="ValidadorApellidoObligatoria" EnableClientScript="true" runat="server" ErrorMessage="El Apellido es obligatorio" ControlToValidate="txtApellido" ></asp:RequiredFieldValidator>
                  <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Longitud máxima es de 30" 
                    onservervalidate="CustomValidatorApellido_ServerValidate" ControlToValidate="txtApellido" CssClass="alert"  ClientValidationFunction="validarLongitudApellido"></asp:CustomValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="txtEdad" class="col-sm-3 control-label">Edad</label>
                <div class="col-sm-9">
                  <asp:TextBox ID="txtEdad" class="form-control" placeholder="Edad" runat="server" MaxLength="2"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="ValidadorEdadObligatoria" Display="Dynamic" CssClass="alert" EnableClientScript="true" ControlToValidate="txtEdad" runat="server" ErrorMessage="La Edad es obligatoria"></asp:RequiredFieldValidator>
                  <asp:RangeValidator ControlToValidate="txtEdad"  Display="Dynamic" CssClass="alert" MinimumValue="15" MaximumValue="75" ID="ValidadorEdadRango" runat="server" ErrorMessage="La edad debe ser entre 15 y 75 años, formato numérico."></asp:RangeValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="ddlEquipo" class="col-sm-3 control-label">Equipo</label>
                <div class="col-sm-9">
                    <asp:DropDownList data-interactive="ddlEquipo" ID="ddlEquipo" class="form-control" placeholder="Equipo" runat="server" AppendDataBoundItems="true"></asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator1"  Operator="NotEqual" ValueToCompare="Elija un equipo" ForeColor="Red" runat="server" Display="Dynamic" CssClass="alert" EnableClientScript="true" ControlToValidate="ddlEquipo" ErrorMessage="Elija un equipo"></asp:CompareValidator>
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
            <img class="img-responsive" alt="Messi" src="/Imagenes/messi.png"/>
        </div>
        <div class="hidden-xs col-sm-1 col-md-1"></div>
    </div>
</asp:Content>
<asp:Content ID="ContentFooter" ContentPlaceHolderID="ContentPlaceHolderFooterAdmin" runat="server">
    <script type="text/javascript" src="/Scripts/validador.js"></script>
    <script type="text/javascript" src="/Scripts/jugador.js"></script>
</asp:Content>