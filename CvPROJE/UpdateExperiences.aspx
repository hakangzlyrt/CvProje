<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateExperiences.aspx.cs" Inherits="CvPROJE.NewExperiences" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 style="font-weight: bold; text-align: center;">DENEYİM GÜNCELLE SAYFASI</h4>
    <br />
    <asp:TextBox ID="txtUpdateExperiences" runat="server" CssClass="form-control" placeholder="Deneyiminizi Yazınız."> </asp:TextBox>
    <br />
    <asp:Button ID="btnUpdateExperiences" runat="server" Text="DENEYİMİ KAYDET" CssClass="btn btn-info btn-block" OnClick="btnUpdateExperiences_Click"  />

</asp:Content>
