using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            main m1 = new main();
            m1.insertuser(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
            System.Data.DataTable Dt = new System.Data.DataTable();
            Label1.Text = "";
            string mail = TextBox2.Text;
            Dt = m1.checkmail(mail);
            if (Dt.Rows.Count> 0)
            {
                Label1.Text = "*this mail already registered";
            }
            else
            {
               
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}