<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="網頁.ForgotPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            font-size: medium;
            height: 29px;
            width: 481px;
        }
        .auto-style7 {
            width: 224px;
        }
        .auto-style8 {
            height: 29px;
            width: 224px;
        }
        .auto-style9 {
            font-size: medium;
            width: 481px;
        }
        .auto-style10 {
            width: 481px;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style13 {
            font-size: large;
        }
    </style>
</head>
<body style="background-image: url('forgot.jpg'); background-repeat: repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <span class="auto-style3"><strong>忘記密碼</strong></span><br class="auto-style3" />
    <table class="auto-style1" style="position: relative">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9"><span class="auto-style4"><strong>
                <asp:Label ID="Label2" runat="server" Text="帳號"></asp:Label>
                </strong>&nbsp;&nbsp; </span>
                <asp:TextBox ID="accountTB" runat="server" CssClass="auto-style4"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9"><strong><span class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="電子郵件"></asp:Label>
                </span>&nbsp;<asp:TextBox ID="emailTB" runat="server" CssClass="auto-style4" Width="108px"></asp:TextBox>
                </strong>
                <asp:Label ID="email" runat="server" Text="@gmail.com"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9"><strong>
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC99" BorderColor="White" CssClass="auto-style12" ForeColor="#0066FF" OnClick="Button1_Click" Text="確認" />
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:SqlDataSource ID="FindOldPass" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_hint], [user_password] FROM [userData] WHERE (([user_account] = @user_account) AND ([user_email] = @user_email))" UpdateCommand="UPDATE userData SET user_password = @newpass WHERE (user_email = @user_email) AND (user_account = @user_account)">
                    <SelectParameters>
                        
                        <asp:ControlParameter ControlID="accountTB" Name="user_account" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="emailTB" Name="user_email" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="NewPassTB" Name="newpass" PropertyName="Text" />
                        <asp:ControlParameter ControlID="emailTB" Name="user_email" PropertyName="Text" />
                        <asp:ControlParameter ControlID="accountTB" Name="user_account" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style6"><strong>
                <asp:Label ID="hintLB" runat="server" Text="密碼提示" Visible="False"></asp:Label>
                </strong><span class="auto-style4"><strong>&nbsp;&nbsp;
                <asp:Label ID="hint" runat="server" BackColor="#FFCCFF" CssClass="auto-style13" ForeColor="#FF3300" Text="密碼提示問題" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:DetailsView ID="HintDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="FindOldPass" Height="50px" Visible="False" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="user_hint" HeaderText="user_hint" SortExpression="user_hint" />
                        <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
                    </Fields>
                </asp:DetailsView>
            </td>
            <td class="auto-style6"><strong>
                <asp:Label ID="PassInput" runat="server" ClientIDMode="AutoID" Text="請輸入密碼" Visible="False"></asp:Label>
                </strong><span class="auto-style4">&nbsp; </span>
                <asp:TextBox ID="passTB" runat="server" CssClass="auto-style4" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="White" CssClass="auto-style12" ForeColor="#FF0066" OnClick="Button2_Click" Text="重新設定密碼" Visible="False" Width="125px" />
                </strong>&nbsp; <strong>
                <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="White" CssClass="auto-style12" ForeColor="#FF9933" OnClick="Button3_Click" Text="進入商店" Visible="False" Width="95px" />
                <asp:Label ID="WarningLabel" runat="server" Text="WarningLabel" Visible="False"></asp:Label>
                </strong></td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style6"><strong>
                <asp:Label ID="NewPassLB" runat="server" ClientIDMode="AutoID" Text="設定新密碼" Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="NewPassTB" runat="server" CssClass="auto-style4" Visible="False"></asp:TextBox>
&nbsp;<asp:Button ID="Button4" runat="server" BackColor="#0099FF" BorderColor="White" CssClass="auto-style12" ForeColor="White" OnClick="Button4_Click" Text="確認" Visible="False" />
                </strong></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10"><strong>
                <asp:Label ID="successUp" runat="server" Text="資料更新成功!請重新登入  " Visible="False"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx" Visible="False">登入</asp:LinkButton>
                </strong></td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
