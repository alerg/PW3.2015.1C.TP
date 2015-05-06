<%@ Page Title="" Language="C#" MasterPageFile="EquiposNested.Master" AutoEventWireup="true" CodeBehind="Jugadores.aspx.cs" Inherits="TP1.Equipos.Jugadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row jugadoresContainer">
        <div class="col-md-6 pasto">
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
        <div class="col-md-6 pasto">
            <img  src="/Imagenes/messi.png" class="jugador"/>
        </div>
    </div>
</asp:Content>
