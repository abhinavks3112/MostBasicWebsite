using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

                SqlParameter userName = new SqlParameter("@UserName", txtUserName.Text);
                SqlParameter password = new SqlParameter("@Password", txtPassword.Text);

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
                else if((int)rowsReturnedValue == 1)
                {
                    Response.Redirect("~/UsersOverview.aspx");
                }
            }
        }
    }
}