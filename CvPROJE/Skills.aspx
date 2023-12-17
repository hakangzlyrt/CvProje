<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Skills.aspx.cs" Inherits="CvPROJE.AboutMe" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th class="text-center">ID</th>
            <th class="text-center">YETENEK</th>
            <th class="text-center">SİL</th>
            <th class="text-center">GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="text-center"><%# Eval("ID")  %></td>
                    <td class="text-center"><%# Eval("SKILLS")  %></td>
                    <td class="text-center"><asp:HyperLink ID="btnSil" runat="server" NavigateUrl='<%# "DeleteSkills.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-danger">SİL</asp:HyperLink ></td>
                    <td class="text-center"><asp:HyperLink ID="btnUpdate" runat="server" NavigateUrl='<%# "UpdateSkills.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-success">GÜNCELLE</asp:HyperLink ></td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
    <a href="NewSkills.aspx" class="btn btn-primary btn-block">YETENEK EKLE</a>
</asp:Content>
