<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="ExamenFinal.CapaVista.Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionPlantasConnectionString4 %>" SelectCommand="SELECT c.Nombre, COUNT(p.CategoriaId) AS CantidadPlantas FROM Categorias AS c LEFT OUTER JOIN Plantas AS p ON c.CategoriaId = p.CategoriaId GROUP BY c.Nombre"></asp:SqlDataSource>
</asp:Content>
