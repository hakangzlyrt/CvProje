<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateEducations.aspx.cs" Inherits="CvPROJE.UpdateEducations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 style="font-weight: bold; text-align: center;">DENEYİM GÜNCELLE SAYFASI</h4>
    <br />
    <asp:TextBox ID="txtUpdateEducations" runat="server" CssClass="form-control" placeholder="Eğitim Bilgilerinizi Yazınız."> </asp:TextBox>
    <br />
    <asp:Button ID="btnUpdateEducations" runat="server" Text="EĞİTİM BİLGİLERİNİ KAYDET" CssClass="btn btn-info btn-block" OnClick="btnUpdateEducations_Click"  />
</asp:Content>
