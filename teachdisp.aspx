<%@ Page Language="VB" MasterPageFile="~/mstr.master" AutoEventWireup="false" CodeFile="teachdisp.aspx.vb" Inherits="teachdisp" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="center" style="margin-top:-12%">
<table align="center" 
        style="width: 1017px; margin-left:25px; margin-right:25px; margin-bottom:25px; height: 172px;">
    <tr>
        <td style="height: 25px; width: 209px;">
            <asp:Label ID="Label1" runat="server" 
                Text="Enter Teacher_id :" style="font-size: 13pt"></asp:Label>
            <br />
            <br />
            <span style="font-size: medium; font-weight: bold">or</span><br />
            <br />
            <span style="font-size: 13pt">Enter Name :</span></td>
&nbsp;&nbsp;
    <td style="height: 25px">
        <br />
        <asp:TextBox ID="txt" runat="server" Height="36px"></asp:TextBox>
        &nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="40px" Text="Search" 
            Width="116px" />
        &nbsp;
        <br />
        <asp:TextBox ID="txn" runat="server" Height="36px"></asp:TextBox>
        <br />
        <br />
        </td>
        </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="gv1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                ForeColor="Black" AutoGenerateColumns="False" Visible="False" 
                AllowPaging="True" PageSize="3">
                <RowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Teacher ID">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("teacher_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="E - Mail">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("E_mail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile no">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Mobileno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Of Birth">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Date_of_birth") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Qualification">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Qualification") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Preferable Subjects">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Preferable_subjects") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Preferable Class">
                   <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Preferable_class") %>'></asp:Label>
                        </ItemTemplate> 
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Experience">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Experience") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("City") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PIN">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("PIN") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Year Of Joining">
                    <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("Year_of_joining") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" 
                                ImageUrl='<%# bind("Imageurl") %>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </td>
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="msg" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Back" 
                Width="90px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="40px" Text="Clear" 
                Width="90px" />
        </td>
    </tr>
   </tr>
   </table>
</div>
</asp:Content>

