<%@ Page Title="" Language="C#" MasterPageFile="AdminNested.Master" AutoEventWireup="true" CodeBehind="Jugadores.aspx.cs" Inherits="TP1.Administracion.Jugadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row containerWithHeader backgroundPasto">
        <div class="hidden-xs col-sm-2 col-md-2"></div>
        <div class="col-xs-12 col-sm-5 col-md-5">
            <div class="container-fluid formulario">
            <form runat="server" class="form-horizontal" action="">
              <input type="hidden" id="currentPage" value="jugadores"/>
              <div class="form-group">
                <label for="txtNombre" class="col-sm-3 control-label">Nombre</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert" ID="ValidadorNombreObligatoria" EnableClientScript="true" runat="server" ErrorMessage="El Nombre es obligatorio" ControlToValidate="txtNombre" >
                    </asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="txtApellido" class="col-sm-3 control-label">Apellido</label>
                <div class="col-sm-9">
                  <asp:TextBox ID="txtApellido" class="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator  Display="Dynamic" CssClass="alert" ID="ValidadorApellidoObligatoria" EnableClientScript="true" runat="server" ErrorMessage="El Apellido es obligatorio" ControlToValidate="txtApellido" >
                    </asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="txtEdad" class="col-sm-3 control-label">Edad</label>
                <div class="col-sm-9">
                  <asp:TextBox ID="txtEdad" class="form-control" placeholder="Edad" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="ValidadorEdadObligatoria" Display="Dynamic" CssClass="alert" EnableClientScript="true" ControlToValidate="txtEdad" runat="server" ErrorMessage="La Edad es obligatoria"></asp:RequiredFieldValidator>
                  <asp:RangeValidator ControlToValidate="txtEdad"  Display="Dynamic" CssClass="alert" MinimumValue="0" MaximumValue="75" ID="ValidadorEdadRango" runat="server" ErrorMessage="La edad debe ser entre 0 y 75 años, formato numérico."></asp:RangeValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="ddlEquipo" class="col-sm-3 control-label">Equipo</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="ddlEquipo" class="form-control" placeholder="Equipo" runat="server" AppendDataBoundItems="true">
                        <Items>
                           <asp:ListItem Text="Elija Toneo" Value="" />
                       </Items>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="ValidadorEquipoObligatorio" Display="Dynamic" CssClass="alert" EnableClientScript="true" ControlToValidate="ddlEquipo" runat="server" ErrorMessage="Elija un equipo"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" />
                </div>
              </div>
            </form>
            </div>
        </div>
        <div class="hidden-xs col-sm-3 col-md-3">
            <img class="img-responsive" alt="Messi" src="/Imagenes/messi.png"/>
        </div>
        <div class="hidden-xs col-sm-2 col-md-2"></div>
    </div>
</asp:Content>
