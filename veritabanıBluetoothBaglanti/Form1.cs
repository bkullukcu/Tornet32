using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using InTheHand.Net.Sockets;

namespace trafikLambasi_v3
{
    public partial class Form1 : Form
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2B6L5DQ;Initial Catalog=db_all1n;Persist Security Info=True;User ID=system32;Password=system32.2017");
        SqlCommand komut;
        string sorgu = "";

        BluetoothDeviceInfo[] arabalar;
        BluetoothClient sdp = new BluetoothClient();

        int a = -1, duranArabaSayisi = 0;
        string[] ilkArama, sonArama;
        public Form1()
        {
            InitializeComponent();
            timer1.Interval = 1000;
            timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (a == 0)
            {

                arabalar = sdp.DiscoverDevices();
                ilkArama = new string[arabalar.Length];
                for (int i = 0; i < arabalar.Length; i++)
                {
                    ilkArama[i] = arabalar[i].DeviceName;

                }

            }

            else if (a == 5)
            {
                arabalar = sdp.DiscoverDevices();
                sonArama = new string[arabalar.Length];
                for (int i = 0; i < arabalar.Length; i++)
                {
                    sonArama[i] = arabalar[i].DeviceName;
                }

                for (int i = 0; i < ilkArama.Length; i++)
                {
                    string aranacakAraba = ilkArama[i];

                    for (int a = 0; a < sonArama.Length; a++)
                    {
                        if (sonArama[a] == aranacakAraba)
                        {

                            duranArabaSayisi++;
                        }
                    }
                }
                a = -1;
                dbBekleyenArabalar("0", duranArabaSayisi.ToString());
                label1.Text = duranArabaSayisi.ToString();
            }
            a++;
            if (a > 6)
            {
                a = -1;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        public void dbBekleyenArabalar(string caddeId, string arabaSayisi)
        {

            sorgu = "update tb_trafikLambasi set bekleyenAracSayisi=" + arabaSayisi + " where caddeId=" + caddeId;
            komut = new SqlCommand(sorgu, baglanti);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

        }
    }
}
