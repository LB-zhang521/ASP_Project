using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace BGLB.ASP.NETStudy_01
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string xh = TextBox1.Text.Trim();
            string xm = TextBox2.Text.Trim();                                                                 
            string xb =  RadioButtonList1.SelectedValue;                                            
            string nl = TextBox3.Text.Trim();                                                               
            string bz = TextBox4.Text.Trim();                                                                 
            string sql = "INSERT INTO Student(sId,sName,sGender,sAge,sRemark) values('"+xh+"','"+xm+"','"+xb+"','"+nl+"','"+bz+"')";//插入的sql语句
            SqlConnection scon = null;
            SqlDataAdapter sda = null;
            DataSet ds = null;
            SqlCommand sqlcom = null;
            scon = new SqlConnection("Server=.;Uid=sa;Pwd=991220;Database=Person");
            scon.Open();
           sqlcom = new SqlCommand(sql, scon);
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