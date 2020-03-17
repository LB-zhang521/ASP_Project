using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace BGLB.ASP.NETStudy_01
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "SELECT * FROM Student";
                SqlConnection scon = null;      //先定义
                SqlDataAdapter sda = null;
                DataSet ds = null;
                scon = new SqlConnection("Server=.;Uid=sa;Pwd=991220;Database=Person"); //后使用
                scon.Open();
                sda = new SqlDataAdapter(sql, scon);
                ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                scon.Close();

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            string sql = "SELECT * FROM Student";
            SqlConnection scon = null;      //先定义
            SqlDataAdapter sda = null;
            DataSet ds = null;
            scon = new SqlConnection("Server=.;Uid=sa;Pwd=991220;Database=Person"); //后使用
            scon.Open();
            sda = new SqlDataAdapter(sql, scon);
            ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            scon.Close();

        }

        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            string sql = "SELECT * FROM Student";
            SqlConnection scon = null;      //先定义
            SqlDataAdapter sda = null;
            DataSet ds = null;
            scon = new SqlConnection("Server=.;Uid=sa;Pwd=991220;Database=Person"); //后使用
            scon.Open();
            sda = new SqlDataAdapter(sql, scon);
            ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            scon.Close();
        }

        protected void GridView1_RowUpdated(object sender, System.Web.UI.WebControls.GridViewUpdatedEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            string key = GridView1.DataKeys[e.RowIndex].Value.ToString();//修改前的值；
            string xh = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text.Trim();//学号
            string xm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text.Trim();//姓名
            string nl = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.Trim();// 性别
            string xb = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim();// 年龄
            string bz = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text.Trim();// 备注
            string upSql = "update student set sId = '"+xh+ "',sName = '"+xm+"',sGender='"+xb+"',sAge='"+nl+"',sRemark='"+bz+"' where sId = '"+key+"'";
            SqlConnection scon = null;     
            SqlDataAdapter sda = null;
            DataSet ds = null;

            SqlCommand sqlcom = null;
            scon = new SqlConnection("Server=.;Uid=sa;Pwd=991220;Database=Person");
            scon.Open();
            sqlcom = new SqlCommand(upSql, scon);//更新
            sqlcom.ExecuteNonQuery();

            GridView1.EditIndex = -1;
            sda = new SqlDataAdapter("select * from student", scon);//查询全部
            ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            scon.Close();
        }
    }
}