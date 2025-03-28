using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class WebFormM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getd();
            }
        }
        public void getd()
        {
            main cls = new main();
            Repeater1.DataSource = cls.getdata();
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            main m1 = new main();
            if (Button1.CommandName == "")
            {
                m1.insertWard(TextBox2.Text);
            }
            else
            {
                m1.updateWard(TextBox2.Text,Button1.CommandName);
                TextBox2.Text = "";
                Button1.CommandName = "";
            }
            getd();               
    }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            main cls = new main();
            DataTable Dt = new DataTable();
            Dt = cls.getdetails(bt.CommandName);
            if (Dt.Rows.Count > 0)
            {
                TextBox2.Text = Dt.Rows[0]["ward_no"].ToString();
                Button1.CommandName = Dt.Rows[0]["ward_id"].ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            main m1 = new main();
            m1.deleteWard(bt.CommandName);
            getd();
        }
    }
}