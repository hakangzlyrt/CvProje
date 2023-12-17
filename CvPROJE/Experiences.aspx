<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Experiences.aspx.cs" Inherits="CvPROJE.Experiences" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
            <th class="text-center">ID</th>
            <th class="text-center">DENEYİMLER</th>
            <th class="text-center">İŞLEMLER</th>

        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="text-center"><%# Eval("ID")  %></td>
                    <td class="text-center"><%# Eval("WORKEXPERIENCES")  %></td>
                    <td class="text-center">
                        <asp:HyperLink ID="btnUpdate" runat="server" NavigateUrl='<%# "UpdateExperiences.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-success">DENEYİMİ GÜNCELLE</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
</asp:Content>
