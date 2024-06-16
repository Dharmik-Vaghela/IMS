﻿<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="result.aspx.vb" Inherits="result" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="center">
<table align="center" style="width: 395px; margin-left:25px; margin-right:25px; margin-bottom:25px;">
    <tr>
        <td colspan="2" align=center style="height: 60px"><h2><b><u>Result Calculator</u></b></h2></td>
    </tr>
    <tr>
        <td style="height: 40px; width: 226px">Select Standard</td>
        <td style="height: 40px; width: 273px">
            <asp:DropDownList ID="ddstd" runat="server" Height="35px" Width="243px">
                <asp:ListItem>Select Standard</asp:ListItem>
                <asp:ListItem>KG</asp:ListItem>
                <asp:ListItem>1st</asp:ListItem>
                <asp:ListItem>2nd</asp:ListItem>
                <asp:ListItem>3rd</asp:ListItem>
                <asp:ListItem>4th</asp:ListItem>
                <asp:ListItem>5th</asp:ListItem>
                <asp:ListItem>6th</asp:ListItem>
                <asp:ListItem>7th</asp:ListItem>
                <asp:ListItem>8th</asp:ListItem>
                <asp:ListItem>9th</asp:ListItem>
                <asp:ListItem>10th</asp:ListItem>
                <asp:ListItem>11th</asp:ListItem>
                <asp:ListItem>12th</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="height: 40px">
            <asp:Button ID="Button1" runat="server" Height="30px" Text="Display" 
                Width="90px" CausesValidation="False" />
        </td>
    </tr>
    <tr>
        <td>Enrollment_id<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" ControlToValidate="txtid" Display="Dynamic" 
                ErrorMessage="Please Select Any record." SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="txtid" runat="server" Enabled="False" Height="30px" 
                Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Enabled="False" Height="30px" 
                Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="subb" runat="server" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="s" Display="Dynamic" ErrorMessage="Enter Marks" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="s" runat="server" Height="30px" Visible="False" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="sub0" runat="server" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="s0" Display="Dynamic" ErrorMessage="Enter Marks" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="s0" runat="server" Height="30px" Visible="False" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px">
            <asp:Label ID="sub1" runat="server" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="s1" Display="Dynamic" ErrorMessage="Enter Marks" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="s1" runat="server" Height="30px" Visible="False" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="sub2" runat="server" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="s2" Display="Dynamic" ErrorMessage="Enter Marks" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="s2" runat="server" Height="30px" Visible="False" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="sub3" runat="server" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="s3" Display="Dynamic" ErrorMessage="Enter Marks" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="s3" runat="server" Height="30px" Visible="False" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="sub4" runat="server" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="s4" Display="Dynamic" ErrorMessage="Enter Marks" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="s4" runat="server" Height="30px" Visible="False" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="sub5" runat="server" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="s5" Display="Dynamic" ErrorMessage="Enter Marks" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:TextBox ID="s5" runat="server" Height="30px" Visible="False" Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Total Marks</td>
        <td>
            <asp:TextBox ID="total" runat="server" Enabled="False" Height="30px" 
                Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Percentage</td>
        <td>
            <asp:TextBox ID="per" runat="server" Enabled="False" Height="30px" 
                Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Grade</td>
        <td>
            <asp:TextBox ID="grade" runat="server" Enabled="False" Height="30px" 
                Width="235px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="Button2" runat="server" Height="40px" Text="Calculate" 
                Width="90px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="40px" Text="Submit" 
                Width="90px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                ForeColor="Black" AllowPaging="True">
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

