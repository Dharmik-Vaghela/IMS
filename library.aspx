<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="library.aspx.vb" Inherits="library" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="center">
<table align="center" 
            style="width: 422px; margin-left:25px; margin-right:25px; margin-bottom:25px;">
    <tr>
        <td colspan="2" align="center" style="height: 60px"><h2><b><u>Library</u></b></h2></td>
    </tr>
    <tr>
        <td style="height: 35px; width: 192px">Book ID</td>
        <td style="height: 35px">
            <asp:TextBox ID="bid" runat="server" Height="30px" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 36px; width: 192px">Book Name</td>
        <td style="height: 36px">
            <asp:TextBox ID="bname" runat="server" Height="30px" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 36px; width: 192px">Enrollment ID</td>
        <td style="height: 36px">
            <asp:TextBox ID="txtid" runat="server" Height="30px" 
                Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 192px; height: 35px">Name</td>
        <td style="height: 35px">
            <asp:TextBox ID="txtname" runat="server" Enabled="False" Height="30px" 
                Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 35px; width: 192px">Date Of Transaction</td>
        <td style="height: 35px">
            <asp:TextBox ID="tdate" runat="server" Height="30px" Width="235px" 
                Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 35px; width: 192px">Type Of Transaction</td>
        <td style="height: 35px">&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="br" runat="server" GroupName="t" Text="Borrow" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="su" runat="server" GroupName="t" Text="Submit" />
        </td>
    </tr>
    <tr>
        <td style="height: 20px; width: 192px">
            <asp:TextBox ID="txtstd" runat="server" Height="16px" Visible="False" 
                Width="81px"></asp:TextBox>
        </td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="Button2" runat="server" Height="40px" Text="Search" 
                Width="90px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Submit" 
                Width="90px" />
        </td>
    </tr>
    <tr>
        <td style="height: 15px; width: 192px"></td>
        <td style="height: 15px"></td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="msg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="height: 10px; width: 192px"></td>
        <td style="height: 10px"></td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                ForeColor="Black" Width="417px" PageSize="5" Visible="False" 
                AllowPaging="True">
                <RowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Enrollment ID">
                        <ItemTemplate>
                            <asp:Label ID="lblid" runat="server" Text='<%# bind("Enrollment_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lblname" runat="server" Text='<%# bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Standard">
                        <ItemTemplate>
                            <asp:Label ID="lblstd" runat="server" Text='<%# bind("Standard") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </td>
    </tr>
</table>
</div>
</asp:Content>

