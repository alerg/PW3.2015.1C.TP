<%@ Page Title="" Language="C#" MasterPageFile="AdminNested.Master" AutoEventWireup="true" CodeBehind="Equipos.aspx.cs" Inherits="TP1.Administracion.Equipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row containerWithHeader backgroundPasto">
        <div class="hidden-xs col-sm-2 col-md-2"></div>
        <div class="col-xs-12 col-sm-5 col-md-5">
            <div class="container-fluid formulario">
            <form id="formEquipos" runat="server" class="form-horizontal" action="">
              <input type="hidden" id="currentPage" value="equipos"/>
              <div class="form-group">
                <label for="InputName" class="col-sm-3 control-label">Nombre de Equipo</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="txtNombre" placeholder="Nombre" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator4" EnableClientScript="true" runat="server" ErrorMessage="El Nombre del Equipo es obligatorio" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="ddlTorneo" class="col-sm-3 control-label">Torneo</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="ddlTorneo" class="form-control" runat="server" AppendDataBoundItems="true">
                       <Items>
                           <asp:ListItem Text="Elija Toneo" Value="" />
                       </Items>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator  Display="Dynamic" CssClass="alert" ID="RequiredFieldValidator6" EnableClientScript="true" runat="server" ErrorMessage="El torneo es obligatorio" ControlToValidate="ddlTorneo" >
                    </asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="InputMonto" class="col-sm-3 control-label">Monto</label>
                <div class="col-sm-9">
                    <asp:TextBox ID="txtMonto" placeholder="Monto" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="alert" Display="Dynamic" EnableClientScript="true" ControlToValidate="txtMonto" runat="server" ErrorMessage="El Monto es obligatorio"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator  Display="Dynamic" CssClass="alert" ID="RegularExpressionValidator1" EnableClientScript="true" ControlToValidate="txtMonto" runat="server" ErrorMessage="Formato de moneda invalido. Debe ser 10.00." ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
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
            <img  src="/Imagenes/messi.png" class="jugador"/>
        </div>
        <div class="hidden-xs col-sm-2 col-md-2"></div>
        </div>
    </div>
     </form>
</asp:Content>
