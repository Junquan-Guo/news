using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class hd_cont : System.Web.UI.Page
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Image1.ImageUrl = ResolveUrl(SelectHeader());
        }
        else
        {
            Image1.ImageUrl = ResolveUrl(SelectHeader());
        }
    }

    public string SelectHeader()
    {
        string s = "images/user000.jpg";
       
        con.Open();
        try
        {
            string sql = "select picture from users where username = '" + Session["username"].ToString() + "'";
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader re = com.ExecuteReader();
            if (re.Read())
                s = re.GetString(0);
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            if (TextBox1.Text.Trim() != "")
            {
                String str = "insert into pinglun(comment,publishdate,username,fileid) values('" + TextBox1.Text + "','" + DateTime.Now + "','"
                    + Session["username"].ToString() + "'," + Request.QueryString["fileid"] + ")";
                try
                {
                    con.Open();
                    SqlCommand com = new SqlCommand(str, con);
                    if (com.ExecuteNonQuery() > 0)
                    {
                        Response.Write("<script>alert('评论成功')</script>");
                        GridView1.DataBind();
                        GridView2.DataBind();
                        GridView3.DataBind();
                    }
                    else
                        Response.Write("<script>alert('评论失败')</script>");
                }
                catch (Exception ez)
                {
                    Response.Write("<script>alert('评论失败2')</script>");
                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                Response.Write("<script>alert('评论不能为空，请输入设计再评论！！！')</script>");
            }
        }
        else {
            Response.Write("<script>alert('请登录后再评论！！！')</script>");
        }
    }
}

