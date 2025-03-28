using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace scrap
{
    public class main:connection
    {
       public void insertWard(string ward_no)
        {
            SqlCommand cmd = new SqlCommand("insert into ward(ward_no)values(@ward_no)",sqlcon);
            cmd.Parameters.AddWithValue("@ward_no", ward_no);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        public void updateWard(string ward_no,string id)
        {
            SqlCommand cmd = new SqlCommand("update ward set ward_no=@ward_no where ward_id=@ward_id", sqlcon);
            cmd.Parameters.AddWithValue("@ward_no", ward_no);
            cmd.Parameters.AddWithValue("@ward_id", id);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        public void deleteWard(string id)
        {
            SqlCommand cmd = new SqlCommand("update ward set status=2 where ward_id=@ward_id", sqlcon);
            cmd.Parameters.AddWithValue("@ward_id", id);
            cmd.ExecuteNonQuery();
           
        }
        internal DataTable getdetails(string id)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from ward where ward_id=@ward_id", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@ward_id", id);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable getdata()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from ward where status=1", sqlcon);
            adpt.Fill(dt);
            sqlcon.Close();
            return dt;
        }
        internal DataTable getsche()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from schedule where status=1", sqlcon);
            adpt.Fill(dt);
            sqlcon.Close();
            return dt;
        }
        internal DataTable getsched(string id)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from schedule where schedule_id=@schedule_id", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@schedule_id", id);
            adpt.Fill(dt);
            return dt;
        }

        public void insertschedule(string date,string ward_no,string time)
        {
            SqlCommand cmd = new SqlCommand("insert into schedule(date,time,ward_no)values(@date,@time,@ward_no)", sqlcon);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@ward_no", ward_no);
            cmd.Parameters.AddWithValue("@time", time);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        public void updateschedule(string date, string ward_no, string id,string time)
        {
            SqlCommand cmd = new SqlCommand("update schedule set date=@date,ward_no=@ward_no,time=@time where schedule_id=@schedule_id", sqlcon);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@time", time);
            cmd.Parameters.AddWithValue("@ward_no", ward_no);
            cmd.Parameters.AddWithValue("@schedule_id", id);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        public void deleteschedule( string id)
        {
            SqlCommand cmd = new SqlCommand("update schedule set status=2 where schedule_id=@schedule_id", sqlcon);
            cmd.Parameters.AddWithValue("@schedule_id", id);
            cmd.ExecuteNonQuery();
        }
        public void insertItem(string item_name,string item_price, byte[] imgbyte)
        {
            SqlCommand cmd = new SqlCommand("insert into item(item_name,item_price,image)values(@item_name,@item_price,@imgbyte)", sqlcon);
            cmd.Parameters.AddWithValue("@item_name", item_name);
            cmd.Parameters.AddWithValue("@item_price", item_price);
            cmd.Parameters.AddWithValue("@imgbyte", imgbyte);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        public void updateItem(string item_name, string item_price,string id, byte[] imgbyte)
        {
            if (imgbyte != null)
            {
                SqlCommand cmd = new SqlCommand("update item set item_name=@item_name,item_price=@item_price,image=@imgbyte where item_id=@item_id", sqlcon);
                cmd.Parameters.AddWithValue("@item_name", item_name);
                cmd.Parameters.AddWithValue("@item_price", item_price);
                cmd.Parameters.AddWithValue("@imgbyte", imgbyte);
                cmd.Parameters.AddWithValue("@item_id", id);
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("update item set item_name=@item_name,item_price=@item_price where item_id=@item_id", sqlcon);
                cmd.Parameters.AddWithValue("@item_name", item_name);
                cmd.Parameters.AddWithValue("@item_price", item_price);
                cmd.Parameters.AddWithValue("@item_id", id);
                cmd.ExecuteNonQuery();
            }
            sqlcon.Close();
        }
        public void deleteItem(string id)
        {
            SqlCommand cmd = new SqlCommand("update item set status=2 where item_id=@item_id", sqlcon);
            cmd.Parameters.AddWithValue("@item_id", id);
            cmd.ExecuteNonQuery();
        }
        internal DataTable getite()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from item where status=1", sqlcon);
            adpt.Fill(dt);
            sqlcon.Close();
            return dt;
        }
        internal DataTable getitem(string id)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from item where item_id=@item_id", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@item_id", id);
            adpt.Fill(dt);
            return dt;
        }
        //customer side
        public void insertuser(string name, string email, string pass, string cpass)
        {
            SqlCommand cmd = new SqlCommand("insert into reg(name,email,pass,cpass)values(@name,@email,@pass,@cpass)", sqlcon);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@pass", pass);
            cmd.Parameters.AddWithValue("@cpass", cpass);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        internal DataTable checkmail(string mail)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from reg where email=@mail ", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@mail", mail);
            adpt.Fill(dt);
            return dt;
        }

        internal DataTable login(string username, string password)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from reg where  name=@username and pass=@password", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@username", username);
            adpt.SelectCommand.Parameters.AddWithValue("@password", password);
            adpt.Fill(dt);
            return dt;

        }
    }
}