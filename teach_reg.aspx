<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="teach_reg.aspx.vb" Inherits="teach_reg" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="center">
        <table align="center" style="width: 423px; margin-left:25px; margin-right:25px; margin-bottom:25px; height: 765px;">
        <tr>
            <td colspan="2" align="center" style="height: 57px">
                <h2><span style="text-decoration: underline">Teacher</span><u><b> Registration</b></u></h2></td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Enter name." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                Preferable class<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="ddstd" Display="Dynamic" ErrorMessage="Select Standard." 
                    Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Select Standard">*</asp:CompareValidator>
            </td>
            <td style="width: 269px; height: 33px;">
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
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                Preferable Subject<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ControlToValidate="prsub" Display="Dynamic" 
                    ErrorMessage="Enter Preferable Subject." SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="prsub" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; height: 33px; text-align: left;">
                E-mail<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtmail" Display="Dynamic" ErrorMessage="Enter E-mail." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px">
                <asp:TextBox ID="txtmail" runat="server" Height="30px" Width="235px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; height: 33px; text-align: left;">
                Mobile no<asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ControlToValidate="txtmno" Display="Dynamic" 
                    ErrorMessage="Enter E-Mail." SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="txtmno" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                Address<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtadd" Display="Dynamic" ErrorMessage="Enter Address." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="txtadd" runat="server" Height="30px" Width="235px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 215px; text-align: left; height: 33px;">
                Gender</td>
            <td style="width: 269px; height: 33px;">
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="m" runat="server" GroupName="g" Text="Male" />
                &nbsp;&nbsp;
                <asp:RadioButton ID="f" runat="server" GroupName="g" Text="Female" />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; height: 33px; text-align: left;">
                Date of Birth<asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                    runat="server" ControlToValidate="txtdob" Display="Dynamic" 
                    ErrorMessage="Enter Data of Birth." SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px">
                <asp:TextBox ID="txtdob" runat="server" Height="30px" Width="235px">DD-MM-YYYY</asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                Qualification<asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                    runat="server" ControlToValidate="txtqua" Display="Dynamic" 
                    ErrorMessage="Enter Qualificaton." SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="txtqua" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                Experience<asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
                    runat="server" ControlToValidate="txtexp" Display="Dynamic" 
                    ErrorMessage="Enter Experience." SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="txtexp" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                City<asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="Select City." 
                    Operator="NotEqual" SetFocusOnError="True" ValueToCompare="Select">*</asp:CompareValidator>
            </td>
            <td style="width: 269px; height: 33px;">
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
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                PIN<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="Enter Experience." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="txtpin" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                Year of joining<asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                    runat="server" ControlToValidate="txtyear" Display="Dynamic" 
                    ErrorMessage="Enter Year of Joining." SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="txtyear" runat="server" Height="30px" Width="235px">YYYY</asp:TextBox>
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
            <td align="center" style="width: 215px; text-align: left; height: 33px;">
                Teacher_id
                <br />
                (For update and delete only)</td>
            <td style="width: 269px; height: 33px;">
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="text-align: center; height: 55px;" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Insert" Height="40px" 
                    Width="90px" />
                &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="40px" Text="Update" 
                    Width="90px" />
&nbsp;
                <asp:Button ID="Button3" runat="server" CausesValidation="False" Height="40px" 
                    Text="Delete" Width="90px" />
&nbsp;
                <asp:Button ID="Button4" runat="server" CausesValidation="False" Height="40px" 
                    Text="Search" Width="90px" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 46px">
                <asp:Label ID="msg" runat="server"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table></div></div>
</asp:Content>

