using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class billDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                bind();
                getr();

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
            Repeater1.DataSource = cls.getdetails();
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            main m1 = new main();
            if (Button1.CommandName == "")
            {
                m1.insertdetails(DropDownList1.SelectedValue, DropDownList2.SelectedValue, TextBox1.Text, TextBox2.Text);
                Label1.Text = "success";
            }
            else
            {
                m1.updatedetails(DropDownList1.SelectedValue, DropDownList2.SelectedValue, TextBox1.Text, TextBox2.Text, Button1.CommandName);
                TextBox1.Text = "";
                TextBox2.Text = "";
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
            Dt = cls.getdetail(bt.CommandName);
            if (Dt.Rows.Count > 0)
            {
                TextBox1.Text = Dt.Rows[0]["qty"].ToString();
                TextBox2.Text = Dt.Rows[0]["price"].ToString();
                DropDownList1.SelectedValue = Dt.Rows[0]["ward_no"].ToString();
                DropDownList2.SelectedValue = Dt.Rows[0]["email"].ToString();
                Button1.CommandName = Dt.Rows[0]["did"].ToString();
            }
            TextBox1.Text = "";
            TextBox2.Text= "";
            DropDownList1.SelectedValue = "";
            DropDownList2.SelectedValue = "";
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            main m1 = new main();
            m1.deletedetails(bt.CommandName);
            getr();
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            main m1 = new main();
            string ward = DropDownList1.SelectedValue.ToString();
            DropDownList2.DataSource = m1.getbill(ward);
            DropDownList2.DataTextField = "email";
            DropDownList2.DataValueField = "email";
            DropDownList2.DataBind();
        }
    }
}