﻿<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="teacher_attend.aspx.vb" Inherits="teacher_attend" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="center" style="margin-top:-12%">
    <table align="center" style="width: 436px; margin-left:25px; margin-right:25px; margin-bottom:25px;">
        <tr>
            <td align=center colspan="2" style="height: 60px"><h2><b><u>Teacher Attendance</u></b></h2></td>
        </tr>
        <tr>
            <td style="height: 35px; width: 156px">Teacher id<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    Display="Dynamic" ErrorMessage="Please select any record." 
                    SetFocusOnError="True" ControlToValidate="txtid"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 251px; height: 35px;">
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="235px" 
                    Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 156px">Name</td>
            <td style="width: 251px">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="235px" 
                    Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 156px">Date</td>
            <td style="width: 251px">
                <asp:TextBox ID="txtdate" runat="server" Height="30px" Width="235px" 
                    Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 33px; width: 156px">Attendance</td>
            <td style="width: 251px; height: 33px;">
                &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="pre" runat="server" GroupName="a" 
                Text="Present" />
            &nbsp;&nbsp;
            <asp:RadioButton ID="abs" runat="server" GroupName="a" Text="Absent" />
            </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 156px"></td>
            <td style="width: 251px; height: 22px;">
                </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Submit" 
                    Width="90px" />
                <br />
                <br />
                <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 31px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    ForeColor="Black" AllowPaging="True" PageSize="5">
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

