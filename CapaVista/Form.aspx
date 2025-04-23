<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="ExamenFinal.CapaVista.Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <h2>Registrar Planta</h2>
    <div id="formRegistrarPlanta" runat="server">
        <div class="mb-3">
            <label for="nombreComun" class="form-label">Nombre Común</label>
            <asp:TextBox ID="txtNombreComun" runat="server" CssClass="form-control" placeholder="Ingrese el nombre común" />
        </div>
        <div class="mb-3">
            <label for="descripcion" class="form-label">Descripción</label>
            <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Ingrese la descripción de la planta" />
        </div>
        <div class="mb-3">
            <label for="categoria" class="form-label">Categoría</label>
            <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-select">
                <asp:ListItem Text="Cactáceas" Value="1" />
                <asp:ListItem Text="Suculentas" Value="2" />
                <asp:ListItem Text="Tropicales" Value="3" />
            </asp:DropDownList>
        </div>
        <div class="mb-3">
            <label for="frecuenciaRiego" class="form-label">Frecuencia de Riego</label>
            <asp:TextBox ID="txtFrecuenciaRiego" runat="server" CssClass="form-control" placeholder="Ejemplo: Cada 3 días" />
        </div>
        <div class="mb-3">
            <label for="clima" class="form-label">Clima</label>
            <asp:TextBox ID="txtClima" runat="server" CssClass="form-control" placeholder="Ejemplo: Cálido" />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
</div>
</asp:Content>
