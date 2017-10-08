using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace lambalar
{
    public partial class Form1 : Form
    {

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2B6L5DQ;Initial Catalog=db_all1n;Persist Security Info=True;User ID=system32;Password=system32.2017");
        SqlCommand komut;
        SqlDataAdapter adap;

        string sorgu = "";

        public Form1()
        {
            InitializeComponent();

            kirmizi.Visible = false;
            sari.Visible = false;
            yesil.Visible = false;
            lamba1isik.Visible = false;
        }

        private void pictureBox7_Click(object sender, EventArgs e)
        {

        }
        public void LambaKontrol()

        {

            sorgu = "select * from tb_lambalar where lambaId=1";
            komut = new SqlCommand(sorgu,baglanti);
            baglanti.Open();
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                if (dr[1].ToString()=="0")
                {
                    lamba1isik.Visible = false;
                }
                else
                {
                    lamba1isik.Visible = true;

                }
            }
            baglanti.Close();

        }
        public void trafikKontrol()

        {

            sorgu = "select * from tb_lambalar where lambaId=0";
            komut = new SqlCommand(sorgu, baglanti);
            baglanti.Open();
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                if (dr[1].ToString() == "0")
                {
                    kirmizi.Visible = true;
                    sari.Visible = false;
                    yesil.Visible = false;
                }
                if (dr[1].ToString() == "1")
                {
                    kirmizi.Visible = false;
                    sari.Visible = true;
                    yesil.Visible = false;
                }
                if (dr[1].ToString() == "2")
                {

               
                    kirmizi.Visible = false;
                    sari.Visible = false;
                    yesil.Visible = true;

                }
            }
            baglanti.Close();

        }
        private void pictureBox6_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox5_Click(object sender, EventArgs e)
        {
           

        }

        private void timer_Tick(object sender, EventArgs e)
        {
            trafikKontrol();
            LambaKontrol();
        }
    }
}
