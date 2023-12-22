using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clientDetailsView1.DataBind();
            DetailsView1.DataBind();
            Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            clientDetailsView1.Visible = false; 
            LinkButton1.Visible = false;
            ReviseLB.Visible = false;
            if (1 == clientDetailsView1.DataItemCount)
            {
                Session["name"] = clientDetailsView1.Rows[0].Cells[1].Text;
                Session["money"] = clientDetailsView1.Rows[1].Cells[1].Text;
                Session["phone"] = clientDetailsView1.Rows[2].Cells[1].Text;
                Session["hint"] = clientDetailsView1.Rows[3].Cells[1].Text;
                Session["password"] = clientDetailsView1.Rows[4].Cells[1].Text;
                Session["address"] = clientDetailsView1.Rows[5].Cells[1].Text;
                Session["account"] = clientDetailsView1.Rows[6].Cells[1].Text;
                Session["email"] = clientDetailsView1.Rows[7].Cells[1].Text;
                Session["id"] = clientDetailsView1.Rows[8].Cells[1].Text;
                LinkButton1.Visible = true;
                ReviseLB.Visible = true;
            }
            else
            {
                if(1 == DetailsView1.DataItemCount)
                {
                    Label3.Text = DetailsView1.Rows[1].Cells[1].Text;
                    Label3.Visible = true;
                }
                else
                {
                    Label3.Text = "帳號有誤，請重新輸入";
                    Label3.Visible = true;
                }

                Session["name"] = null;
                Session["money"] = null;
                Session["phone"] = null;
                Session["hint"] = null;
                Session["password"] = null;
                Session["address"] = null;
                Session["account"] = null;
                Session["email"] = null;
                //Session["delivery"] = null;
                //clientDetailsView1.Visible = true;
            }
        }

    }
}