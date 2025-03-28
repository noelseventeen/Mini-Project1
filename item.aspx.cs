using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace scrap
{
    public partial class item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                geti();
            }
        }
        public void geti()
        {
            main cls = new main();
            Repeater1.DataSource = cls.getite();
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            main m1 = new main();
            byte[] imgbyte = null;
            HttpPostedFile File = FileUpload1.PostedFile;
            if (File.ContentLength > 0)
            {
                imgbyte = new Byte[File.ContentLength];
                File.InputStream.Read(imgbyte, 0, File.ContentLength);

            }
            if (Button1.CommandName == "")
            {
                m1.insertItem(TextBox1.Text, TextBox2.Text,imgbyte);
            }
            else
            {
                m1.updateItem(TextBox1.Text, TextBox2.Text, Button1.CommandName,imgbyte);
                TextBox1.Text = "";
                TextBox2.Text = "";
                Button1.CommandName = "";
            }
            geti();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            main cls = new main();
            DataTable Dt = new DataTable();
            Dt = cls.getitem(bt.CommandName);
            if (Dt.Rows.Count > 0)
            {
                TextBox1.Text = Dt.Rows[0]["item_name"].ToString();
                TextBox2.Text = Dt.Rows[0]["item_price"].ToString();
                Image1.ImageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])Dt.Rows[0]["image"], 0, ((byte[])Dt.Rows[0]["image"]).Length);
                Button1.CommandName = Dt.Rows[0]["item_id"].ToString();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            main m1 = new main();
            m1.deleteItem(bt.CommandName);
            geti();
        }
    }
}