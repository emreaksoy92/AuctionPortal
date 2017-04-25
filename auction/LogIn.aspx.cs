using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace CharityAuction
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=EMRE-PC;Initial Catalog=auction;Integrated Security=True;");
            String str1 = "Select Email,Password From Customer.Email where  Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(str1, con);
            SqlDataAdapter da = new SqlDataAdapter(str1, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("AddAuction.aspx", true);
            }
            else
            {
                Response.Redirect("Login.aspx", true);
            }
        }


    }
}