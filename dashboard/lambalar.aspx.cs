using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class lambalar : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2B6L5DQ;Initial Catalog=db_all1n;Persist Security Info=True;User ID=system32;Password=system32.2017");
    SqlCommand komut;
    SqlDataAdapter adap;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lambalar_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (lamba.SelectedValue=="1")
        {
            isiklar.Items.Clear();
            isiklar.Items.Add(new ListItem("Yak", "1"));
            isiklar.Items.Add(new ListItem("Söndür", "0"));
        }
        else
        {
            isiklar.Items.Clear();
            isiklar.Items.Add(new ListItem("Kırmızı", "0"));
            isiklar.Items.Add(new ListItem("Sarı", "1"));
            isiklar.Items.Add(new ListItem("Yeşil", "2"));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        komut = new SqlCommand("update tb_lambalar set lambaAcik="+isiklar.SelectedValue+" where lambaId="+lamba.SelectedValue,baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
    }
}