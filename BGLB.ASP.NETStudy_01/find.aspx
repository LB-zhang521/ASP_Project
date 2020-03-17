<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="find.aspx.cs" Inherits="BGLB.ASP.NETStudy_01.find" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="52px">
                <asp:ListItem Value="sAll">全部</asp:ListItem>
                <asp:ListItem Value="sId">学号</asp:ListItem>
                <asp:ListItem Value="sName">姓名</asp:ListItem>
                <asp:ListItem Value="sGender">性别</asp:ListItem>
                <asp:ListItem Value="sAge">年龄</asp:ListItem>
                <asp:ListItem Value="sRemark">备注</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="168px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查询" Width="63px" OnClick="Button1_Click" />
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
