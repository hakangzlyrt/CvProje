<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateSkills.aspx.cs" Inherits="CvPROJE.UpdateSkills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 style="font-weight: bold; text-align: center;">YETENEK GÜNCELLE SAYFASI</h4>
    <br />
    <asp:TextBox ID="txtUpdateSkills" runat="server" CssClass="form-control" placeholder="Yeteneğinizi Yazınız.">
    </asp:TextBox>
    <br />
    <asp:Button ID="btnUpdateSkills" runat="server" Text="YETENEĞİ KAYDET" CssClass="btn btn-info btn-block" OnClick="btnUpdateSkills_Click"/>
</asp:Content>
