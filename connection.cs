using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace scrap
{
    public class connection
    {
        public SqlConnection sqlcon = new SqlConnection();
        public connection()
        {
            //if (sqlcon.State == ConnectionState.Closed)
            //{
                sqlcon = new SqlConnection(ConfigurationManager.AppSettings["con"].ToString());
                sqlcon.Open();
            //}
        }

    }
}