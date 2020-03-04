using System;
using System.Data;
using System.Data.SqlClient;

namespace BGLB.ASP.NETStudy_01
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string tj = DropDownList1.Text.Trim();      //获取下拉列表框中的文本，并去掉文本的前后空格.
            string zhi = TextBox1.Text.Trim();
            string sql_1 = "SELECT * FROM Student";        
            string sql_2 = "SELECT * FROM Student WHERE " + tj + "='" + zhi + "'";//根据条件查询

            SqlConnection scon = null;      //先定义
            SqlDataAdapter sda = null;
            DataSet ds = null;
            scon = new SqlConnection("Server=.;Uid=sa;Pwd=991220;Database=Person"); //后使用
            scon.Open();
            if (tj == "sAll")
            {
                sda = new SqlDataAdapter(sql_1, scon);
            }
            else
            {
                sda = new SqlDataAdapter(sql_2, scon);
            }
            ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            scon.Close();
        }
    }
}