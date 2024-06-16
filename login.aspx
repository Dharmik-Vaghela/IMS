<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="stylelogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <p>
        <br />
    </p>
    <div class="center">
            <h1 bgcolor="blue">Login</h1>
            <form id="form1" runat="server">
               
               <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                   Font-Underline="False" ForeColor="#0033CC" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Height="37px" 
                   Width="310px"></asp:TextBox>
               <br />
               <br />
               <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                   Font-Underline="False" ForeColor="#0033CC" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox2" runat="server" Height="37px" TextMode="Password" 
                   Width="310px"></asp:TextBox>
               <br />
               <br />
               <center>
               <asp:Button ID="btnl" runat="server" Text="Login" Height="45px" Width="167px" />
&nbsp;<br />
                   <asp:Label ID="lbl" runat="server"></asp:Label></center>
               <div class="signup">
                New user?&nbsp; <a href="usreg.aspx">Register</a>
                   <br />
                   <br />
                   Forget Password?&nbsp; <a href="forpw.aspx">Recover Password</a>
               </div>
            </form>
        </div>
</body>
</html>
