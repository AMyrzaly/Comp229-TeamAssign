using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Team_Assign
{
    public partial class appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                // Read the connection string from Web.config
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Registrations"].ConnectionString);
                //creating query
                string insert = "INSERT INTO Registrations(FirstName,LastName,Address,City,PostalCode,Email,Telephone) VALUES(@FirstName, @LastName, @Address, @City, @PostalCode, @Email, @Telephone)";
                SqlCommand cmd = new SqlCommand(insert, con);
                //Parametarized Query
                cmd.Parameters.AddWithValue("@FirstName", txtbxFirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtbxLastName.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@Telephone", txtTelephone.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                //Connection open.
                con.Open();
                //command for executing the query
                cmd.ExecuteNonQuery();
                //closing connection.
                con.Close();
            }

            catch (Exception)
            {


            }
            finally
            {
                Response.Redirect("Home.aspx");
            }

        }
    }
}