using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Clockify
{
    public partial class RegPg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnRegister_Click(object sender, EventArgs e)
        {
            string Username = txtNewUserName.Text;
            string Password = txtNewPassword.Text;
            string connectionString = "";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Check if the username is already taken
                string checkUserQuery = "SELECT COUNT(*) FROM User_Tbl WHERE Username = @Username";
                using (SqlCommand checkUserCommand = new SqlCommand(checkUserQuery, connection))
                {
                    checkUserCommand.Parameters.AddWithValue("@Username", Username);
                    int existingUserCount = (int)checkUserCommand.ExecuteScalar();

                    if (existingUserCount > 0)
                    {
                        // Username is already taken
                        Console.WriteLine("Username is already taken. Please choose another username.");
                        return;
                    }
                }

                // If the username is not taken, proceed with user registration
                string insertUserQuery = "INSERT INTO User (Username, Password) VALUES (@Username, @Password)";
                using (SqlCommand insertUserCommand = new SqlCommand(insertUserQuery, connection))
                {
                    insertUserCommand.Parameters.AddWithValue("@Username", Username);
                    insertUserCommand.Parameters.AddWithValue("@Password", Password);

                    insertUserCommand.ExecuteNonQuery();

                    
                    Console.WriteLine("Registration successful!");
                    Response.Redirect("AuthPg.aspx");
                }
            }
        }
    }
}