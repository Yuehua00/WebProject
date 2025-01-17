﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="favorite.aspx.cs" Inherits="網頁.favorite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #FFCCFF;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-top: 0px;
        }
    </style>
</head>
<body style="background-size: cover;background-image: url('b1a7659daeaa88290aa1f1705ff3c433.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div>
            <strong>
            <asp:Label ID="favoriteTitleLB" runat="server" CssClass="auto-style1" Text="Label"></asp:Label>
            <asp:GridView ID="favoriteQueryGridView" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" CellPadding="4" DataKeyNames="drink_Id" DataSourceID="favoriteQuerySqlDataSource" ForeColor="#333333" GridLines="None" CssClass="auto-style3">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="drink_Id" HeaderText="飲品編號" SortExpression="drink_Id" />
                    <asp:BoundField DataField="drink_name" HeaderText="品名" SortExpression="drink_name" />
                    <asp:BoundField DataField="drink_price" HeaderText="價格" SortExpression="drink_price" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </strong>
            <asp:SqlDataSource ID="favoriteQuerySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT FavoriteTable.drink_Id, drinkTable.drink_name, drinkTable.drink_price FROM drinkTable INNER JOIN FavoriteTable ON drinkTable.drink_Id = FavoriteTable.drink_Id WHERE (FavoriteTable.user_name = @name) AND (FavoriteTable.drink_Id &gt; 0)" DeleteCommand="DELETE FROM FavoriteTable WHERE (drink_Id = @drink_Id)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="favoriteQueryGridView" Name="drink_Id" PropertyName="DataKeyNames" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="name" SessionField="name" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
            <strong>
            <asp:LinkButton ID="backToStoreLinkBT" runat="server" BackColor="White" PostBackUrl="~/Store.aspx">返回商店</asp:LinkButton>
            </strong>
        </div>
    </form>
</body>
</html>
