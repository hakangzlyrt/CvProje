<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NewSkills.aspx.cs" Inherits="CvPROJE.NewSkills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 style= "font-weight:bold; text-align:center;" >YETENEK EKLEME SAYFASI</h4>
    <br />
    <asp:TextBox ID="txtSkills" runat="server" CssClass="form-control" placeholder="Yeteneğinizi Yazınız."></asp:TextBox>
    <br />
    <asp:Button ID="btnSaveSkills" runat="server" Text="YETENEĞİ KAYDET" CssClass="btn btn-info btn-block" OnClick="btnSaveSkills_Click"  />
</asp:Content>

