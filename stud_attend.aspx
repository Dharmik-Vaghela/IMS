<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="stud_attend.aspx.vb" Inherits="stud_attend" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="center" style="margin-top:-12%">
<table align="center" style="width: 436px; margin-left:25px; margin-right:25px; margin-bottom:25px; height: 342px;">
    <tr>
        <td colspan="2" align=center style="height: 59px"><h2><b><u>Student Attendance</u></b></h2></td>
    </tr>
    <tr>
        <td style="width: 213px; height: 40px;">Select Standard<br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToValidate="ddstd" Display="Dynamic" 
                ErrorMessage="Please Select Standard" Operator="NotEqual" 
                SetFocusOnError="True" ValueToCompare="Select Standard"></asp:CompareValidator>
                             </td>
        <td style="height: 40px">
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
                <asp:ListItem>B.Com</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="height: 15px;" align="center" colspan="2">
                             </td>
    </tr>
    <tr>
        <td style="height: 40px;" align="center" colspan="2">
            <asp:Button ID="Button2" runat="server" Height="30px" Text="Display" 
                Width="90px" CausesValidation="true" />
                             </td>
    </tr>
    <tr>
        <td style="height: 15px;" align="center" colspan="2">
                             </td>
    </tr>
    <tr>
        <td style="width: 213px; height: 35px;">Date</td>
        <td style="height: 35px">
            <asp:TextBox ID="txtdate" runat="server" Height="30px" Width="235px" 
                Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 35px">Enrollment no</td>
        <td style="height: 35px">
            <asp:TextBox ID="txtenroll" runat="server" Height="30px" Width="235px" 
                Enabled="False"></asp:TextBox>
                             </td>
    </tr>
    <tr>
        <td style="height: 35px">Name </td>
        <td style="height: 35px">
            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="235px" 
                Enabled="False"></asp:TextBox></td>
    </tr>
    <tr>
        <td style="height: 35px">Attendance</td>
        <td align="c" style="height: 35px">
            &nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="pre" runat="server" GroupName="a" 
                Text="Present" />
            &nbsp;&nbsp;
            <asp:RadioButton ID="abs" runat="server" GroupName="a" Text="Absent" />
        </td>
    </tr>
    <tr>
        <td style="height: 20px"></td>
        <td align="c" style="height: 20px">
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Submit" 
                Width="90px" />
            <br />
            <asp:Label ID="msg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                ForeColor="Black" Width="419px" AllowPaging="True" PageSize="5">
                <RowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Enrollment_id">
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
&nbsp; </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            For Teacher Attendance
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
                NavigateUrl="~/teacher_attend.aspx" Enabled="False">Click Here</asp:HyperLink>
        </td>
    </tr>
</table>
</div>
</asp:Content>

