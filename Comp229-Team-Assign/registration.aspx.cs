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
          //  SqlConnection conn;
           // SqlCommand comm;
            // Read the connection string from Web.config
           // string connectionString = ConfigurationManager.ConnectionStrings["Registrations"].ConnectionString;


            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Registrations"].ConnectionString);
                con.Open();
                string insert = "insert into Registrations(FirstName,LastName,Address,City,PostalCode,Email,Telephone) VALUES(@FirstName,@LastName,@Address,@City,@PostalCode,@Email,@Telephone)";
                SqlCommand cmd = new SqlCommand(insert, con);

                cmd.Parameters.AddWithValue("@FirstName", txtbxFirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtbxLastName.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@Telephone", txtTelephone.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);

                cmd.ExecuteNonQuery();

                con.Close();

                // Define data objects. it is taken from demo code. 
                /*   conn = new SqlConnection(connectionString);

                   comm = conn.CreateCommand();
                   comm.CommandType = CommandType.Text;
                   // Create command and queris
                   comm = new SqlCommand("INSERT INTO Registrations (FirstName,LastName,Address,City,PostalCode,Email,Telephone) VALUES(@FirstName,@LastName,@Address,@City,@PostalCode,@Email,@Telephone)", conn);

                   //paramaterarized quary for saving values to the StudentTable.
                   comm.Parameters.AddWithValue("@FirstName", txtbxFirstName.Text);
                   comm.Parameters.AddWithValue("@LastName", txtbxLastName.Text);
                   comm.Parameters.AddWithValue("@Address", txtAddress.Text);
                   comm.Parameters.AddWithValue("@Telephone", txtTelephone.Text);
                   comm.Parameters.AddWithValue("@City", txtCity.Text);
                   comm.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                   comm.Parameters.AddWithValue("@Email", txtEmail.Text);
                   // Open the connection
                   conn.Open();
                   comm.ExecuteNonQuery();*/



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