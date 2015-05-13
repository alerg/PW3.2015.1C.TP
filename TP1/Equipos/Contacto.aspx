<%@ Page Title="" Language="C#" MasterPageFile="~/Equipos/EquiposNested.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="TP1.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="formContact" runat="server">
        <div class="col-lg-6 formulario">
          <div class="form-group">
            <label for="InputName">Nombre Completo</label>
            <div class="input-group">
                <asp:TextBox ID="txtName" placeholder="Ingrese Nombre" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator1" EnableClientScript="true" runat="server" ErrorMessage="Campo Nombre Completo obligatorio" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
            <label for="InputEmail">Email</label>
            <div class="input-group">
                <asp:TextBox ID="txtEmail" placeholder="Ingrese Email" class="form-control" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator CssClass="alert"  ID="RegularExpressionValidator1" EnableClientScript="true" 
                    runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="Email incorrecto"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator2" EnableClientScript="true" 
                    runat="server" ErrorMessage="Campo Email obligatorio" ControlToValidate="txtEmail" ></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
            <label for="InputMessage">Comentario</label>
            <div class="input-group">
                <asp:TextBox ID="txtAMensaje" runat="server" placeholder="Ingrese comentario" 
                    class="form-control" Rows="2" TextMode="MultiLine"></asp:TextBox>
<%--                <textarea ID="txtAMensaje" placeholder="Ingrese comentario" cols="20" rows="5" class="form-control"></textarea>--%>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator3" EnableClientScript="true" runat="server" 
                    ErrorMessage="El comentario es un elemento requerido" ControlToValidate="txtAMensaje"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Ingresar" class="btn btn-info" 
                  onclick="btnSubmit_Click" />
          </div>
          
        </div>
    </form>
</asp:Content>
