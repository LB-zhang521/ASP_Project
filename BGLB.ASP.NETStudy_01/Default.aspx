<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BGLB.ASP.NETStudy_01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="52px">
                <asp:ListItem Value="sAll">全部</asp:ListItem>
                <asp:ListItem Value="sId">学号</asp:ListItem>
                <asp:ListItem Value="sName">姓名</asp:ListItem>
                <asp:ListItem Value="sGender">班级</asp:ListItem>
                <asp:ListItem Value="sAge">年龄</asp:ListItem>
                <asp:ListItem Value="sRemark">备注</asp:ListItem>
            </asp:DropDownList><asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="168px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" Width="63px" />
        </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="120px" OnLoad="Button1_Click" Width="288px">
                <Columns>
                    <asp:BoundField HeaderText="学号" DataField="sId" >
                    <HeaderStyle Height="20px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="姓名" DataField="sName" />
                    <asp:BoundField HeaderText="年龄" DataField="sAge" />
                    <asp:BoundField HeaderText="班级" DataField="sGender" />
                    <asp:BoundField HeaderText="备注" DataField="sRemark" />
                </Columns>
            </asp:GridView>
    </form>
</body>
</html>
