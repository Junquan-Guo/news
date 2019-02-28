using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    //获取配置连接信息
    public static string connstr = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;

    //建立连接对象 ，将配置信息作为 连接对象的参数
    SqlConnection conn = new SqlConnection(connstr);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            //写对数据库的操作语句
            string str = "select * from manage where managename='" + txtmanagename.Text + "' and managepassword='" + txtmanagepassword.Text + "'";

            //打开数据库连接；
            conn.Open();
            //建立一个对数据库的操作的执行对象命令
            SqlCommand cmd = new SqlCommand(str, conn);

            //执行对数据库的操作，并将对数据库操作的结果保存起来
            SqlDataReader reader = cmd.ExecuteReader();

            //对结果进行判断并处理

            if (reader.HasRows)
            {
                Session["managename"] = txtmanagename.Text;
                Session["managepassword"] = txtmanagepassword.Text;
                // Response.Write("<script>alert('登录成功!')</script>");
                Response.Redirect("~/HouTai/AdminDefault.aspx");
            }
            else
                Response.Write("<script>alert('用户名或密码错误，登录不成功')</script>");

            reader.Close();
        }
        catch
        {
            Response.Write("<script>alert('用户名或密码错误，登录失败')</script>");
        }
        //关闭数据集，关闭连接

        finally
        {
            conn.Close();
        }
    }

    /*重置按钮事件**/

    protected void btncancle_Click(object sender, EventArgs e)
    {
        txtmanagename.Text = "";
        txtmanagepassword.Text = "";
    }
}