<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviseData.aspx.cs" Inherits="網頁.ReviseData" %>

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
            width: 100%;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            background-color: #FFFFFF;
        }
        .auto-style5 {
            width: 101px;
        }
        .auto-style6 {
            width: 358px;
        }
        .auto-style17 {
            height: 62px;
        }
        .auto-style22 {
            width: 101px;
            height: 62px;
        }
        .auto-style13 {
            width: 92px;
            height: 61px;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            background-color: #FFFFFF;
        }
        .auto-style14 {
            height: 61px;
            width: 100px;
            background-color: #FFFFFF;
        }
        .auto-style21 {
            margin-left: 0px;
            font-size: medium;
        }
        .auto-style16 {
            width: 92px;
            height: 62px;
            background-color: #FFFFFF;
        }
        .auto-style24 {
            width: 92px;
        }
        .auto-style25 {
            height: 62px;
            width: 100px;
            background-color: #FFFFFF;
        }
        .auto-style26 {
            background-color: #FFFFFF;
            color: #0000FF;
        }
        .auto-style27 {
            width: 351px;
            background-color: #99CCFF;
        }
        .auto-style28 {
            height: 62px;
            width: 351px;
            text-align: center;
            background-color: #99CCFF;
        }
        .auto-style31 {
            width: 351px;
            color: #FF3300;
            background-color: #99CCFF;
        }
        .auto-style32 {
            font-size: medium;
        }
        .auto-style33 {
            width: 100px;
        }
        .auto-style34 {
            width: 351px;
        }
        .auto-style35 {
            width: 351px;
            text-align: center;
            background-color: #99CCFF;
        }
        .auto-style36 {
            width: 100px;
            background-color: #FFFFFF;
        }
        .auto-style37 {
            width: 92px;
            background-color: #FFFFFF;
        }
        .auto-style38 {
            width: 351px;
            text-align: left;
            height: 30px;
        }
        .auto-style39 {
            font-size: large;
        }
        .auto-style40 {
            width: 101px;
            height: 30px;
        }
        .auto-style41 {
            width: 92px;
            height: 30px;
        }
        .auto-style42 {
            width: 100px;
            height: 30px;
        }
        .auto-style43 {
            height: 30px;
        }
        .auto-style44 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style45 {
            background-color: #FFFFFF;
            font-size: medium;
        }
    </style>
</head>
<body style="background-image: url('revise.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size: cover; ">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style3"><strong><span class="auto-style4">修改資料</span></strong></span><br />
            <br />
            <table class="auto-style2" style="position: relative">
                <tr>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="UserData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userData] WHERE (([user_password] = @user_password) AND ([user_account] = @user_account))" UpdateCommand="UPDATE userData SET user_name = @NewName, user_password = @NewPass, user_phone = @NewPhone, user_email = @NewEmail, user_hint = @NewHint WHERE (user_account = @account)" DeleteCommand="DELETE FROM userData WHERE (user_ID = @user_ID)">
                            <DeleteParameters>
                                <asp:ControlParameter Name="user_ID" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="user_password" SessionField="password" Type="String" />
                                <asp:SessionParameter Name="user_account" SessionField="account" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="NewName" Name="NewName" PropertyName="Text" />
                                <asp:ControlParameter ControlID="NewPass" Name="NewPass" PropertyName="Text" />
                                <asp:ControlParameter ControlID="NewPhone" Name="NewPhone" PropertyName="Text" />
                                <asp:ControlParameter ControlID="NewMail" Name="NewEmail" PropertyName="Text" />
                                <asp:ControlParameter ControlID="NewHint" Name="NewHint" PropertyName="Text" />
                                <asp:SessionParameter Name="account" SessionField="account" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style37">您好</td>
                    <td class="auto-style36">
                    <asp:Label ID="OrgAccLB" runat="server" CssClass="auto-style7" Text="帳號"></asp:Label>
                    </td>
                    <td class="auto-style34">&nbsp;</td>
                    <td>
                        <asp:Button ID="delete" runat="server" CssClass="auto-style45" OnClick="delete_Click" Text="刪除帳號" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">
                    <strong>欄位</strong></td>
                <td class="auto-style14">
                    <strong>目前資料</strong></td>
                    <td class="auto-style31"><strong>欲修改資料</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="姓名"></asp:Label>
                    :</td>
                <td class="auto-style14">
                    <asp:Label ID="OrgNameLB" runat="server" CssClass="auto-style26" Text="姓名"></asp:Label>
                &nbsp;
                </td>
                    <td class="auto-style35"><strong>
                    <asp:TextBox ID="NewName" runat="server" CssClass="auto-style21" Width="250px" Height="24px"></asp:TextBox>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label12" runat="server" CssClass="auto-style7" Text="電話"></asp:Label>
                    :</td>
                <td class="auto-style14">
                    <asp:Label ID="OrgTelLB" runat="server" CssClass="auto-style26" Text="電話"></asp:Label>
                &nbsp;
                </td>
                    <td class="auto-style28"><strong>
                    <asp:TextBox ID="NewPhone" runat="server" Width="250px" CssClass="auto-style32" Height="24px"></asp:TextBox>
                        </strong></td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="地址"></asp:Label>
                    :</td>
                <td class="auto-style14">
                    <asp:Label ID="OrgAddLB" runat="server" CssClass="auto-style26" Text="地址"></asp:Label>
                </td>
                    <td class="auto-style27"><strong>
                    <asp:DropDownList ID="cityDropDownList1" runat="server" CssClass="auto-style32" Height="21px">
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
                        </strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text="市"></asp:Label>
                        <strong>
                    <asp:DropDownList ID="areaDropDownList1" runat="server" CssClass="auto-style32" Height="21px">
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
                        </strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style7" Text="區"></asp:Label>
                        <strong>
                    <asp:DropDownList ID="roadDropDownList2" runat="server" CssClass="auto-style32" Height="21px">
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
                        </strong>
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style7" Text="路"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text="電子郵件:"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="OrgEmailLB" runat="server" CssClass="auto-style26" Text="電子郵件"></asp:Label>
                &nbsp;</td>
                    <td class="auto-style35"><strong>
                    <asp:TextBox ID="NewMail" runat="server" Width="145px" CssClass="auto-style32" Height="25px"></asp:TextBox>
                        </strong><asp:Label ID="Label10" runat="server" CssClass="auto-style6" Text="@gmail.com"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="密碼:"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="OrgPassLB" runat="server" CssClass="auto-style26" Text="密碼"></asp:Label>
                &nbsp;
                </td>
                    <td class="auto-style35"><strong>
                    <asp:TextBox ID="NewPass" runat="server" Width="250px" CssClass="auto-style32" Height="24px"></asp:TextBox>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style7" Text="密碼提示:"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:Label ID="OrgHinLB" runat="server" CssClass="auto-style26" Text="密碼提示"></asp:Label>
                &nbsp;
                </td>
                    <td class="auto-style35"><strong>
                    <asp:TextBox ID="NewHint" runat="server" Width="250px" CssClass="auto-style32" Height="24px"></asp:TextBox>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style41"><strong>
                        <asp:Button ID="ConfirmRevise" runat="server" BackColor="#FFCC99" CssClass="auto-style32" ForeColor="Red" OnClick="ConfirmRevise_Click" Text="確認修改" />
                        </strong></td>
                    <td class="auto-style42"><strong>
                        <asp:Button ID="SendRevise" runat="server" BackColor="#FF5050" CssClass="auto-style44" ForeColor="#33CCFF" OnClick="SendRevise_Click" Text="送出修改" Visible="False" />
                        </strong></td>
                    <td class="auto-style38" style="background-color: #FF9999"><strong>
                        <asp:Label ID="ConfirmContexts" runat="server" BackColor="#FF9999" CssClass="auto-style39" ForeColor="#006600" Text="確認修改內容" Visible="False"></asp:Label>
                        </strong></td>
                    <td class="auto-style43"></td>
                </tr>
                <tr>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td class="auto-style42"><strong>
                        <asp:Button ID="ReturnRevise" runat="server" BackColor="White" CssClass="auto-style44" ForeColor="Black" OnClick="ReturnRevise_Click" Text="返回修改" Visible="False" />
                        </strong></td>
                    <td class="auto-style38">
                        <asp:LinkButton ID="BackHome" runat="server" PostBackUrl="~/WebForm1.aspx" Visible="False">返回登入頁面</asp:LinkButton>
                    </td>
                    <td class="auto-style43">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:DetailsView ID="UserDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="UserData" Height="50px" Visible="False" Width="125px">
                            <Fields>
                                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
                                <asp:BoundField DataField="user_phone" HeaderText="user_phone" SortExpression="user_phone" />
                                <asp:BoundField DataField="user_money" HeaderText="user_money" SortExpression="user_money" />
                                <asp:BoundField DataField="user_adress" HeaderText="user_adress" SortExpression="user_adress" />
                                <asp:BoundField DataField="user_account" HeaderText="user_account" SortExpression="user_account" />
                                <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
                                <asp:BoundField DataField="user_hint" HeaderText="user_hint" SortExpression="user_hint" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
