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
    public partial class UsersOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand
                    {
                        CommandText = "GETUSERSANDROLESDATA",
                        CommandType = CommandType.StoredProcedure,
                        Connection = con
                    };

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;

                    DataSet ds = new DataSet();
                    // Opening the database connection is not required in case of data adapted
                    // Opening and closing of connection is managed automatically by dataadapter in Fill method
                    da.Fill(ds);
                    ds.Tables[0].TableName = "Users";
                    ds.Tables[1].TableName = "UserRoles";
                    ds.Tables[2].TableName = "Roles";

                    gvUsers.DataSource = ds.Tables["Users"];
                    gvUsers.DataBind();

                    gvUserRoles.DataSource = ds.Tables["UserRoles"];
                    gvUserRoles.DataBind();

                    gvRoles.DataSource = ds.Tables["Roles"];
                    gvRoles.DataBind();
                }
            }
        }
    }
}