<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MessageDetails.aspx.cs" Inherits="CvPROJE.MessageDetails_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h4 style="font-weight: bold; text-align: center;">MESAJ GÖRÜNTÜLEME SAYFASI</h4>
    <br />
    <asp:TextBox ID="txtNameSurname" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtMessage" TextMode="MultiLine" Height="100" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
</asp:Content>
