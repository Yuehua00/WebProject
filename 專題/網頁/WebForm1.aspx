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
            position: absolute;
            height: 116px;
            top: 55px;
            left: 10px;
            z-index: 1;
        }
        .auto-style5 {
            background-color: #6600CC;
            color: #FFFFFF;
        }
        .auto-style7 {
            text-align: center;
            width: 571px;
        }
        .auto-style8 {
            text-align: center;
            width: 443px;
        }
        .auto-style10 {
            font-size: xx-large;
        }
        .auto-style11 {
            font-size: medium;
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
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="帳號" CssClass="auto-style5"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 30px"></asp:TextBox>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="密碼" CssClass="auto-style5"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 30px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" BackColor="Red" CssClass="auto-style10"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm2.aspx" Text="註冊" />
&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登入" />
                    <asp:LinkButton ID="LinkButton1" runat="server" Visible="False" OnClick="Button1_Click" PostBackUrl="~/ad.aspx">進入商店</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="forgotPassBT" runat="server" CssClass="auto-style11" PostBackUrl="~/ForgotPass.aspx">忘記密碼</asp:LinkButton>
                    <br />
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
        <asp:DetailsView ID="clientDetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="clientSqlDataSource1" EmptyDataText="帳號密碼錯誤" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_money" HeaderText="user_money" SortExpression="user_money" />
                <asp:BoundField DataField="user_phone" HeaderText="user_phone" SortExpression="user_phone" />
                <asp:BoundField DataField="user_hint" HeaderText="user_hint" SortExpression="user_hint" />
                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
                <asp:BoundField DataField="user_adress" HeaderText="user_adress" SortExpression="user_adress" />
                <asp:BoundField DataField="user_account" HeaderText="user_account" SortExpression="user_account" />
                <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="clientSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name, user_money, user_phone, user_hint, user_password, user_adress, user_account, user_email FROM userData WHERE (user_password = @user_password) AND (user_account = @user_account)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="user_password" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="user_account" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name, user_hint FROM userData WHERE (user_name = @user_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="user_name" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px" Visible="False">
            <Fields>
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_hint" HeaderText="user_hint" SortExpression="user_hint" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
