using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Labeluser.Text = "未登录";
            Image1.ImageUrl = ResolveUrl(SelectHeader());
        }
        else
        {
            Labeluser.Text = Session["username"].ToString();
            Image1.ImageUrl = ResolveUrl(SelectHeader());
            Image2.ImageUrl = ResolveUrl(SelectHeader());
            Label1.Text = Session["username"].ToString();
        }
    }

    public string SelectHeader()
    {
        string s = "images/user000.jpg";
        string sql = "select picture from users where username = '" + Labeluser.Text + "'";
        con.Open();
        try
        {
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader re = com.ExecuteReader();
            if (re.Read())
                s = re.GetString(0);
            else
                s = "images/user000.jpg";
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
    //获取配置连接信息
    public static string connstr = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;

    //建立连接对象 ，将配置信息作为 连接对象的参数
    SqlConnection conn = new SqlConnection(connstr);
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            //写对数据库的操作语句
            string str = "select * from users where username='" + txtmanagename.Text + "' and password='" + txtmanagepassword.Text + "'";

            //打开数据库连接；
            conn.Open();
            //建立一个对数据库的操作的执行对象命令
            SqlCommand cmd = new SqlCommand(str, conn);

            //执行对数据库的操作，并将对数据库操作的结果保存起来
            SqlDataReader reader = cmd.ExecuteReader();

            //对结果进行判断并处理

            if (reader.HasRows)
            {
                Session["username"] = txtmanagename.Text;
                Session["password"] = txtmanagepassword.Text;
                // Response.Write("<script>alert('登录成功!')</script>");
                Response.Redirect(Request.Url.ToString());
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
    //清空
    protected void lbtnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();//注销会话期
        Labeluser.Text = "未登录";
        Image1.ImageUrl = ResolveUrl(SelectHeader());
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "all")
        {
            Response.Redirect("~/search.aspx?all=" + txtsearch.Text);
        }
        else
            Response.Redirect("~/search.aspx?" + DropDownList1.SelectedValue + "=" + txtsearch.Text);
    }
}
