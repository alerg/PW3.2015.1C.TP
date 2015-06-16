<%@ Page Title="" Language="C#" MasterPageFile="~/Equipos/EquiposNested.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="TP1.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row containerWithHeader backgroundPasto">
        <div class="hidden-xs col-sm-2 col-md-2"></div>
        <div class="col-xs-12 col-sm-5 col-md-6">
            <div class="container-fluid formulario">
            <form id="formContact" runat="server" class="form-horizontal" action="">
                <input type="hidden" id="currentPage" value="contacto"/>
                <div class="form-group">
                    <label for="InputName" class="col-sm-2 control-label">Nombre</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtName" placeholder="Ingrese Nombre" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator1" EnableClientScript="true" runat="server" ErrorMessage="Campo Nombre Completo obligatorio" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail" class="col-sm-2 control-label">E-mail</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtEmail" placeholder="Ingrese Email" class="form-control" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator CssClass="alert" Display="Dynamic" ID="RegularExpressionValidator1" EnableClientScript="true" 
                            runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="Email incorrecto"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator2" EnableClientScript="true" 
                            runat="server" ErrorMessage="Campo Email obligatorio" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputMessage" class="col-sm-2 control-label">Comentario</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtAMensaje" runat="server" placeholder="Ingrese comentario" 
                            class="form-control" Rows="2" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator3" EnableClientScript="true" runat="server" 
                            ErrorMessage="El comentario es un elemento requerido" ControlToValidate="txtAMensaje" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnSubmit" runat="server" Text="Ingresar" class="btn btn-primary" />
                    </div>
                </div> 
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </div>
                </div>
            </form>
            </div>
        </div>
        <div class="hidden-xs col-sm-3 col-md-3">
            <img alt="messi" src="/Imagenes/messi.png" class="img-responsive"/>
        </div>
        <div class="hidden-xs col-sm-2 col-md-2"></div>
    </div>
</asp:Content>
