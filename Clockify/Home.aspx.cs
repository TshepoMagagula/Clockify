using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Clockify
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitM_Click(object sender, EventArgs e)
        {
            string connectionString = "";
            string moduleCode = txtModuleCode.Text;
            string moduleName = txtModuleName.Text;
            int numberOfCredits = Convert.ToInt32(txtNumOfCredits.Text);
            int classHoursPerWeek = Convert.ToInt32(txtHrsSpent.Text);
            int userId = 0;
            int semesterId = 0;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string insertModuleQuery = "INSERT INTO Module (Module_Code, Module_Name, Number_of_Credits, Class_Hours_per_Week, User_ID, Semester_Id) VALUES (@ModuleCode, @ModuleName, @NumberOfCredits, @ClassHoursPerWeek, @UserId, @SemesterId)";
                using (SqlCommand insertModuleCommand = new SqlCommand(insertModuleQuery, connection))
                {
                    insertModuleCommand.Parameters.AddWithValue("@ModuleCode", moduleCode);
                    insertModuleCommand.Parameters.AddWithValue("@ModuleName", moduleName);
                    insertModuleCommand.Parameters.AddWithValue("@NumberOfCredits", numberOfCredits);
                    insertModuleCommand.Parameters.AddWithValue("@ClassHoursPerWeek", classHoursPerWeek);
                    insertModuleCommand.Parameters.AddWithValue("@UserId", userId);
                    insertModuleCommand.Parameters.AddWithValue("@SemesterId", semesterId);

                    insertModuleCommand.ExecuteNonQuery();
                }
            }
              
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void btnSubmitS_Click(object sender, EventArgs e)
        {
            // Get values from HTML textboxes
            int weeksInSemester = Convert.ToInt32(txtNumOfWeeksInSem.Text);
            DateTime semesterStartDate = Convert.ToDateTime(txtSemesterStartDate);

            
            int userId = GetUserId(); // Implement the method to get the user ID

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Insert Semester information
                string insertSemesterQuery = "INSERT INTO Semester (Weeks_in_the_Semester, Semester_Start_Date, User_ID) VALUES (@WeeksInSemester, @SemesterStartDate, @UserId)";
                using (SqlCommand insertSemesterCommand = new SqlCommand(insertSemesterQuery, connection))
                {
                    insertSemesterCommand.Parameters.AddWithValue("@WeeksInSemester", weeksInSemester);
                    insertSemesterCommand.Parameters.AddWithValue("@SemesterStartDate", semesterStartDate);
                    insertSemesterCommand.Parameters.AddWithValue("@UserId", userId);

                    insertSemesterCommand.ExecuteNonQuery();
                }

                // Get the Semester_Id for the recently inserted Semester
                string getSemesterIdQuery = "SELECT SCOPE_IDENTITY()";
                using (SqlCommand getSemesterIdCommand = new SqlCommand(getSemesterIdQuery, connection))
                {
                    int semesterId = Convert.ToInt32(getSemesterIdCommand.ExecuteScalar());

                }
               
            }
        }

        // Implement a method to get the user ID for the current user
        private int GetUserId()
        {
            // Replace this with your implementation to get the user ID
            // For example, you might retrieve it from the current user's session or authentication context
            return 1; // Replace with the actual user ID retrieval logic
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {

        }
    }
}