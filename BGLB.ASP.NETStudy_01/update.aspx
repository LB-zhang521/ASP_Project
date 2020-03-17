<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="BGLB.ASP.NETStudy_01.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="sId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField HeaderText="学号" DataField="sId">
                    <HeaderStyle Height="20px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="姓名" DataField="sName" />
                <asp:BoundField HeaderText="年龄" DataField="sAge" />
                <asp:BoundField HeaderText="性别" DataField="sGender" />
                <asp:BoundField HeaderText="备注" DataField="sRemark" />
                <asp:CommandField HeaderText="修改" ShowEditButton="True" />
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
