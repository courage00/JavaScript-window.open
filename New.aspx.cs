using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class New : System.Web.UI.Page
{
    string returnControl = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //要回傳的控制項名稱
        returnControl = Page.Request["control"] ?? "";

        //判斷是否為 第一次postback且不等於空白或null
        if (!Page.IsPostBack&& Page.Request["orgData"] != null&& !"".Equals(Page.Request["orgData"]))
        {
            TextBox1.Text = Page.Request["orgData"];
        }
    }
    /// <summary>
    /// 將選取的項目移到父層的textbox元件中
    /// </summary>
    /// <returns></returns>
 
     protected void Button2_Click(object sender, EventArgs e)
    {
 
        if (returnControl != "")
        {
            //傳值給父頁面
            this.Page.Controls.Add(new LiteralControl(string.Format("<script>opener.document.getElementById('" + returnControl + "').innerHTML={0};</script>", TextBox1.Text)));
           
            //關閉此視窗
            this.Page.Controls.Add(new LiteralControl("<script>window.close();</script>"));
        }
    
    }
}