<%@ Page Language="VB" AutoEventWireup="false" CodeFile="forpw.aspx.vb" Inherits="forpw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Recovery Page</title>
    <link href="stylefw.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 88%;
            height: 238px;
        }
        .style2
        {
        }
        .style3
        {
            height: 54px;
        }
        .style9
        {
            font-size: 22pt;
            font-weight: bold;
        }
        .style10
        {
            height: 35px;
            font-size: 13pt;
        }
        .style11
        {
            height: 35px;
            width: 280px;
        }
        .style12
        {
            height: 36px;
            font-size: 13pt;
        }
        .style13
        {
            height: 36px;
            width: 280px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="center">
    
        <table align="center" class="style1">
            <tr>
                <td align="center" colspan="2" class="style3"><h2 class="style9"><u>Password Recovery</u></h2>
                </td>
            </tr>
            <h3>
            <tr>
                <td class="style10">
                    Enter Your Username</td>
                <td class="style11">
                    <asp:TextBox ID="fus" runat="server" Width="235px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Security Question</td>
                <td class="style13">
                    <asp:DropDownList ID="fque" runat="server" Width="243px" Height="35px">
                        <asp:ListItem>Select Question</asp:ListItem>
                        <asp:ListItem>Name of your Highschool</asp:ListItem>
                        <asp:ListItem>Name of your teacher</asp:ListItem>
                        <asp:ListItem>Your nickname</asp:ListItem>
                        <asp:ListItem>Name of your favourite place</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Your Answer</td>
                <td class="style13">
                    <asp:TextBox ID="fans" runat="server" Width="235px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Height="33px" Text="Verify" 
                        Width="94px" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2">
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
            </tr></h3>
            </table>
    
    </div>
    </form>
</body>
</html>
