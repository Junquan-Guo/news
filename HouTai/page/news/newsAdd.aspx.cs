using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class page_news_newsAdd : System.Web.UI.Page
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["managename"] == null)
        {
            

        }
        else
        {
            if (Request.QueryString["fileid"] != null)
            {
                ShowMessage(int.Parse(Request.QueryString["fileid"]));
            }
        } 

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Label9.Text = TextBox1.Text + " " + TextBox2.Text + " " + TextBox3.Text + " " + TextBox4.Text + " " + TextBox5.Text + " " + TextBox6.Text + " " + drpfiletype.SelectedValue;
        //Label9.Text = "haha";

        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('文章标题不能为空！！！')</script>");
        }
        else if (Label11.Text.Trim() != "文件上传成功!预约如图所示：")
        {
            Response.Write("<script>alert('请上传封面图片！！！')</script>");
        }
        else if (TextBox2.Text == "")
        {
            Response.Write("<script>alert('文章作者不能为空！！！')</script>");
        }
        else if (TextBox3.Text == "")
        {
            Response.Write("<script>alert('发布时间不能为空！！！')</script>");
        }
        else if (TextBox4.Text == "")
        {
            Response.Write("<script>alert('关键字不能为空！！！')</script>");
        }
        else if (TextBox8.Text == "")
        {
            Response.Write("<script>alert('新闻来源不能为空！！！')</script>");
        }
        else if (TextBox5.Text == "")
        {
            Response.Write("<script>alert('内容摘要不能为空！！！')</script>");
        }
        else if (Editor1.Text.Trim() == "")
        {
            Response.Write("<script>alert('文章内容不能为空！！！')</script>");
        }

        else
        {
            String sql = "insert into files(filename,publishdate,redact,keyword,abstract,filecontent,typeid,source,pic) values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + Editor1.Text + "'," + int.Parse(drpfiletype.SelectedValue) + ",'"+TextBox8.Text+"','"+Label12.Text+ "')";
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand(sql, con);
                if (com.ExecuteNonQuery() <= 0)
                    Response.Write("<script>alert('发布失败')</script>");
                else
                    Response.Write("<script>alert('发布成功')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('发布失败1')</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        bool files = false;
        if (this.FileUpload1.HasFile)
        {
            //获取上传文件的后缀
            String fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
            String[] restrictExtension = { ".gif", ".jpg", ".bmp", ".png" };
            //判断文件类型是否符合
            for (int i = 0; i < restrictExtension.Length; i++)
            {
                if (fileExtension == restrictExtension[1])
                {
                    files = true;
                }
            }
            //调用SaveAs方法实现上传
            if (files == true)
            {
                try
                {
                    this.Image1.ImageUrl = "~/images/" + FileUpload1.FileName;
                    this.FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);
                    this.Label11.Text = "文件上传成功!预约如图所示：";
                    Label12.Text = "~/images/" + FileUpload1.FileName;
                }
                catch
                {
                    this.Label11.Text = "文件上传不成功";
                }
            }
            else
            {
                this.Label11.Text = "只能够上传后缀为.gif、 .jpg、 .bmp、.png的文件夹";
            }
        }
    }

    public void ShowMessage(int fileid)
    {
        String sql = "select * from files where fileid = " + fileid;
        con.Open();
        SqlCommand com = new SqlCommand(sql, con);
        SqlDataReader re = com.ExecuteReader();
        try
        {
            if (re.Read())
            {
                TextBox1.Text = re.GetString(1);
                TextBox2.Text = re.GetString(7);
                TextBox3.Text = re.GetDateTime(5).ToShortDateString();
                TextBox4.Text = re.GetString(10);
                TextBox5.Text = re.GetString(8);
                Editor1.Text = re.GetString(3);
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('error')</script>");
        }
        finally
        {
            con.Close();
        }
    }
}