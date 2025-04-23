<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="ExamenFinal.CapaVista.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="categoriass" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="CategoriaId">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GestionPlantasConnectionString2 %>" ProviderName="<%$ ConnectionStrings:GestionPlantasConnectionString2.ProviderName %>" SelectCommand="SELECT [CategoriaId], [Nombre] FROM [Categorias]"></asp:SqlDataSource>
<asp:DataList ID="DataList1" runat="server" DataKeyField="PlantaId" DataSourceID="SqlDataSource1" Width="506px">
    <ItemTemplate>
        PlantaId:
        <asp:Label ID="PlantaIdLabel" runat="server" Text='<%# Eval("PlantaId") %>' />
        <br />
        NombreComun:
        <asp:Label ID="NombreComunLabel" runat="server" Text='<%# Eval("NombreComun") %>' />
        <br />
        NombreCientifico:
        <asp:Label ID="NombreCientificoLabel" runat="server" Text='<%# Eval("NombreCientifico") %>' />
        <br />
        Descripcion:
        <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
        <br />
        FechaRegistro:
        <asp:Label ID="FechaRegistroLabel" runat="server" Text='<%# Eval("FechaRegistro") %>' />
        <br />
        CategoriaId:
        <asp:Label ID="CategoriaIdLabel" runat="server" Text='<%# Eval("CategoriaId") %>' />
        <br />
        Stock:
        <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
        <br />
        Precio:
        <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
        <br />
        FrecuenciaRiego:
        <asp:Label ID="FrecuenciaRiegoLabel" runat="server" Text='<%# Eval("FrecuenciaRiego") %>' />
        <br />
        Clima:
        <asp:Label ID="ClimaLabel" runat="server" Text='<%# Eval("Clima") %>' />
        <br />
        Activo:
        <asp:Label ID="ActivoLabel" runat="server" Text='<%# Eval("Activo") %>' />
        <br />
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionPlantasConnectionString %>" SelectCommand="SELECT * FROM [Plantas] WHERE ([CategoriaId] = @CategoriaId)">
    <SelectParameters>
        <asp:ControlParameter ControlID="categoriass" DefaultValue="1" Name="CategoriaId" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
