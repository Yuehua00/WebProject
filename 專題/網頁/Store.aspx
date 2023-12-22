<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="網頁.Store" %>

<!DOCTYPE html>
<script runat="server">

    protected void oderItemGridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            background-color: #FFFF00;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style8 {
            width: 351px;
        }
        .auto-style9 {
            font-size: xx-large;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            height: 62px;
        }
        .auto-style11 {
            margin-left: 16px;
        }
        .auto-style12 {
            background-color: #FFFFFF;
        }
        .auto-style13 {
            font-size: small;
        }
        .auto-style14 {
            width: 1364px;
        }
        .auto-style15 {
            height: 62px;
            width: 1364px;
        }
    </style>
</head>
<body style="background-image: url('b1a7659daeaa88290aa1f1705ff3c433.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size:cover">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong><span class="auto-style1">歡迎來到茶水間</span></strong></div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="userShowLB" runat="server" style="background-color: #FFFFFF" Text="將顯示使用者" CssClass="auto-style4"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="logoutBT" runat="server" CssClass="auto-style4" OnClick="logoutBT_Click" Text="登出" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="orderBT" runat="server" CssClass="auto-style4" OnClick="orderBT_Click" Text="前往訂購" />
                    <asp:Button ID="truncateTableBT" runat="server" CssClass="auto-style4" OnClick="truncateTableBT_Click" Text="重建表單" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <strong>
                    <asp:DropDownList ID="drinkList" runat="server" AutoPostBack="True" DataSourceID="drinkData" DataTextField="drink_name" DataValueField="drink_Id" OnPreRender="drinkList_PreRender" CssClass="auto-style4" Height="35px" Width="152px" OnSelectedIndexChanged="drinkList_SelectedIndexChanged">
                    </asp:DropDownList>
                    </strong>
                    <asp:Label ID="drinkPriceLB" runat="server" Text="X元" style="background-color: #FFFFFF" CssClass="auto-style4"></asp:Label>
                    <asp:Label ID="drinkQtLB" runat="server" Text="庫存: X個" style="background-color: #FFFFFF" CssClass="auto-style4"></asp:Label>
        <strong>
        &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="favoriteBT" runat="server" CssClass="auto-style6" OnClick="favoriteBT_Click" Text="收藏" />
                    <asp:Label ID="favoriteLB" runat="server" BackColor="White" ForeColor="#CC0000" Text="成功收藏!" Visible="False"></asp:Label>
                    <asp:LinkButton ID="favoriteLinkBT" runat="server" CssClass="auto-style13" PostBackUrl="~/favorite.aspx" Visible="False">查看我的收藏</asp:LinkButton>
        </strong>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
        <strong>
        <asp:DropDownList ID="cuplist" runat="server" CssClass="auto-style6" Visible="False">
        </asp:DropDownList>
        <asp:Label ID="cuplb" runat="server" CssClass="auto-style5" Text="件" Visible="False"></asp:Label>
        <asp:DropDownList ID="icelist" runat="server" CssClass="auto-style6" Visible="False">
            <asp:ListItem>無包裝</asp:ListItem>
            <asp:ListItem>單獨包裝</asp:ListItem>
            <asp:ListItem>合併包裝</asp:ListItem>
            <asp:ListItem>精緻包裝</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="sweetlist" runat="server" CssClass="auto-style6" Visible="False">
            <asp:ListItem>無需求</asp:ListItem>
            <asp:ListItem>蛋奶素</asp:ListItem>
            <asp:ListItem>全素</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="addItemBT" runat="server" CssClass="auto-style6" Enabled="False" OnClick="Button1_Click" Text="添加" Visible="False" />
        </strong>
        <asp:Button ID="Look" runat="server" CssClass="auto-style4" OnClick="Look_Click" Text="顯示總表" />
        <asp:Button ID="Hide" runat="server" CssClass="auto-style4" OnClick="Hide_Click" Text="隱藏總表" />
        <br />
        <table class="auto-style3">
            <tr>
                <td class="auto-style8">
                    <asp:Image ID="drinkImage1" runat="server" />
                </td>
                <td>
                    <asp:GridView ID="total" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="drink_Id" DataSourceID="sad" ForeColor="#333333" GridLines="None" Visible="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="drink_Id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="drink_Id" />
                            <asp:BoundField DataField="drink_name" HeaderText="品名" SortExpression="drink_name" />
                            <asp:BoundField DataField="drink_price" HeaderText="價格" SortExpression="drink_price" />
                            <asp:BoundField DataField="drink_qt" HeaderText="庫存" SortExpression="drink_qt" />
                            <asp:BoundField DataField="drink_class" HeaderText="類別" SortExpression="drink_class" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:GridView ID="oderItemGridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="orderItem_Id" DataSourceID="orderItemDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="orderItem_Id" InsertVisible="False" SortExpression="orderItem_Id" Visible="False">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderItem_Id") %>'></asp:Label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="editSqlDataSource1" DataTextField="drink_Id" DataValueField="drink_Id" SelectedValue='<%# Bind("drink_id", "{0}") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="editSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_Id], [drink_name] FROM [drinkTable] WHERE ([drink_Id] &gt; @drink_Id)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="drink_Id" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderItem_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="品名" SortExpression="drink_name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("drink_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("drink_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="數量" SortExpression="num">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Text='<%# Bind("num") %>' Width="33px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("num") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="包裝" SortExpression="ice">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("sweet") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("sweet") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="需求" SortExpression="sweet">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ice") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="小計" SortExpression="subtotal">
                                <EditItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("subtotal") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("subtotal") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="drink_id" SortExpression="drink_id" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("drink_id") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("drink_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="外送地址" SortExpression="deliveryAddress">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("deliveryAddress") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("deliveryAddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                    <br />
                    <asp:Label ID="discountLB" runat="server" Text="輸入折扣碼 : " Visible="False"></asp:Label>
                    <asp:TextBox ID="discountTB" runat="server" CssClass="auto-style11" Visible="False" Width="124px"></asp:TextBox>
                    <asp:Button ID="discountBT" runat="server" OnClick="discountBT_Click" Text="確認" Visible="False" />
                    <br />
                    <asp:Label ID="deliveryAddressLB" runat="server" Text="外送地址(自取免填):" Visible="False"></asp:Label>
                    <br />
                    <asp:DetailsView ID="discountDetailsView" runat="server" AutoGenerateRows="False" DataKeyNames="discount_name" DataSourceID="discountSqlDataSource" EmptyDataText="折扣碼錯誤" Height="50px" Visible="False" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="discount_code" HeaderText="discount_code" SortExpression="discount_code" />
                            <asp:BoundField DataField="discount_name" HeaderText="discount_name" ReadOnly="True" SortExpression="discount_name" />
                        </Fields>
                    </asp:DetailsView>
                    <br />
                    <asp:Label ID="cantuseLB" runat="server" CssClass="auto-style12" Text="金額太低，無法使用折扣碼" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="totalLabel" runat="server" CssClass="auto-style9" Text="總價" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="checkBT" runat="server" CssClass="auto-style4" OnClick="checkBT_Click" Text="確認訂購" Visible="False" />
                    <asp:Button ID="cancelBT" runat="server" CssClass="auto-style4" OnClick="cancelBT_Click" Text="取消訂購" Visible="False" />
                    <br />
                    <br />
                    <asp:Label ID="arrorLB" runat="server" BackColor="White" ForeColor="Red" Text="錯誤提示" Visible="False"></asp:Label>
                </td>
            </tr>
            </table>
        <asp:SqlDataSource ID="drinkData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_name], [drink_Id] FROM [drinkTable]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="drinkDataSelect" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_price], [drink_qt] FROM [drinkTable] WHERE ([drink_Id] = @drink_Id)" InsertCommand="INSERT INTO orderTable(order_time, order_userPhone) VALUES (GETDATE(), @order_userPhone)" DeleteCommand="DELETE FROM orderTable WHERE (order_Id = @order_Id)">
            <DeleteParameters>
                <asp:SessionParameter Name="order_Id" SessionField="order_id" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="order_userPhone" SessionField="phone" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="drinkList" Name="drink_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="drinkDetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="drinkDataSelect" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="drink_price" HeaderText="drink_price" SortExpression="drink_price" />
                <asp:BoundField DataField="drink_qt" HeaderText="drink_qt" SortExpression="drink_qt" />
            </Fields>
        </asp:DetailsView>
        <asp:GridView ID="qtCheckGridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="drinkQTDataSource1" GridLines="Horizontal" Visible="False">
            <Columns>
                <asp:TemplateField HeaderText="drink_id" SortExpression="drink_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("drink_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="qtIdLB" runat="server" Text='<%# Bind("drink_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="drink_name" SortExpression="drink_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("drink_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="qtNameLB" runat="server" Text='<%# Bind("drink_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="totalNum" SortExpression="totalNum">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("totalNum") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="totalNumLB" runat="server" Text='<%# Bind("totalNum") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="drink_qt" SortExpression="drink_qt">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("drink_qt") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="checkQtLB" runat="server" Text='<%# Bind("drink_qt") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="drinkQTDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT odderTable.drink_id, SUM(odderTable.num) AS totalNum, drinkTable.drink_name, drinkTable.drink_qt FROM odderTable INNER JOIN drinkTable ON odderTable.drink_id = drinkTable.drink_Id WHERE (odderTable.order_id = @order_id) GROUP BY odderTable.drink_id, drinkTable.drink_name, drinkTable.drink_qt" UpdateCommand="UPDATE drinkTable SET drink_qt = @drink_qt WHERE (drink_Id = @drink_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
            </SelectParameters>
            <UpdateParameters>
                <asp:SessionParameter Name="drink_qt" SessionField="updateQtNum" />
                <asp:SessionParameter Name="drink_Id" SessionField="updateQtId" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="checkDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM orderTable WHERE (order_Id = @order_Id)" SelectCommand="SELECT user_name FROM userData" UpdateCommand="UPDATE userData SET user_money = @user_money WHERE (user_name = @user_name)">
            <DeleteParameters>
                <asp:SessionParameter Name="order_Id" SessionField="order_id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:SessionParameter Name="user_money" SessionField="money" />
                <asp:SessionParameter Name="user_name" SessionField="name" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="orderItemDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO odderTable(drink_id, order_id, num, sweet, ice) VALUES (@drink_id, @order_id, @num, @sweet, @ice)" SelectCommand="SELECT odderTable.orderItem_Id, drinkTable.drink_name, odderTable.num, odderTable.sweet, odderTable.ice, odderTable.num * drinkTable.drink_price AS subtotal, odderTable.drink_id, odderTable.deliveryAddress FROM drinkTable INNER JOIN odderTable ON drinkTable.drink_Id = odderTable.drink_id WHERE (odderTable.order_id = @order_id)" DeleteCommand="DELETE FROM odderTable WHERE (orderItem_Id = @orderItem_Id)" UpdateCommand="UPDATE odderTable SET num = @num, sweet = @sweet, ice = @ice, deliveryAddress = @deliveryAddress WHERE (orderItem_Id = @orderItem_Id)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="oderItemGridView1" Name="orderItem_Id" PropertyName="SelectedDataKey" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="drinkList" Name="drink_id" PropertyName="SelectedValue" />
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
                <asp:ControlParameter ControlID="cuplist" Name="num" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="sweetlist" Name="sweet" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="icelist" Name="ice" PropertyName="SelectedValue" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="oderItemGridView1" Name="num" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="oderItemGridView1" Name="sweet" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="oderItemGridView1" Name="ice" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="oderItemGridView1" Name="deliveryAddress" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="oderItemGridView1" Name="orderItem_Id" PropertyName="SelectedDataKey" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="canaelOrderDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM odderTable WHERE (order_id = @order_id)" SelectCommand="SELECT drink_id FROM odderTable">
            <DeleteParameters>
                <asp:SessionParameter Name="order_id" SessionField="order_id" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sizePackSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sweet], [ice] FROM [odderTable]"></asp:SqlDataSource>
        <asp:DetailsView ID="spDetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="sizePackSqlDataSource1" Height="50px" Visible="False" Width="125px">
            <Fields>
                <asp:BoundField DataField="sweet" HeaderText="sweet" SortExpression="sweet" />
                <asp:BoundField DataField="ice" HeaderText="ice" SortExpression="ice" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="discountSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [discount_code], [discount_name] FROM [discount] WHERE ([discount_code] = @discount_code)">
            <SelectParameters>
                <asp:ControlParameter ControlID="discountTB" Name="discount_code" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="addfavoriteSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO FavoriteTable(drink_Id, user_name) VALUES (@drink_Id, @user_name)" SelectCommand="SELECT FROM drinkTable CROSS JOIN userData CROSS JOIN favorite_Table">
            <InsertParameters>
                <asp:ControlParameter ControlID="drinkList" Name="drink_Id" PropertyName="SelectedValue" />
                <asp:SessionParameter Name="user_name" SessionField="name" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sad" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT drink_Id, drink_name, drink_price, drink_qt, drink_class FROM drinkTable WHERE (drink_Id &lt;&gt; 0)"></asp:SqlDataSource>
    </form>
</body>
</html>
