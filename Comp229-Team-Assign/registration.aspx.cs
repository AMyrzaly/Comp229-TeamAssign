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
 

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Define data objects. it is taken from demo code. 
            SqlConnection conn;
            SqlCommand comm;
           // SqlDataReader reader;
            // Read the connection string from Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["Registrations"].ConnectionString;
            // Initialize connection
            //conn = new SqlConnection(connectionString);

            try
            {
                // Define data objects. it is taken from demo code. 
                //conn = new SqlConnection(connectionString);

                // Define data objects. it is taken from demo code. 
                conn = new SqlConnection(connectionString);

                comm = conn.CreateCommand();
                comm.CommandType = CommandType.Text;
                // Create command and queris
                comm = new SqlCommand("INSERT INTO Registrations (FirstName,LastName,UserName, Password, Address, City, PostalCode,Email,Telephone,Gender) VALUES(@FirstName, @LastName, @UserName,@Password, @Address,@City, @PostalCode,@Email,@Telephone, @Gender)", conn);

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
                conn.Open();
                comm.ExecuteNonQuery();
                //SqlDataReader reader = comm.ExecuteReader();
                //conn.Open();
                //executing the query
                //
                //Closing the connection
                //reader.Close();
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