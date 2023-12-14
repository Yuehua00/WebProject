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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            clientDetailsView1.Visible = false; 
            LinkButton1.Visible = false;
            if(1 == clientDetailsView1.DataItemCount)
            {
                Session["name"] = clientDetailsView1.Rows[0].Cells[1].Text;
                Session["money"] = clientDetailsView1.Rows[1].Cells[1].Text;
                Session["phone"] = clientDetailsView1.Rows[2].Cells[1].Text;
                LinkButton1.Visible = true;
            }
            else
            {
                Session["name"] = null;
                Session["money"] = null;
                Session["phone"] = null;
                clientDetailsView1.Visible = true;
            }
        }
    }
}