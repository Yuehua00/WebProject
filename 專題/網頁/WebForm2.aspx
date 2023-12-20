<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="網頁.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            font-size: larger;
            background-color: #FF9900;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 542px;
        }
        .auto-style5 {
            width: 85px;
        }
        .auto-style6 {
            font-size: medium;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            background-color: #FFFFFF;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style12 {
            width: 542px;
            height: 61px;
        }
        .auto-style13 {
            width: 85px;
            height: 61px;
        }
        .auto-style14 {
            height: 61px;
        }
        .auto-style15 {
            width: 542px;
            height: 62px;
        }
        .auto-style16 {
            width: 85px;
            height: 62px;
        }
        .auto-style17 {
            height: 62px;
        }
        .auto-style18 {
            width: 542px;
            height: 78px;
        }
        .auto-style19 {
            width: 85px;
            height: 78px;
        }
        .auto-style20 {
            height: 78px;
        }
        .auto-style21 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="background-image: url('螢幕擷取畫面 2023-12-11 150934.png'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size:cover">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style2">註冊成為會員</span></strong></div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="address" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="姓名"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="nameTextBox1" runat="server" CssClass="auto-style21" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="電話"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="phoneTextBox2" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="地址"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="cityDropDownList1" runat="server">
                        <asp:ListItem Value="taipei">台北</asp:ListItem>
                        <asp:ListItem Value="newtaipei">新北</asp:ListItem>
                        <asp:ListItem Value="keelung">基隆</asp:ListItem>
                        <asp:ListItem Value="taoyum">桃園</asp:ListItem>
                        <asp:ListItem Value="hsinchu">新竹</asp:ListItem>
                        <asp:ListItem Value="maioli">苗栗</asp:ListItem>
                        <asp:ListItem Value="taichung">台中</asp:ListItem>
                        <asp:ListItem Value="changhua">彰化</asp:ListItem>
                        <asp:ListItem Value="nantou">南投</asp:ListItem>
                        <asp:ListItem Value="yunlin">雲林</asp:ListItem>
                        <asp:ListItem Value="chiayi">嘉義</asp:ListItem>
                        <asp:ListItem Value="kaohsiung">高雄</asp:ListItem>
                        <asp:ListItem Value="tainan">台南</asp:ListItem>
                        <asp:ListItem Value="pingtung">屏東</asp:ListItem>
                        <asp:ListItem Value="yilan">宜蘭</asp:ListItem>
                        <asp:ListItem Value="hualien">花蓮</asp:ListItem>
                        <asp:ListItem Value="taitung">台東</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text="市"></asp:Label>
&nbsp;
                    <asp:DropDownList ID="areaDropDownList1" runat="server">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                        <asp:ListItem>E</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>G</asp:ListItem>
                        <asp:ListItem>H</asp:ListItem>
                        <asp:ListItem>I</asp:ListItem>
                        <asp:ListItem>J</asp:ListItem>
                        <asp:ListItem>K</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>N</asp:ListItem>
                        <asp:ListItem>O</asp:ListItem>
                        <asp:ListItem>P</asp:ListItem>
                        <asp:ListItem>Q</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style7" Text="區"></asp:Label>
&nbsp;
                    <asp:DropDownList ID="roadDropDownList2" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style7" Text="路"></asp:Label>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text="電子郵件"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="gmailTextBox3" runat="server" Width="145px"></asp:TextBox>
&nbsp;<asp:Label ID="Label10" runat="server" CssClass="auto-style6" Text="@gmail.com"></asp:Label>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text="帳號"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="accountTextBox3" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="密碼"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="passwordTextBox3" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:SqlDataSource ID="userSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO userData(user_name, user_password, user_phone, user_money, user_adress, user_account, user_email, user_hint) VALUES (@user_name, @user_password, @user_phone, @user_money, @user_adress, @user_account, @user_email, @user_hint)" SelectCommand="SELECT user_name, user_password, user_phone, user_money, user_adress, user_account, user_email, user_hint FROM userData WHERE (user_name = @user_name)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="nameTextBox1" Name="user_name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="passwordTextBox3" Name="user_password" PropertyName="Text" />
                            <asp:ControlParameter ControlID="phoneTextBox2" Name="user_phone" PropertyName="Text" />
                            <asp:Parameter Name="user_money" />
                            <asp:ControlParameter ControlID="address" Name="user_adress" PropertyName="Text" />
                            <asp:ControlParameter ControlID="accountTextBox3" Name="user_account" PropertyName="Text" />
                            <asp:ControlParameter ControlID="gmailTextBox3" Name="user_email" PropertyName="Text" />
                            <asp:ControlParameter ControlID="hintTextBox4" Name="user_hint" PropertyName="Text" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter Name="user_name" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style7" Text="密碼提示"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="hintTextBox4" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                <td class="auto-style20">
                    <asp:Button ID="checkButton1" runat="server" BackColor="#FF9900" CssClass="auto-style8" Text="註冊" OnClick="checkButton1_Click" />
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
