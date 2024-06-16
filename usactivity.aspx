<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="usactivity.aspx.vb" Inherits="usactivity" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="center" style="margin-top:-12%">
    <table align="center" style="margin-left:25px; margin-right:25px;margin-top:25px; margin-bottom:25px; ">
        <tr>
        <td>
            <asp:GridView ID="gv1" runat="server" BackColor="White" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                GridLines="Vertical" Visible="False" AllowPaging="True" 
                AllowSorting="true">
                <PagerSettings FirstPageText="First" LastPageText="Last" />
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
            </asp:GridView>
        </td>
        </tr>
    </table>
</div>
</asp:Content>

