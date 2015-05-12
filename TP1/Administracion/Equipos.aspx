﻿<%@ Page Title="" Language="C#" MasterPageFile="AdminNested.Master" AutoEventWireup="true" CodeBehind="Equipos.aspx.cs" Inherits="TP1.Administracion.Equipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row formContainer">
        <div class="col-md-2">
        </div>
        <div class="col-md-4">
            <div class="container-fluid formulario">
            <form id="formEquipos" runat="server" class="form-horizontal" action="">
              <div class="form-group">
                <label for="InputName" class="col-sm-2 control-label">Nombre de Equipo</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtNombre" placeholder="Nombre" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator4" EnableClientScript="true" runat="server" ErrorMessage="El Nombre del Equipo es obligatorio" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="form-group">
                <label for="ddlTorneo" class="col-sm-2 control-label">Torneo</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddlTorneo" class="form-control" placeholder="Elija toneo" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator6" EnableClientScript="true" runat="server" ErrorMessage="El torneo es obligatorio" ControlToValidate="ddlTorneo" >
                    </asp:RequiredFieldValidator>
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
        <div class="colImagen col-md-4">
            <img  src="/Imagenes/messi.png" class="jugador"/>
        </div>
        <div class="col-md-2">
        </div>
    </div>
     </form>
</asp:Content>
