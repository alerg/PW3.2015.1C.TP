<%@ Page Title="" Language="C#" MasterPageFile="~/Equipos/EquiposNested.Master" AutoEventWireup="true" CodeBehind="contacto-resultado.aspx.cs" Inherits="TP1.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row containerWithHeader backgroundPasto">
        <div class="hidden-xs col-sm-2 col-md-2"></div>
        <div class="col-xs-12 col-sm-5 col-md-6">
            <div class="container-fluid formulario">
                <div class="alert alert-success alert-dismissible" role="alert">
                  Nuestro personal se pondrá en contacto con usted a la mayor brevedad posible.
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <a href="ListaEquipos.aspx">Ir al inicio</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="hidden-xs col-sm-3 col-md-3">
            <img alt="messi" src="/Imagenes/messi.png" class="img-responsive"/>
        </div>
        <div class="hidden-xs col-sm-2 col-md-2"></div>
    </div>
</asp:Content>