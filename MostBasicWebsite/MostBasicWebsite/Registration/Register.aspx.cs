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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand
                {
                    CommandText = "REGISTERUSER",
                    CommandType = CommandType.StoredProcedure,
                    Connection = con
                };

                // Hashing the password for secure storage in db
                string passwordHash = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");

                SqlParameter userName = new SqlParameter("@UserName", txtUserName.Text);
                SqlParameter password = new SqlParameter("@Password", passwordHash);
                SqlParameter email = new SqlParameter("@Email", txtEmail.Text);

                cmd.Parameters.Add(userName);
                cmd.Parameters.Add(password);
                cmd.Parameters.Add(email);

                // Opening the database connection
                con.Open();

                // Executing the query
                object rowsReturnedValue = cmd.ExecuteScalar();
                if ((int)rowsReturnedValue == -1)
                {
                    Response.Write("<script>alert('Registeration Failed: Username already exists!!')</script>");
                }
                else if ((int)rowsReturnedValue == 1)
                {
                    Response.Redirect("~/SignIn.aspx");
                }
            }
            ClearAllFields();
        }

        private void ClearAllFields()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            txtEmail.Text = "";
        }
    }
}