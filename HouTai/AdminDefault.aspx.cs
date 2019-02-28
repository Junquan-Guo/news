using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["managename"] == null)
        {
            //Response.Redirect("~/HouTai/404.aspx");
            picture.ImageUrl = ResolveUrl(SelectHeader());
            picture1.ImageUrl = ResolveUrl(SelectHeader());
            picture2.ImageUrl = ResolveUrl(SelectHeader());

        }
        else
        {
            lblloginmessage.Text = "你好！" + Session["managename"] + "，欢迎登录";
            managename1.Text = Session["managename"].ToString();
            managename2.Text = Session["managename"].ToString();
            picture.ImageUrl = ResolveUrl(SelectHeader());
            picture1.ImageUrl = ResolveUrl(SelectHeader());
            picture2.ImageUrl = ResolveUrl(SelectHeader());
            hint1.Text = "请输入“" + Session["managepassword"]+ "”，否则不会解锁成功哦！！！";
        }
    }

    public string SelectHeader()
    {
        string s = "~/HouTai/images/face.jpg";
        string sql = "select picture from manage where managename = '" + managename1.Text + "'";
        con.Open();
        try
        {
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader re = com.ExecuteReader();
            if (re.Read())
                s = re.GetString(0);
            else
                s = "~/HouTai/images/face.jpg";
            re.Close();
            return s;
        }
        catch (Exception ex)
        {
            return s;
        }
        finally
        {
            con.Close();
        }
    }
}