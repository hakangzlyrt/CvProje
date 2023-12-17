<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CvPROJE.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
    <tr>
        <th class="text-center">ID</th>
        <th class="text-center">AD SOYAD</th>
        <th class="text-center">MAİL</th>
        <th class="text-center">KONU</th>
        <th class="text-center">MESAJI GÖR</th>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr>
                <td class="text-center"><%# Eval("ID")  %></td>
                <td class="text-center"><%# Eval("NAMESURNAME")  %></td>
                <td class="text-center"><%# Eval("MAIL")  %></td>
                <td class="text-center"><%# Eval("SUBJECT")  %></td>
                <td class="text-center">
                    <asp:HyperLink ID="btnMessageDetail" runat="server" NavigateUrl='<%# "MessageDetails.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">MESAJI GÖR</asp:HyperLink >
                </td>           
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    
</table>

</asp:Content>
