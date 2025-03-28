using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class Alogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "noel@gmail.com" && TextBox2.Text == "1234")
            {
                Label1.Text = "login successful";
                Response.Redirect("WebFormM.aspx");
            }
            else
            {
                Label1.Text = "E-mail or Password is incorret";
            }
        }
    }
}