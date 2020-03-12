using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace BGLB.ASP.NETStudy_01
{
    public partial class del : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection scon = null;
            SqlDataAdapter sda = null;
            DataSet ds = null;
            scon = new SqlConnection("Server=.;Uid=sa;Pwd=991220;Database=Person");
            scon.Open();
            sda = new SqlDataAdapter("SELECT * FROM Student", scon);
            ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            scon.Close();
        }      
        protected void Button1_Click(object sender, EventArgs e)
        {
            string tj = DropDownList1.Text.Trim();      //获取下拉列表框中的文本，并去掉文本的前后空格.
            string zhi = TextBox1.Text.Trim();
            string sql_1 = "DELETE FROM Student";
            string sql_2 = "DELETE FROM Student WHERE " + tj + "='" + zhi + "'";//根据条件删除
            SqlConnection scon = null;
            SqlDataAdapter sda = null;
            DataSet ds = null;
            SqlCommand sqlcom = null;
            scon = new SqlConnection("Server=.;Uid=sa;Pwd=991220;Database=Person"); //后使用
            scon.Open();
            if (tj == "sAll")
            {
                sqlcom = new SqlCommand(sql_1, scon);
            }
            else
            {
                sqlcom = new SqlCommand(sql_2, scon);
            }
            sqlcom.ExecuteNonQuery();
            sda = new SqlDataAdapter("SELECT * FROM Student", scon);
            ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            scon.Close();
        }
    }
}