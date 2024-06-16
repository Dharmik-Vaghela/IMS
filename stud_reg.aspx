<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="stud_reg.aspx.vb" Inherits="stud_reg" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="center" style="margin-top:2%">
        <table align="center" 
            
            style="width: 418px; height: 948px; margin-right:15px; margin-bottom:-10px; margin-left: 25px;">
        <tr>
            <td colspan="2" align="center" style="height: 62px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="False" 
                    Font-Underline="True" style="font-size: 18pt" Text="Student Registration"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 136px; text-align: left; height: 35px;">
                Enrollment_id</td>
            <td style="width: 185px; height: 35px;">
                <asp:TextBox ID="txtenroll" runat="server" Height="30px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtenroll" Display="Dynamic" 
                    ErrorMessage="Enter Enrollment_id." SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 35px;">
                Name</td>
            <td style="width: 185px; height: 35px;">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Enter Your name." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 40px;">
                Standard</td>
            <td style="width: 185px; height: 40px;">
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
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 74px;">
                Course</td>
            <td style="width: 185px; height: 74px;">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="bca" runat="server" GroupName="c" Text="BCA" 
                    Visible="False" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="bcom" runat="server" GroupName="c" Text="B.Com" 
                    Visible="False" />
                <asp:Button ID="Button6" runat="server" Height="30px" Text="Select Course" 
                    Width="140px" />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; height: 35px; text-align: left;">
                E-mail</td>
            <td style="width: 185px; height: 35px">
                <asp:TextBox ID="txtmail" runat="server" Height="30px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtmail" Display="Dynamic" ErrorMessage="Enter E-mail." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmail" Display="Dynamic" 
                    ErrorMessage="Enter Valid E-mail id." SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; height: 35px; text-align: left;">
                Mobile no</td>
            <td style="width: 185px; height: 35px;">
                <asp:TextBox ID="txtmno" runat="server" Height="30px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtmno" Display="Dynamic" ErrorMessage="Enter Mobile no." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmno" Display="Dynamic" 
                    ErrorMessage="Enter Valid Mobile no." SetFocusOnError="True" 
                    ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 36px;">
                Address</td>
            <td style="width: 185px; height: 36px;">
                <asp:TextBox ID="txtadd" runat="server" Height="30px" Width="235px" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtadd" Display="Dynamic" ErrorMessage="Enter Address." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 136px; text-align: left; height: 33px;">
                Gender</td>
            <td style="width: 185px; height: 33px;">
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="m" runat="server" GroupName="g" Text="Male" />
                &nbsp;&nbsp;
                <asp:RadioButton ID="f" runat="server" GroupName="g" Text="Female" />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; height: 35px; text-align: left;">
                Date of Birth</td>
            <td style="width: 185px; height: 35px">
                <asp:TextBox ID="txtdob" runat="server" Height="30px" Width="235px">DD-MM-YYYY</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtdob" Display="Dynamic" 
                    ErrorMessage="Enter Date of birth." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 40px;">
                Caste</td>
            <td style="width: 185px; height: 40px;">
                <asp:DropDownList ID="txtcaste" runat="server" Height="35px" Width="243px" 
                    style="margin-bottom: 0px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>SC/ST</asp:ListItem>
                    <asp:ListItem>OBC</asp:ListItem>
                    <asp:ListItem>General</asp:ListItem>
                    <asp:ListItem>EWS</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txtcaste" ErrorMessage="Select Category." 
                    Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Select">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 40px;">
                City</td>
            <td style="width: 185px; height: 40px;">
                <asp:DropDownList ID="txtcity" runat="server" Height="35px" Width="243px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem>Amreli</asp:ListItem>
                    <asp:ListItem>Anand</asp:ListItem>
                    <asp:ListItem>Mahesana</asp:ListItem>
                    <asp:ListItem>Bhavnagar</asp:ListItem>
                    <asp:ListItem>Bharuch</asp:ListItem>
                    <asp:ListItem>Vadodara</asp:ListItem>
                    <asp:ListItem>Mahesana</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                    <asp:ListItem>Rajkot</asp:ListItem>
                    <asp:ListItem>Surendranagar</asp:ListItem>
                    <asp:ListItem>Gandhinagar</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtcity" 
                    ErrorMessage="Select City" Operator="NotEqual" SetFocusOnError="True" 
                    ValueToCompare="Select">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 35px;">
                PIN</td>
            <td style="width: 185px; height: 35px;">
                <asp:TextBox ID="txtpin" runat="server" Height="30px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="Enter PIN code." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 41px;">
                Year of joining</td>
            <td style="width: 185px; height: 41px; margin-left: 320px;">
                <asp:TextBox ID="txtyear" runat="server" Height="30px" Width="235px">YYYY</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtyear" Display="Dynamic" 
                    ErrorMessage="Enter Year of joining." SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 136px; text-align: left; height: 41px;">
                Image</td>
            <td style="width: 185px; height: 41px; margin-left: 320px;">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="243px" />
            </td>
        </tr>
        <tr>
            <td align="center" style="text-align: center;" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Insert" Height="40px" 
                    Width="90px" />
&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Update" Height="40px" 
                    Width="90px" />
&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Text="Delete" Height="40px" 
                    Width="90px" CausesValidation="False" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Search" Height="40px" 
                    Width="90px" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td align="center" style="height: 68px;" colspan="2">
                <span style="color: #000000">For Teacher Registration</span>
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
                    NavigateUrl="~/teach_reg.aspx" Enabled="False">Click Here</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
        </tr>
    </table></div></div>
</asp:Content>

