using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class register : System.Web.UI.Page
{
    public static string connstr = ConfigurationManager.ConnectionStrings["newsConnectionString"].ConnectionString;

    SqlConnection conn = new SqlConnection(connstr);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string str = "select * from users where username='" + txtusername.Text + "' ";

            SqlCommand cmd = new SqlCommand(str, conn);

            SqlDataReader reader = cmd.ExecuteReader();

            if (txtusername.Text == "")
            {
                Response.Write("<script>alert('请输入用户名!')</script>");
            }
            else if (reader.HasRows)
            {
                Response.Write("<script>alert('用户名已被占用，请重新输入新用户名!')</script>");
                reader.Close();
            }
            else if (txtphone.Text == "")
            {
                Response.Write("<script>alert('请输入手机号!')</script>");
            }
            else if (txtemail.Text == "")
            {
                Response.Write("<script>alert('请输入邮箱!')</script>");
            }
            else if (txtpassword.Text == "")
            {
                Response.Write("<script>alert('请输入密码!')</script>");
            }
            else if (txtrepassword.Text != txtpassword.Text)
            {
                Response.Write("<script>alert('输入密码不一致!')</script>");
            }
            else
            {
                reader.Close();
                string str1 = "insert into users(username,phone,email,password,sex)  values('" + txtusername.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + RadioButtonList1.SelectedValue + "')";
                SqlCommand cmd1 = new SqlCommand(str1, conn);

                cmd1.ExecuteNonQuery();//因为插入语句没有最后的结果集需要存储
                // Response.Write("<script>alert('注册成功!')</script>");
                Session["username"] = txtusername.Text;
                Response.Redirect("Default.aspx");
            }
        }

        catch
        {
            Response.Write("<script>alert('注册失败!')</script>");
        }
        finally { conn.Close(); }
    }
    protected void btncancle_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtphone.Text = "";
        txtemail.Text = "";
        txtpassword.Text ="";
        txtrepassword.Text = "";
        //Response.Redirect("~/AdminDefault.aspx");
    }
}