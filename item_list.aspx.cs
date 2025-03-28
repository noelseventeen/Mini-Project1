using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class item_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            main m1 = new main();
            string str = Request.QueryString["id"].ToString();
            DataList1.DataSource = m1.getitem(str);
            DataList1.DataBind();
        }
    }
}