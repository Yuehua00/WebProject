using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁
{
    public partial class ForgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HintDetailsView.DataBind();
            hint.Visible = false;
            hint.Text = "";
            hint.Visible = false;
        }

        protected void accountTB_TextChanged(object sender, EventArgs e)
        {
            UpdateButtonState();
        }

        protected void emailTB_TextChanged(object sender, EventArgs e)
        {
            UpdateButtonState();
        }

        private void UpdateButtonState()
        {
            Button1.Enabled = !string.IsNullOrEmpty(accountTB.Text) && !string.IsNullOrEmpty(emailTB.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 確認 DetailsView 控件有數據
            hintLB.Visible = true;
            hint.Visible = true;

            if (HintDetailsView.Rows.Count > 0)
            {
                
                if (HintDetailsView.Rows[0].Cells[1] != null)
                {
                    hint.Text = HintDetailsView.Rows[0].Cells[1].Text;
                    PassInput.Visible = true;
                    passTB.Visible = true;
                    Button2.Visible = true;
                    Button3.Visible = true;
                    hint.Visible = true;
                }
                else 
                {
                    hint.Text = "請確認您的帳號、電子郵件是否有誤";
                }
                HintDetailsView.Visible = false;
            }
            else
            {
                hint.Text = "請確認您的帳號、電子郵件是否有誤";
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // 確保 DetailsView 有數據並且索引不會越界
            if (HintDetailsView.Rows.Count > 1 && HintDetailsView.Rows[1].Cells.Count > 1)
            {
                if (passTB.Text == HintDetailsView.Rows[1].Cells[1].Text)
                {
                    // 密碼正確，重定向到另一個頁面
                    Response.Redirect("ad.aspx");
                }
                else
                {
                     WarningLabel.Text = "密碼不正確，請重新嘗試。";
                    WarningLabel.Visible = true;
                }
            }
            else
            {
                WarningLabel.Text = "無法驗證密碼，請稍後再試。";
                WarningLabel.Visible = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            NewPassLB.Visible = true;
            NewPassTB.Visible = true;
            Button4.Visible= true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            FindOldPass.Update();
            successUp.Visible = true;
            LinkButton1.Visible = true;
        }

    }
}