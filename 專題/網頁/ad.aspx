<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad.aspx.cs" Inherits="網頁.ad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style10 {
            background-color: #000000;
            font-size: xx-large;
            color: rgb(255, 255, 255);
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            height: 52px;
        }
        .auto-style16 {
            text-align: center;
            height: 52px;
        }
        .auto-style17 {
            text-align: right;
        }
    </style>
</head>
<body style="background-image: url('背景.jpg'); background-repeat: repeat; background-attachment: fixed">
    <form id="form1" runat="server">
        <div class="auto-style11">
            <span class="auto-style10" style="font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">2023年末狂歡！現在購物，享超值折扣！</span></div>
        <table class="auto-style12">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="即日起 至 2023/12/31 23:59"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" Text="輸入"></asp:Label>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text="折扣碼："></asp:Label>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style9" style="font-size: x-large; background-color: #FFFFFF" Text="welcome2024"></asp:Label>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style11">
                    <asp:Image ID="Image1" runat="server" Height="403px" ImageUrl="~/-50.jpg" Width="741px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style17">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Store.aspx">開始購物</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
