using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Team_Assign
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Registrations"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "SELECT COUNT(1) from Employee WHERE UserName=@username AND Password=@password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count>0)
            {
                Response.Redirect("registration.aspx");
            }
            else
            {
                lblResult.Text = "Invalid UserName and Password";
            }
            conn.Close();
        }

    }
}