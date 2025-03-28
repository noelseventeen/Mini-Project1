using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class SchedulesDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            main m1 = new main();
            string str = Request.QueryString["id"].ToString();
            Session["wardno"] = str;
            DataList1.DataSource = m1.getschedule(str);
            DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string sid = ((LinkButton)(sender)).CommandArgument.ToString();
            Response.Redirect("booking.aspx?id="+sid);
        }
    }
}