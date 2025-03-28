using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class checkRate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            main m1 = new main();
            DataList1.DataSource = m1.getite();
            DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string d = ((LinkButton)(sender)).CommandArgument.ToString();
            Response.Redirect("checkList.aspx?id=" + d);
        }
    }
}