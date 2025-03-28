using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            main m4 = new main();
            DataTable Dt = new DataTable();
            string username = TextBox1.Text;
            string pswd = TextBox2.Text;
            Dt = m4.checklogin(username, pswd);
            if (Dt.Rows.Count > 0)
            {
                Label1.Text = "Login successfull";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            else
            {
                Label1.Text = "Username or Password is incorret";
            }
        }
    }
}