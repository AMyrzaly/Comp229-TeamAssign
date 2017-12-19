using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Comp229_Team_Assign
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("server=.\\SQLEXPRESS;Database=Comp229TeamAssign; Integrated Security=true");
        // Read the connection string from Web.config
        //string connectionString = ConfigurationManager.ConnectionStrings["Registrations"].ConnectionString;
        // Initialize connection

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            conn.Open();
            try
            {
                // Define data objects. it is taken from demo code. 
                //conn = new SqlConnection(connectionString);


                SqlCommand comm = new SqlCommand("INSERT INTO Students (FirstName,LastName,UserName, Password, Address, City, PostalCode,Email,Telephone,Gender) VALUES(@FirstName, @LastName, @UserName,@Password, @Address,@City, @PostalCode,@Email,@Telephone, @Gender)", conn);

                //paramaterarized quary for saving values to the StudentTable.
                comm.Parameters.AddWithValue("@FirstName", txtbxFirstName.Text);
                comm.Parameters.AddWithValue("@LastName", txtbxLastName.Text);
                comm.Parameters.AddWithValue("@UsernName", txtbxUsername.Text);
                comm.Parameters.AddWithValue("@Password", txtPassword.Text);
                comm.Parameters.AddWithValue("@Address", txtAddress.Text);
                comm.Parameters.AddWithValue("@City", txtCity.Text);
                comm.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                comm.Parameters.AddWithValue("@Email", txtEmail.Text);
                // Open the connection
                SqlDataReader reader = comm.ExecuteReader();
                //conn.Open();
                //executing the query
                //
                //Closing the connection
                reader.Close();
                conn.Close();

            }

            catch (Exception)
            {

            }
            finally
            {
                // Redirect the user back to Home Page
                Response.Redirect("Home.aspx");

            }
        }
    }
}