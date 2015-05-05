<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Equipos.aspx.cs" Inherits="TP1.Equipos.Equipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form role="form" id="formEquipos" runat="server" action="" method="post" >
        <div class="col-lg-6">
          <div class="form-group">
            <label for="InputName">Nombre de Equipo</label>
            <div class="input-group">
                <asp:TextBox ID="txtName" placeholder="Ingrese Nombre" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator1" EnableClientScript=true runat="server" ErrorMessage="El Nombre Completo es obligatorio" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
            <label for="InputEmail">Torneo</label>
            <div class="input-group">
                <asp:TextBox ID="txtEmail" placeholder="Ingrese Email" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator2" EnableClientScript=true runat="server" ErrorMessage="El email es obligatorio" ControlToValidate="txtEmail" >
                </asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
            <label for="InputMessage">Monto abonado</label>
            <div class="input-group">
                <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" EnableClientScript="true" ControlToValidate="txtMonto" runat="server" ErrorMessage="El Monto es obligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" EnableClientScript="true" ControlToValidate="txtMonto" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
            </div>
          </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Button" class="btn btn-info pull-right"/>
        </div>
    </form>
</asp:Content>
