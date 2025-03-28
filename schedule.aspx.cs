using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class schedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                getr();
                bind();


            }
        }
        public void bind()
        {
            main m1 = new main();
            DropDownList1.DataSource = m1.getdata();
            DropDownList1.DataTextField = "ward_no";
            DropDownList1.DataValueField = "ward_no";
            DropDownList1.DataBind();

        }
        public void getr()
        {
            main cls = new main();
            Repeater1.DataSource = cls.getsche();
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            main m1 = new main();
            if (Button1.CommandName == "")
            {
                m1.insertschedule(TextBox1.Text, DropDownList1.SelectedValue,TextBox2.Text);
            }
            else
            {
                m1.updateschedule(TextBox1.Text, DropDownList1.SelectedValue, Button1.CommandName,TextBox2.Text);
                TextBox1.Text = "";
                Button1.CommandName = "";
            }
            getr();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            main cls = new main();
            DataTable Dt = new DataTable();
            Dt = cls.getsched(bt.CommandName);
            if (Dt.Rows.Count > 0)
            {
                TextBox1.Text = Dt.Rows[0]["date"].ToString();
                DropDownList1.SelectedValue = Dt.Rows[0]["ward_no"].ToString();
                Button1.CommandName = Dt.Rows[0]["schedule_id"].ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            main m1 = new main();
            m1.deleteschedule(bt.CommandName);
            getr();
        }
    }
}