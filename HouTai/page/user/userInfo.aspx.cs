using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class page_user_userInfo : System.Web.UI.Page
{
    public static String conString = ConfigurationManager.ConnectionStrings["newsConnectionString"].ToString();
    private SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["managename"] == null)
        {
            Response.Redirect("~/HouTai/404.aspx");
            userFace.ImageUrl = ResolveUrl("~/HouTai/images/face.jpg");
        }
        else
        {
            managename1.Text = Session["managename"].ToString();
            SetData();

        }
    }

    public void SetData()
    {
        string s = "~/HouTai/images/face.jpg";
        string sql = "select picture,phone,birthday,email,introduce,managegroup,sex from manage where managename = '" + managename1.Text + "'";
        con.Open();
        try
        {
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader re = com.ExecuteReader();
            if (re.Read())
            {
                userFace.ImageUrl = ResolveUrl(re.GetString(0));
                phone.Text = re.GetString(1);
                birthday.Text = re.GetDateTime(2).ToString("yyyy-MM-dd");
                email.Text = re.GetString(3);
                introduce.Text = re.GetString(4);
                managegroup.Text = re.GetString(5);
                String sex = re.GetString(6);
                switch (sex)
                {
                    case "男":
                        RadioButton1.Checked = true;
                        break;
                    case "女":
                        RadioButton2.Checked = true;
                        break;
                    case "保密":
                        RadioButton3.Checked = true;
                        break;
                    
                }
            }
            else{
                userFace.ImageUrl = ResolveUrl(s);
            }
            re.Close();
        }
        catch (Exception ex)
        {
            userFace.ImageUrl = ResolveUrl(s);
        }
        finally
        {
            con.Close();
        }
    }
    /*public string SelectHeader()
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
    }*/
}