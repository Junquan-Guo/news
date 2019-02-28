using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
public partial class page_news_newsList : System.Web.UI.Page
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    ArrayList deleteFile = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["managename"] == null)
        {

        }
        else
        {

        }
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataKey key = GridView1.DataKeys[e.RowIndex];
        int id = int.Parse(key[0].ToString());
        if (HasPinglun(id))
        {
            e.Cancel = true;
            Response.Write("<script>alert('请先删除评论')</script>");
        }
        initCheckBox();
    }

    //判断新闻是否有评论
    public Boolean HasPinglun(int id)
    {
        String sql = "select * from pinglun where fileid = " + id;
        con.Open();
        try
        {
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader re = com.ExecuteReader();
            if (re.HasRows)
            {
                re.Close();
                return true;
            }
            re.Close();
            return false;
        }
        catch (Exception ex)
        {
            return false;
        }
        finally
        {
            con.Close();
        }
    }
    //删除对应id的新闻
    public void DeleteFile(int id)
    {
        String sql = "delete from files where fileid = " + id;
        con.Open();
        try
        {
            SqlCommand com = new SqlCommand(sql, con);
            if (com.ExecuteNonQuery() <= 0)
                Response.Write("<script>alert('新闻" + id + "删除失败')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('新闻" + id + "删除失败')</script>");
        }
        finally
        {
            con.Close();
        }
    }
    //重置选中按钮
    public void initCheckBox()
    {
        foreach (CheckBox b in deleteFile)
            b.Checked = false;
        deleteFile.Clear();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox b = (CheckBox)sender;
        if (b.Checked)
            deleteFile.Add(b);
        else
        {
            if (deleteFile.Contains(b))
                deleteFile.Remove(b);
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        ArrayList cancel = new ArrayList();
        Button bt = (Button)sender;
        if (deleteFile.Count == 0)
            Response.Write("<script>alert('请选择你要删除的行')</script>");
        else
        {
            foreach (CheckBox b in deleteFile)
            {
                int id = int.Parse(b.ToolTip);
                if (HasPinglun(id))
                {
                    cancel.Add(id);
                }
                else
                {
                    DeleteFile(id);
                }
            }
            if (cancel.Count == 0)
                Response.Write("<script>alert('删除成功')</script>");
            else
            {
                String s = "";
                foreach (int i in cancel)
                {
                    s += i + ",";
                }
                Response.Write("<script>alert('新闻" + s.Substring(0, s.Length - 1) + "删除失败,原因:有评论没有删除')</script>");
            }
        }
        initCheckBox();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
        initCheckBox();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton bt = (LinkButton)sender;
        Response.Redirect("newsEdit.aspx?fileid=" + bt.ToolTip);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}