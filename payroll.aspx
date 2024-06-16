<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="payroll.aspx.vb" Inherits="payroll" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="center" style="margin-top:-5%">
    <table align="center" style="width: 436px; margin-left:25px; margin-right:25px; margin-bottom:25px;">
        <tr>
            <td colspan="2" align=center style="height: 80px"><b><u><h2>Staff Payroll</h2></u></b></td>
        </tr>
        <tr>
            <td style="width: 176px">Name<br />
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" 
                    Display="Dynamic" ErrorMessage="Please Select Any Record." 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td><asp:TextBox ID="txtname" runat="server" Height="30px" Width="235px" 
                    Enabled="False"></asp:TextBox></td>    
        </tr>
        <tr>
            <td style="width: 176px">Teacher id</td>
            <td><asp:TextBox ID="txtid" runat="server" Height="30px" Width="235px" 
                    Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 176px">Date of Payment</td>
            <td><asp:TextBox ID="txtdate" runat="server" Height="30px" Width="235px" 
                    Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 176px">Basic Salary<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbsal" Display="Dynamic" ErrorMessage="Enter Basic Salary" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                             </td>
            <td><asp:TextBox ID="tbsal" runat="server" Height="30px" Width="235px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 176px">HRA</td>
            <td><asp:TextBox ID="thra" runat="server" Enabled="False" Height="30px" 
                    Width="235px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 176px">TA</td>
            <td><asp:TextBox ID="tta" runat="server" Enabled="False" Height="30px" 
                    Width="235px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 176px">DA</td>
            <td><asp:TextBox ID="tda" runat="server" Enabled="False" Height="30px" 
                    Width="235px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 176px">PF</td>
            <td><asp:TextBox ID="tpf" runat="server" Enabled="False" Height="30px" 
                    Width="235px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 176px">Net Salary</td>
            <td><asp:TextBox ID="tnsal" runat="server" Enabled="False" Height="30px" 
                    Width="235px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 176px; height: 21px;"></td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 64px">
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Calculate" 
                    Width="90px" Enabled="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="40px" Text="Submit" 
                    Width="90px" Enabled="False" />
            </td>
        </tr>
        <tr>
            <td style="height: 15px;" align="center" colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 15px;" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 15px;" align="center" colspan="2">
                <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    ForeColor="Black" PageSize="5" AllowPaging="True">
                    <RowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Teacher ID">
                            <ItemTemplate>
                                <asp:Label ID="lblid" runat="server" Text='<%# bind("teacher_id") %>'></asp:Label>
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

