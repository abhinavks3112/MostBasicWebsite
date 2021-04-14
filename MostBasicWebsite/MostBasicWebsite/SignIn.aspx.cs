using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace MostBasicWebsite
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {  
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand
                {
                    CommandText = "CHECKUSERCREDENTIALS",
                    CommandType = CommandType.StoredProcedure,
                    Connection = con
                };

                // Hashing the password for verifying the stored hashed password in db
                string passwordHash = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");

                SqlParameter userName = new SqlParameter("@UserName", txtUserName.Text);
                SqlParameter password = new SqlParameter("@Password", passwordHash);

                cmd.Parameters.Add(userName);
                cmd.Parameters.Add(password);

                // Opening the database connection
                con.Open();

                // Executing the query
                object rowsReturnedValue = cmd.ExecuteScalar();
                if (rowsReturnedValue is null)
                {
                    Response.Write("<script>alert('Sign In Failed: Either the username or password is incorrect!!')</script>");
                }
                else if ((int)rowsReturnedValue == 1)
                {
                    // Redirect the user to default page and create persistent cookie based on user's choice to remember his session
                    FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, chkRememberMe.Checked);
                }
            }
        }
    }
}