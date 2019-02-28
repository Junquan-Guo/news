using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class page_user_addUser : System.Web.UI.Page
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    int id = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["managename"] == null)
        {

        }
        else
        {
            if (Request.QueryString["userid"] != null)
            {
                id = int.Parse(Request.QueryString["userid"]);
                ShowMessage(id);
            }
        }
    }

    public void ShowMessage(int id)
    {
        String sql = "select username,email,sex,grouping,introduce from users where userid = " + id;
        con.Open();
        try
        {
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader re = com.ExecuteReader();
            if (re.Read())
            {
                TextBox1.Text = re.GetString(0);
                TextBox2.Text = re.GetString(1);
                String sex = re.GetString(2);
                String group = re.GetString(3);
                TextBox3.Text = re.GetString(4);           
                if (RadioButton1.Text == sex)
                    RadioButton1.Checked = true;
                if (RadioButton2.Text == sex)
                    RadioButton1.Checked = true;
                if (RadioButton3.Text == sex)
                    RadioButton1.Checked = true;

            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('查找失败')</script>");
        }
        finally
        {
            con.Close();
        }
    }
}