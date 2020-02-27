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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection(" Server=.;Uid=sa;Pwd=991220;Database=Person");//第二步: 建立连接
            scon.Open();
            //第三步:打开数据
            SqlDataAdapter sda = new SqlDataAdapter(" SELECT * FROM Student", scon);
            //第四步:建立适配器
            DataSet ds = new DataSet();
            //第五步:内存申请空间
            sda.Fill(ds);
            //第六步:填充数据
            GridView1.DataSource = ds;
            //第七步:设定数据源
            GridView1.DataBind();
            //第八步:绑定数据
            scon.Close();
            //第九步:关闭数据

        }
    }
}