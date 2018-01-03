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
        //creating connection. 
        SqlConnection con = new SqlConnection();
        //
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                //establising the string connection.
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Registrations"].ConnectionString);
                //opening the connection. 
                con.Open();
                //Generating sql query. 
                cmd.CommandText = "SELECT * FROM Employee WHERE UserName='" + txtUserName.Text + "'and Password ='" + txtPassword.Text + "'";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "Employee");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblResult.Text = "Login Success";
                    lblResult.ForeColor = System.Drawing.Color.Red;

                }
                else
                {
                    lblResult.Text = "Login Failed";
                    lblResult.ForeColor = System.Drawing.Color.Red;

                }
            }

            catch (Exception)
            {


            }
            finally
            {
                Response.Redirect("registration.aspx");
            }
        }

    }
}