using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;

namespace Clockify
{
    public partial class AuthPg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "";
            string Username = txtUserName.Text;
            string Password = txtPassword.Text;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Check if the provided username and password match a user in the database
                string authenticateQuery = "SELECT COUNT(*) FROM User WHERE Username = @Username AND Password = @Password";
                using (SqlCommand authenticateCommand = new SqlCommand(authenticateQuery, connection))
                {
                    authenticateCommand.Parameters.AddWithValue("@Username", Username);
                    authenticateCommand.Parameters.AddWithValue("@Password", Password);

                    int matchingUserCount = (int)authenticateCommand.ExecuteScalar();

                    if (matchingUserCount > 0)
                    {
                        // Authentication successful
                        Console.WriteLine("Login successful!");
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        // Authentication failed
                        Console.WriteLine("Invalid username or password. Please try again.");
                    }
                }
            }
        }
    }
}