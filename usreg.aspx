<%@ Page Language="VB" AutoEventWireup="false" CodeFile="usreg.aspx.vb" Inherits="usreg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration Page</title>
    <link href="style2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            width: 256px;
            font-size: 13pt;
        }
        .style3
        {
        }
        .style4
        {
            height: 33px;
        }
        .style8
        {
            width: 256px;
            height: 32px;
            font-size: 13pt;
        }
        .style11
        {
            width: 256px;
            height: 27px;
            font-size: 13pt;
        }
        .style12
        {
            height: 41px;
        }
        .style13
        {
            height: 27px;
            font-size: 13pt;
            width: 162px;
        }
        .style14
        {
            font-size: 13pt;
        }
        .style15
        {
            width: 428px;
        }
        .style16
        {
            height: 32px;
            font-size: 13pt;
            width: 162px;
        }
        .style17
        {
            font-size: 13pt;
            width: 162px;
        }
        .style18
        {
            font-size: 22pt;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="center">
    
    
    <table align="center" class="style15">
        <tr>
            <td align="center" class="style12" colspan="2">
                <h2 class="style18"><u>User Registration</u></h2>
            </td>
        </tr>
        <h3><tr>
            <td class="style13">
                Name</td>
            <td class="style11">
                <asp:TextBox ID="txtname" runat="server" Height="25px" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" 
                    ErrorMessage="Please Enter Your name" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr><tr>
            <td class="style16">
                Occupation</td>
            <td class="style8">
                <asp:DropDownList ID="occu" runat="server" Height="30px" Width="238px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Institute Manager</asp:ListItem>
                    <asp:ListItem>Principal</asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToValidate="occu" Display="Dynamic" 
                    ErrorMessage="Please select occupation" Operator="NotEqual" 
                    SetFocusOnError="True" ValueToCompare="Select">*</asp:CompareValidator>
            </td>
        </tr><tr>
            <td class="style16">
                Username
            </td>
            <td class="style8">
                <asp:TextBox ID="us" runat="server" Width="230px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="us" Display="Dynamic" ErrorMessage="Username is required." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr></h3>
        <h3><tr>
            <td class="style17">
                Email</td>
            <td class="style2">
                <asp:TextBox ID="txtmail" runat="server" Width="230px" Height="25px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmail" Display="Dynamic" 
                    ErrorMessage="Please enter valid email address" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtmail" Display="Dynamic" 
                    ErrorMessage="Please enter email address" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr><tr>
            <td class="style17">
                Mobile no.</td>
            <td class="style2">
                <asp:TextBox ID="txtmno" runat="server" Width="230px" Height="25px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmno" Display="Dynamic" 
                    ErrorMessage="Please enter valid mobile number." SetFocusOnError="True" 
                    ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtmno" Display="Dynamic" 
                    ErrorMessage="Please Enter Mobile number" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr><tr>
            <td class="style17">
                Password</td>
            <td class="style2">
                <asp:TextBox ID="pw" runat="server" Width="230px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="pw" Display="Dynamic" ErrorMessage="Password is required." 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr></h3>
        <h3><tr>
            <td class="style17">
                Confirm Password</td>
            <td class="style2">
                <asp:TextBox ID="cpw" runat="server" TextMode="Password" Width="230px" 
                    Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="cpw" Display="Dynamic" 
                    ErrorMessage="Confirm password is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pw" ControlToValidate="cpw" Display="Dynamic" 
                    ErrorMessage="Both passwords must be same." SetFocusOnError="True">*</asp:CompareValidator>
            </td>
        </tr></h3>
        <tr>
            <td class="style17">
                Security Question</td>
            <td class="style2">
                <asp:DropDownList ID="que" runat="server" Width="238px" Height="30px">
                    <asp:ListItem>Select Question</asp:ListItem>
                    <asp:ListItem>Name of your Highschool</asp:ListItem>
                    <asp:ListItem>Name of your teacher</asp:ListItem>
                    <asp:ListItem>Your nickname</asp:ListItem>
                    <asp:ListItem>Name of your favourite place</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="que" Display="Dynamic" 
                    ErrorMessage="Select Security Question" Operator="NotEqual" 
                    ValueToCompare="Select Question">*</asp:CompareValidator>
            </td>
        </tr><tr>
            <td class="style17">
                Answer</td>
            <td class="style2">
                <asp:TextBox ID="ans" runat="server" Width="230px" Height="25px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="ans" Display="Dynamic" 
                    ErrorMessage="Pleaase Enter your answer" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="2" align="center">
                <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" align="center" colspan="2">
                <br class="style14" />
                <span class="style14">
                <asp:Button ID="Button1" runat="server" Height="38px" Text="Create User" 
                    Width="128px" />
&nbsp;
                <asp:Button ID="Button2" runat="server" Height="38px" Text="Clear" 
                    Width="128px" CausesValidation="False" />
                </span>
                <br class="style14" />
            </td>
        </tr>
        <tr>
            <td class="style4" align="center" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    </div>
    </form>
    </body>
</html>
