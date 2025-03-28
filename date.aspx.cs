using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class date : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            main m1 = new main();
            DataTable dt = new DataTable();
            string date = Convert.ToDateTime(TextBox1.Text).ToString("yyyy-MM-dd");
            dt=m1.display(date);
            if(dt.Rows.Count>0)
            {
                Repeater1.DataSource = m1.display1(date);
                Repeater1.DataBind();
            }
        }
    }
}