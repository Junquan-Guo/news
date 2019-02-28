using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class page_main : System.Web.UI.Page
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        init();
        if (Session["managename"] == null)
        {
            SetData();
        }
        else
        {
            SetData();

        }
    }

    public void SetData()
    {
        string sql = "select COUNT(*) from pinglun";
        con.Open();
        try
        {
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader re = com.ExecuteReader();
            int pl = (int)com.ExecuteScalar();
            if (re.Read())
            {
                message.Text = re.GetString(pl);
            }

            re.Close();
        }
        catch (Exception ex)
        {

        }
        finally
        {
            con.Close();
        }
    }

    public void init()
    {
        String sql = "select COUNT(fileid) from files";
        String sql2 = "select COUNT(id) from pinglun";
        String sql3 = "select COUNT(userid) from users";
        con.Open();
        try
        {
            SqlCommand com = new SqlCommand(sql, con);
            SqlCommand com2 = new SqlCommand(sql2, con);
            SqlCommand com3 = new SqlCommand(sql3, con);
            SqlDataReader re = com.ExecuteReader();
            if (re.Read())
                article.Text = re.GetInt32(0).ToString();
            re.Close();
            re = com2.ExecuteReader();
            if (re.Read())
                message.Text = re.GetInt32(0).ToString();
            re.Close();
            re = com3.ExecuteReader();
            if (re.Read())
                amount.Text = re.GetInt32(0).ToString();
            re.Close();
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