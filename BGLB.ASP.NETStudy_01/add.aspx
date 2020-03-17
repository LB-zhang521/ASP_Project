<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="BGLB.ASP.NETStudy_01.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">学号：</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="168px"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Label">姓名：</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="168px"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Label">性别：</asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Selected="True">男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label4" runat="server" Text="Label">年龄：</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="168px"></asp:TextBox><br />
            <asp:Label ID="Label5" runat="server" Text="Label">备注：</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="168px"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" Width="100px"/>
        </div>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField HeaderText="学号" DataField="sId">
                    <HeaderStyle Height="20px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="姓名" DataField="sName" />
                <asp:BoundField HeaderText="年龄" DataField="sAge" />
                <asp:BoundField HeaderText="性别" DataField="sGender" />
                <asp:BoundField HeaderText="备注" DataField="sRemark" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

            <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
        </asp:GridView>


</asp:Content>
