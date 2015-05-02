<%@ Page Title="" Language="C#" MasterPageFile="~/Equipos/EquiposNested.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="TP1.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form role="form" action="" method="post" >
        <div class="col-lg-6">
          <div class="form-group">
            <label for="InputName">Nombre Completo</label>
            <div class="input-group">
              <input type="text" class="form-control" name="InputName" id="InputName" placeholder="Ingrese Nombre" required/>
            </div>
          </div>
          <div class="form-group">
            <label for="InputEmail">Email</label>
            <div class="input-group">
              <input type="email" class="form-control" id="InputEmail" name="InputEmail" placeholder="Ingrese Email" required/>
            </div>
          </div>
          <div class="form-group">
            <label for="InputMessage">Comentario</label>
            <div class="input-group">
              <textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>
            </div>
          </div>
          <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right"/>
        </div>
    </form>    
</asp:Content>
