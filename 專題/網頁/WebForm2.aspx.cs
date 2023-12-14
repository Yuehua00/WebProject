using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["city"] = cityDropDownList1.SelectedValue;
            Session["area"] = areaDropDownList1.SelectedValue;
            Session["road"] = roadDropDownList2.SelectedValue;
            address.Text = Session["city"].ToString();
            address.Text += Session["area"].ToString();
            address.Text += Session["road"].ToString();
        }

        protected void checkButton1_Click(object sender, EventArgs e)
        {
            userSqlDataSource1.Insert();
        }
    }
}