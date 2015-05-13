<%@ Page Title="" Language="C#" MasterPageFile="AdminNested.Master" AutoEventWireup="true" CodeBehind="Jugadores.aspx.cs" Inherits="TP1.Administracion.Jugadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row formContainer formContainerJugadores">
        <div class="hidden-xs col-sm-2 col-md-2"></div>
        <div class="col-xs-12 col-sm-5 col-md-4">
            <div class="container-fluid formulario">
            <form runat="server" class="form-horizontal" action="">
              <div class="form-group">
                <label for="txtNombre" class="col-sm-2 control-label">Nombre</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
                  </div>
              </div>
              <div class="form-group">
                <label for="txtApellido" class="col-sm-2 control-label">Apellido</label>
                <div class="col-sm-10">
                  <asp:TextBox ID="txtApellido" class="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <label for="txtEdad" class="col-sm-2 control-label">Edad</label>
                <div class="col-sm-10">
                  <asp:TextBox ID="txtEdad" class="form-control" placeholder="Edad" runat="server"></asp:TextBox>
                </div>
              </div>
              <div class="form-group">
                <label for="txtEquipo" class="col-sm-2 control-label">Equipo</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList1" class="form-control" placeholder="Equipo" runat="server">
                    </asp:DropDownList>
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
        <div class="hidden-xs col-sm-3 col-md-4">
            <img  src="/Imagenes/messi.png" class="jugador"/>
        </div>
        <div class="hidden-xs col-sm-2 col-md-2"></div>
    </div>
</asp:Content>
