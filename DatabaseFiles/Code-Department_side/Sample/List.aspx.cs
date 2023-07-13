using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Sample
{
    public partial class List : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection("Data Source=LAPTOP-6NAFD6I2\\SQLEXPRESS; Initial Catalog=master; User Id=Ayushree; Password=AgUg28102000");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from ONBOARDCHECKLIST", c);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
    }
}