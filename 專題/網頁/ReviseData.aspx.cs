using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using System.Data.SqlClient;
using System.Net;
using System.Reflection.Emit;

namespace 網頁
{
    public partial class ReviseData : System.Web.UI.Page
    {
        protected string Newaddress;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConfirmContexts.Visible = false;
            OrgNameLB.Text = Session["name"] as string;
            OrgTelLB.Text = Session["phone"] as string;
            OrgAddLB.Text = Session["address"] as string;
            OrgEmailLB.Text = Session["email"] as string;
            OrgAccLB.Text = Session["account"] as string;
            OrgPassLB.Text =  Session["password"] as string;
            OrgHinLB.Text = Session["hint"] as string;
            BackHome.Visible = false;

        }

        protected void ConfirmRevise_Click(object sender, EventArgs e)
        {
            ConfirmRevise.Enabled = false;
            Newaddress = cityDropDownList1.SelectedValue + "市";
            Newaddress += areaDropDownList1.SelectedValue + "區";
            Newaddress += roadDropDownList2.SelectedValue + "路";

            string name = string.IsNullOrEmpty(NewName.Text) ? Session["name"] as string : NewName.Text;
            string phone = string.IsNullOrEmpty(NewPhone.Text) ? Session["phone"] as string : NewPhone.Text;
            string mail = string.IsNullOrEmpty(NewMail.Text) ? Session["email"] as string : NewMail.Text;
            string pass = string.IsNullOrEmpty(NewPass.Text) ? Session["password"] as string : NewPass.Text;
            string hint = string.IsNullOrEmpty(NewHint.Text) ? Session["hint"] as string : NewHint.Text;

            // Set the text of the ConfirmContexts label
            ConfirmContexts.Text = "您欲修改內容如下" + "<br />" +
                               "姓名: " + name + "<br />" +
                               "電話: " + phone + "<br />" +
                               "地址: " + Newaddress + "<br />" +
                               "電子郵件: " + mail + "<br />" +
                               "密碼: " + pass + "<br />" +
                               "密碼提示: " + hint;

            ConfirmContexts.Visible = true;
            SendRevise.Visible = true;
            ReturnRevise.Visible = true;
            SendRevise.Enabled = true;
            ReturnRevise.Enabled = true;
        }

        

        protected void SendRevise_Click(object sender, EventArgs e)
        {
            try
            {
                UserData.UpdateParameters["NewName"].DefaultValue = string.IsNullOrEmpty(NewName.Text) ? Session["name"].ToString() : NewName.Text;
                UserData.UpdateParameters["NewPass"].DefaultValue = string.IsNullOrEmpty(NewPass.Text) ? Session["password"].ToString() : NewPass.Text;
                UserData.UpdateParameters["NewPhone"].DefaultValue = string.IsNullOrEmpty(NewPhone.Text) ? Session["phone"].ToString() : NewPhone.Text;
                UserData.UpdateParameters["NewEmail"].DefaultValue = string.IsNullOrEmpty(NewMail.Text) ? Session["email"].ToString() : NewMail.Text;
                UserData.UpdateParameters["NewHint"].DefaultValue = string.IsNullOrEmpty(NewHint.Text) ? Session["hint"].ToString() : NewHint.Text;


                int updateResult = UserData.Update();

                if (updateResult>0)
                {
                    ConfirmContexts.Text = "成功更新!!!";
                    ConfirmContexts.Visible = true;
                    BackHome.Visible = true;
                }
                else
                {
                    ConfirmContexts.Text = "請重新確認";
                    ConfirmContexts.Visible = true;
                    SendRevise.Visible = false;
                    ConfirmRevise.Enabled = true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                ConfirmContexts.Text = "更新過程中出現錯誤，請再試一次或聯絡系統管理員。";
                ConfirmContexts.Visible = true;
                SendRevise.Visible = false;
                ConfirmRevise.Enabled = true;
                BackHome.Visible = true;
            }

            
        }

        protected void ReturnRevise_Click(object sender, EventArgs e)
        {

            ConfirmRevise.Enabled = true;
            SendRevise.Enabled = false;
            SendRevise.Visible = false;
            ReturnRevise.Visible = false;
        }
    }
    
   
}