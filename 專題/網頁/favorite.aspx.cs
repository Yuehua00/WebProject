using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁
{
    public partial class favorite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            favoriteTitleLB.Text = Session["name"] + " 歡迎!已收藏下列商品<br>";
        }
    }
}