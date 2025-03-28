using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class booking1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setdetails();
        }

        public void setdetails()
        {
            main d = new main();
            Label8.Text =DateTime.UtcNow.ToString("yyyy-MM-dd");
            DataTable dt = new DataTable();
            string sid = Request.QueryString["id"].ToString();
            string usid = Session["rid"].ToString();
            dt = d.details(sid, usid);
            if (dt.Rows.Count > 0)
            {
                Label5.Text = Session["wardno"].ToString();
                Label6.Text = dt.Rows[0]["date"].ToString();
                
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            main m1 = new main();
            string wid = Session["wardno"].ToString();
            string usid = Session["rid"].ToString();
            string sid = Request.QueryString["id"].ToString();
            string date = DateTime.UtcNow.ToString("MM-dd-yyyy");
            m1.insert(usid, sid,wid,date);
            Label7.Text = "Booked Successfully";
        }
    }
}