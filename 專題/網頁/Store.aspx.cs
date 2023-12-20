using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace 網頁
{
    public partial class Store : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            drinkDetailsView1.DataBind();
            discountDetailsView.DataBind();
            userShowLB.Text = Session["name"] + " 歡迎光臨<br>您還剩下" + Session["money"] + " 元";
            if (!IsPostBack)
            {
                drinkPriceLB.Text = "";
                drinkQtLB.Text = "";
                drinkImage1.ImageUrl = "./pic/未選取.jpg";
                for(int i = 0; i < 50; i++)
                {
                    cuplist.Items.Insert(i, new ListItem("" + (i + 1), "" + (i + 1)));
                }
                drinkList.SelectedIndex = 0;
                cuplist.SelectedIndex = 0;
                sweetlist.SelectedIndex = 0;
                icelist.SelectedIndex = 0;
            }
            
        }

        protected void drinkList_PreRender(object sender, EventArgs e)
        {
            drinkImage1.ImageUrl = "./pic/" + drinkList.SelectedItem.Text.ToString() + ".jpg";
            if(0 == drinkList.SelectedIndex)
            {
                drinkPriceLB.Text = "";
                drinkQtLB.Text = "";
                addItemBT.Enabled = false;
            }
            else{
                drinkPriceLB.Text = drinkDetailsView1.Rows[0].Cells[1].Text + " 元";
                drinkQtLB.Text = "\t庫存: " + drinkDetailsView1.Rows[1].Cells[1].Text + " 個";
                addItemBT.Enabled = true;
                drinkPriceLB.ForeColor = System.Drawing.Color.Black;
                drinkQtLB.ForeColor = System.Drawing.Color.Black;

                if(Convert.ToInt32(Session["money"]) < Convert.ToInt32(drinkDetailsView1.Rows[0].Cells[1].Text))
                {
                    drinkPriceLB.ForeColor = System.Drawing.Color.Red;
                    drinkPriceLB.Text += "餘額不足";
                    addItemBT.Enabled = false;
                }
                if(Convert.ToInt32(drinkDetailsView1.Rows[0].Cells[1].Text) <= 0)
                {
                    drinkQtLB.ForeColor = System.Drawing.Color.Red;
                    drinkQtLB.Text += "庫存不足";
                    addItemBT.Enabled = false;
                }
            }
        }

        protected void orderBT_Click(object sender, EventArgs e)
        {
            drinkDataSelect.Insert();

            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ClientData.mdf;Integrated Security=True");
            orderCon.Open();
            SqlCommand orderCmd = new SqlCommand("select top 1 order_id from [orderTable] order by order_id Desc", orderCon);
            SqlDataReader orderDr;
            orderDr = orderCmd.ExecuteReader();
            if (orderDr.Read())
            {
                Session["order_id"] = orderDr["order_id"];
                Session["size"] = sweetlist.SelectedValue;
                Session["pack"] = icelist.SelectedValue;
                orderBT.Text = orderDr["order_id"] + " 號訂單";
                orderBT.Enabled = false;

                cuplb.Visible = true;
                cuplist.Visible = true;
                sweetlist.Visible = true;
                icelist.Visible = true;
                addItemBT.Visible = true;
            }
            orderDr.Close();
        }

        protected void truncateTableBT_Click(object sender, EventArgs e)
        {
            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ClientData.mdf;Integrated Security=True");
            orderCon.Open();
            SqlCommand orderTableTruncateCmd = new SqlCommand("truncate table orderTable", orderCon);
            orderTableTruncateCmd.ExecuteNonQuery();
            SqlCommand odderTruncateCmd = new SqlCommand("truncate table odderTable", orderCon);
            odderTruncateCmd.ExecuteNonQuery();
            initial();
        }
        private void initial()
        {
            drinkList.SelectedIndex = 0;
            cuplist.SelectedIndex = 0;
            sweetlist.SelectedIndex = 0;
            icelist.SelectedIndex = 0;
            drinkPriceLB.Text = "";
            drinkQtLB.Text = "";
            drinkImage1.ImageUrl = "./pic/未選取.jpg";

            orderBT.Text = "前往訂購";
            orderBT.Enabled = true;

            cuplb.Visible = false;
            cuplist.Visible = false;
            sweetlist.Visible = false;
            icelist.Visible = false;
            addItemBT.Visible = false;
            addItemBT.Enabled = false;
            oderItemGridView1.Visible = false;
            totalLabel.Visible = false;
            checkBT.Visible = false;
            cancelBT.Visible = false;
            arrorLB.Visible = false;
            discountLB.Visible = false;
            discountBT.Visible = false;
            discountTB.Visible = false;
            cantuseLB.Visible = false;
            discountDetailsView.Visible = false;
        }
        protected void drinkList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            orderItemDataSource1.Insert();
            if (!oderItemGridView1.Visible)
            {
                oderItemGridView1.Visible = true;
            }
            totalLabel.Visible = true;
            checkBT.Visible = true;
            cancelBT.Visible = true;
            discountLB.Visible = true;
            discountBT.Visible = true;
            discountTB.Visible = true;
        }

        
        private void countTotal()
        {
            int total = 0;
            string warmMag = "";
            for(int i = 0; i < oderItemGridView1.Rows.Count; i++)
            {
                if (oderItemGridView1.Rows[i].Cells[4].FindControl("subtotalLabel") != null)
                {
                    total += Convert.ToInt32(((Label)oderItemGridView1.Rows[i].Cells[4].FindControl("subtotalLabel")).Text);
                    if(spDetailsView1.Rows[i].Cells[0].Text == "big")   //沒成功，看之後想不想繼續更改
                    {
                        total += 10;
                    }else if(spDetailsView1.Rows[i].Cells[0].Text == "middle")
                    {
                        total += 5;
                    }
                    if(spDetailsView1.Rows[i].Cells[1].Text == "精緻包裝")
                    {
                        total += 20;
                    }
                }
                cupEditCheck(ref warmMag, i);
            }
            totalLabel.Text = warmMag +  " 總價: " + total + " 元";

            Session["total"] = total;

            if(0 == total)
            {
                checkBT.Enabled = false;
            }
            if(Convert.ToInt32(Session["money"]) < total)
            {
                checkBT.Enabled = false;
                arrorLB.Text = "餘額不足";
                arrorLB.Visible = true;
            }
        }
        private void discountTotal()
        {
            int total = 0 , discounttotal = 0;
            string warmMag = "";
            for (int i = 0; i < oderItemGridView1.Rows.Count; i++)
            {
                if (oderItemGridView1.Rows[i].Cells[4].FindControl("subtotalLabel") != null)
                {
                    total += Convert.ToInt32(((Label)oderItemGridView1.Rows[i].Cells[4].FindControl("subtotalLabel")).Text);
                    if (spDetailsView1.Rows[i].Cells[0].Text == "big")   //沒成功，看之後想不想繼續更改
                    {
                        total += 10;
                    }
                    else if (spDetailsView1.Rows[i].Cells[0].Text == "middle")
                    {
                        total += 5;
                    }
                    if (spDetailsView1.Rows[i].Cells[1].Text == "精緻包裝")
                    {
                        total += 20;
                    }
                }
                cupEditCheck(ref warmMag, i);
            }
            if(total > 50)
            {
                discounttotal = total - 50;
                totalLabel.Text = warmMag + " 總價: " + discounttotal + " 元";
            }
            else
            {
                discounttotal = total;
                totalLabel.Text = warmMag + " 總價: " + discounttotal + " 元";
                cantuseLB.Visible = true;
            }
            

            Session["total"] = total;

            if (0 == total)
            {
                checkBT.Enabled = false;
            }
            if (Convert.ToInt32(Session["money"]) < total)
            {
                checkBT.Enabled = false;
                arrorLB.Text = "餘額不足";
                arrorLB.Visible = true;
            }
        }
        private void cupEditCheck(ref string msg, int i)
        {
            if(oderItemGridView1.Rows[i].Cells[1].FindControl("itemCupLB") != null)
            {
                using(Label tempCupLB = (Label)oderItemGridView1.Rows[i].Cells[1].FindControl("itemCupLB"))
                {
                    if(tempCupLB.Text == "0")
                    {
                        msg = "(錯誤的杯數)";
                        tempCupLB.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        tempCupLB.ForeColor = System.Drawing.Color.Black;
                    }
                }
            }
        }


        protected void editCupTB_TextChanged(object sender, EventArgs e)
        {
            foreach(char ch in ((TextBox)sender).Text)
            {
                if (!Char.IsDigit((ch)))
                {
                    ((TextBox)sender).Text = "0";
                }
            }
        }

        protected void oderItemGridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //countTotal();
        }
        protected void oderItemGridView1_RowDeleted1(object sender, GridViewDeletedEventArgs e)
        {
            if (oderItemGridView1.Rows.Count == 1)
            {
                totalLabel.Visible = false;
                arrorLB.Visible = false;
                checkBT.Enabled = false;
            }
        }

        protected void oderItemGridView1_DataBound(object sender, EventArgs e)
        {
            arrorLB.Text = "";
            arrorLB.Visible = false;
            checkBT.Enabled = true;
            countTotal();
            
            qtCheckGridView1.DataBind();
            qtCheck();

        }
        private void qtCheck()
        {
            int num;
            int qt;
            bool isError = false;
            for(int i = 0; i < qtCheckGridView1.Rows.Count; i++)
            {
                if(qtCheckGridView1.Rows[i].Cells[1].FindControl("qtNameLB") != null &&
                    qtCheckGridView1.Rows[i].Cells[2].FindControl("totalNumLB") != null &&
                    qtCheckGridView1.Rows[i].Cells[3].FindControl("checkQtLB") != null)
                {
                    using(Label qtNameLB = (Label)qtCheckGridView1.Rows[i].Cells[1].FindControl("qtNameLB"), 
                        totalNumLB = (Label)qtCheckGridView1.Rows[i].Cells[2].FindControl("totalNumLB"),
                        checkQtLB = (Label)qtCheckGridView1.Rows[i].Cells[3].FindControl("checkQtLB"))
                    {
                        num = Convert.ToInt32(totalNumLB.Text);
                        qt = Convert.ToInt32(checkQtLB.Text);
                        if(num > qt)
                        {
                            arrorLB.Text += "<br>" + qtNameLB.Text + "庫存不足(剩下" + qt + "杯)";
                            isError = true;
                        }
                    }
                }
            }
            if (isError)
            {
                arrorLB.Visible = true;
                checkBT.Enabled = false;
                
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }

        protected void checkBT_Click(object sender, EventArgs e)
        {
            Session["money"] = Convert.ToInt32(Session["money"]) - Convert.ToInt32(Session["total"]);
            userShowLB.Text = Session["name"] + " 歡迎光臨<br>您還剩下" + Session["money"] + " 元";
            checkDataSource.Update();
            updateQt();
            initial();
        }
        private void updateQt()
        {
            int num;
            int qt;
            for (int i = 0; i < qtCheckGridView1.Rows.Count; i++)
            {
                if (qtCheckGridView1.Rows[i].Cells[0].FindControl("qtIdLB") != null &&
                    qtCheckGridView1.Rows[i].Cells[2].FindControl("totalNumLB") != null &&
                    qtCheckGridView1.Rows[i].Cells[3].FindControl("checkQtLB") != null)
                {
                    using (Label qtIdLB = (Label)qtCheckGridView1.Rows[i].Cells[0].FindControl("qtIdLB"),
                        totalNumLB = (Label)qtCheckGridView1.Rows[i].Cells[2].FindControl("totalNumLB"),
                        checkQtLB = (Label)qtCheckGridView1.Rows[i].Cells[3].FindControl("checkQtLB"))
                    {
                        num = Convert.ToInt32(totalNumLB.Text);
                        qt = Convert.ToInt32(checkQtLB.Text);
                        Session["updateQtId"] = Convert.ToInt32(qtIdLB.Text);
                        Session["updateQtNum"] = qt - num;
                        drinkQTDataSource1.Update();
                    }
                }
            }
        }

        protected void cancelBT_Click(object sender, EventArgs e)
        {
            drinkDataSelect.Delete();
            checkDataSource.Delete();
            initial();
        }

        protected void discountBT_Click(object sender, EventArgs e)
        {
            bool iscode = false;
            discountDetailsView.Visible = false;
            if (1 == discountDetailsView.DataItemCount)
            {
                Session["disname"] = discountDetailsView.Rows[0].Cells[1].Text;
                Session["discode"] = discountDetailsView.Rows[1].Cells[1].Text;
                iscode = true;
                discountTotal();
            }
            else
            {
                Session["disname"] = null;
                Session["discode"] = null;
                discountDetailsView.Visible = true;
            }
        }

        protected void deliveryBT_Click(object sender, EventArgs e)
        {
            orderItemDataSource1.Update();
        }

        

        protected void Button1_Click2(object sender, EventArgs e)
        {
            //Session["delivery"] = deliveryAddressTB.Text;
            orderItemDataSource1.Update();
        }
    }
}