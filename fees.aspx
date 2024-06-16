<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="fees.aspx.vb" Inherits="fees" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="center" style="margin-top:-2%">
    <table align="center" 
        style="width: 395px; margin-left:25px; margin-right:25px; margin-bottom:25px;">
        <tr>
            <td align="center" colspan="2" style="height: 80px"><h2><b><u>Fees Management</u></b></h2></td>
        </tr>
        <tr>
            <td style="width: 144px; height: 35px">Name<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="id" Display="Dynamic" 
                    ErrorMessage="Please Select any record." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="name" runat="server" Height="30px" Width="235px" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 144px; height: 35px">Enrollment ID</td>
            <td style="height: 35px">
                <asp:TextBox ID="id" runat="server" Height="30px" Width="235px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 144px; height: 35px">Date</td>
            <td style="height: 35px">
                <asp:TextBox ID="txtdate" runat="server" Enabled="False" Height="30px" 
                    Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 144px; height: 35px">Amount<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtamount" Display="Dynamic" 
                    ErrorMessage="Please Enter Amount." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtamount" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 15px" colspan="2"></td>
        </tr>
        <tr>
            <td style="height: 30px" align="center" colspan="2"><b>For Search Record</b></td>
        </tr>
        <tr>
            <td style="width: 144px; height: 35px">Name</td>
            <td style="height: 35px">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 144px; height: 35px">Enrollment ID</td>
            <td style="height: 35px">
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 65px">
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Display" 
                    Width="90px" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="40px" Text="Submit" 
                    Width="90px" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="40px" Text="Update" 
                    Width="90px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td style="height: 19px" align="center" colspan="2">
                <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 144px; height: 19px;"></td>
            <td style="height: 19px">
                </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    ForeColor="Black" Width="350px" AllowPaging="True" PageSize="5">
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

