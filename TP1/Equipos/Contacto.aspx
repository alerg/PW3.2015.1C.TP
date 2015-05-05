<%@ Page Title="" Language="C#" MasterPageFile="~/Equipos/EquiposNested.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="TP1.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form role="form" id="formContact" runat="server" action="" method="post" >
        <div class="col-lg-6">
          <div class="form-group">
            <label for="InputName">Nombre Completo</label>
            <div class="input-group">
                <asp:TextBox ID="txtName" placeholder="Ingrese Nombre" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator1" EnableClientScript=true runat="server" ErrorMessage="Campo Nombre Completo obligatorio" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
            <label for="InputEmail">Email</label>
            <div class="input-group">
                <asp:TextBox ID="txtEmail" placeholder="Ingrese Email" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator2" EnableClientScript=true runat="server" ErrorMessage="Campo Email obligatorio" ControlToValidate="txtEmail" >
                </asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
            <label for="InputMessage">Comentario</label>
            <div class="input-group">
                <textarea ID="txtAMensaje" cols="20" rows="5" class="form-control"></textarea>
            </div>
          </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Button" class="btn btn-info pull-right"/>
        </div>
    </form>    
</asp:Content>
