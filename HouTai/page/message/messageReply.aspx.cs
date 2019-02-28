using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class page_message_messageReply : System.Web.UI.Page
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["managename"] == null)
        {
        }

    }

}