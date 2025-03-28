using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class cancelation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                main m1 = new main();
                string str = Session["rid"].ToString();
                Repeater1.DataSource = m1.getbookdata(str);
                Repeater1.DataBind();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            main cls = new main();
            cls.getbookdelete(bt.CommandName);


            main m1 = new main();
            string str = Session["rid"].ToString();
            Repeater1.DataSource = m1.getbookdata(str);
            Repeater1.DataBind();

        }
    }
}