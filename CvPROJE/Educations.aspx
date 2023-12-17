<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Educations.aspx.cs" Inherits="CvPROJE.Educations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="table table-bordered">
    <tr>
        <th class="text-center">ID</th>
        <th class="text-center">EĞİTİM BİLGİLERİ</th>
        <th class="text-center">İŞLEMLER</th>
        
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr>
                <td class="text-center"><%# Eval("ID")  %></td>
                <td class="text-center"><%# Eval("EDUCATIONS")  %></td>    
                 <td class="text-center"><asp:HyperLink ID="btnUpdate" runat="server" NavigateUrl='<%# "UpdateEducations.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-success">EĞİTİM BİLGİLERİNİ GÜNCELLE</asp:HyperLink ></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    
</table>
</asp:Content>
