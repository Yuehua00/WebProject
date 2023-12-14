<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="網頁.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            background-color: #6600CC;
        }
        .auto-style3 {
            background-color: #6600CC;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            background-color: #6600CC;
            color: #FFFFFF;
        }
    </style>
</head>
<body style="background-position: center center; background-size:cover; background-image: url('https://localhost:44332/b1a7659daeaa88290aa1f1705ff3c433.jpg'); background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style2"><strong><span class="auto-style3">歡迎來到茶水間</span></strong></span><br />
        </div>
        <table class="auto-style4" style="position: relative">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="帳號" CssClass="auto-style5"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 30px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="密碼" CssClass="auto-style5"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 30px" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登入" />
                    <asp:LinkButton ID="LinkButton1" runat="server" Visible="False" OnClick="Button1_Click" PostBackUrl="~/Store.aspx">進入商店</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:DetailsView ID="clientDetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="clientSqlDataSource1" EmptyDataText="帳號密碼錯誤" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_money" HeaderText="user_money" SortExpression="user_money" />
                <asp:BoundField DataField="user_phone" HeaderText="user_phone" SortExpression="user_phone" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="clientSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name, user_money, user_phone FROM userData WHERE (user_name = @user_name) AND (user_password = @user_password)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="user_name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="user_password" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
