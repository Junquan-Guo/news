using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HouTai_UserVaild : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String name = Request.QueryString["username"];
        String password = Request.QueryString["password"];
    }
}