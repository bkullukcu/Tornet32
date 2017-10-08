using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace trafikLambasıV5
{
    public partial class Form1 : Form
    {

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2B6L5DQ;Initial Catalog=db_all1n;Persist Security Info=True;User ID=system32;Password=system32.2017");
        SqlCommand komut;
        SqlDataAdapter adap;

        string sorgu = "";

        int bekleyenArabaSayisi = 0;
        int kirmiziIsikSuresi = 120;
        int sariBeklemeSuresi = 1;
        int ilkVeri=0,sonVeri=0,aracFarki=0;

        public Form1()
        {
            InitializeComponent();
            

        }

        public int yolIdBul()
        {
            int yol;
            if (yesil.Visible==true)
            {
                yol = 0;
            }
            else
            {
                yol = 1;
            }
            return yol;

        }
        public int bekleyenArabaSayisiniGetir(int bolgeId)
        {
            int arabaSayisi = 0;

            sorgu = "select bekleyenAracSayisi from tb_trafikLambasi where bolgeId=" + bolgeId.ToString();
            komut = new SqlCommand(sorgu, baglanti);
            baglanti.Open();
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                arabaSayisi = Convert.ToInt32(dr[0].ToString());
            }
            baglanti.Close();

            return arabaSayisi;
        }

        public void arabalariSifirla()
        {
            sorgu = "update tb_trafikLambasi set bekleyenAracSayisi=0";
            komut = new SqlCommand(sorgu, baglanti);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();

        }
        public void kirmiziIsiktanDus(int arabaSayisi)
        {

            kirmiziIsikSuresi = kirmiziIsikSuresi - (10 * arabaSayisi);
        }

        private void tmrVtKontrol_Tick(object sender, EventArgs e)
        {
            ilkVeri = bekleyenArabaSayisi;

            bekleyenArabaSayisi = bekleyenArabaSayisiniGetir(0);
            sonVeri = bekleyenArabaSayisi;
            aracFarki = sonVeri - ilkVeri;
            if (aracFarki>0)
            {
                kirmiziIsiktanDus(aracFarki);
            }
            label1.Text = aracFarki.ToString();
            arabaTemizleFormdan();
            arabaOlustur(bekleyenArabaSayisi, yolIdBul());
            label1.Text = bekleyenArabaSayisi.ToString();
            
        }

        private void tmrIsiklar_Tick(object sender, EventArgs e)
        {
            if (sariBeklemeSuresi==0)
            {
                if (altisikYesil)
                {
                    sari.Visible = false;
                    sari2.Visible = false;
                    yesil2.Visible = true;
                    kirmizi.Visible = true;
                    sariBeklemeSuresi = 1;
                    tmrIsiklar.Stop();
                }
                else
                {
                    sari.Visible = false;
                    sari2.Visible = false;
                    yesil.Visible = true;
                    kirmizi2.Visible = true;
                    sariBeklemeSuresi = 1;
                    tmrIsiklar.Stop();


                }
            }
            sariBeklemeSuresi--;
           

        }

        PictureBox[] arabalar;
        public void arabaOlustur(int adet, int yolId)
        {

            arabalar = new PictureBox[adet];

           
            if (yolId==1)
            {
                int soldakiArabalar = 0, sagdakiArabalar = 0;
                for (int i = 0; i < adet; i++)
                {
                    arabalar[i] = new PictureBox();
                    arabalar[i].ImageLocation = "araba.png";
                    arabalar[i].Width = 45;
                    arabalar[i].Height = 45;
                    arabalar[i].Margin = new Padding(3);
                    arabalar[i].SizeMode = PictureBoxSizeMode.StretchImage;
                    arabalar[i].BackColor = Color.Gray;

                    if (i % 2 == 0)
                    {
                        arabalar[i].Location = new Point(623, 540 + (50 * sagdakiArabalar));
                        sagdakiArabalar++;
                    }
                    else
                    {
                        arabalar[i].Location = new Point(564, 540 + (50 * soldakiArabalar));
                        soldakiArabalar++;
                    }

                    Controls.Add(arabalar[i]);
                    arabalar[i].BringToFront();


                }
            }
            else if (yolId==0)
            {
                int yukarıdakiArabalar = 0, asagidakiArabalar = 0;
                for (int i = 0; i < adet; i++)
                {
                    arabalar[i] = new PictureBox();
                    arabalar[i].ImageLocation = "arabayan.png";
                    arabalar[i].Width = 69;
                    arabalar[i].Height = 36;
                    arabalar[i].Margin = new Padding(3);
                    arabalar[i].SizeMode = PictureBoxSizeMode.StretchImage;
                    arabalar[i].BackColor = Color.Gray;

                    if (i % 2 == 0)
                    {
                      
                        arabalar[i].Location=new Point(477-(75*asagidakiArabalar), 500);
                        asagidakiArabalar++;
                    }
                    else
                    {
                        arabalar[i].Location=new Point(477 - (75 * yukarıdakiArabalar), 450);

                        yukarıdakiArabalar++;
                    }

                    Controls.Add(arabalar[i]);
                    arabalar[i].BringToFront();


                }


            }



        }
        PictureBox[] trafikArabalari;
        bool trafikDikeyAkicak = true;
        public void trafikOlustur()
        {
            try
            {
                foreach (var item in trafikArabalari)
                {
                    item.Dispose();
                }
            }
            catch (Exception)
            {
                
            }
            Random r = new Random();
            trafikArabalari = new PictureBox[5];

            if (yesil2.Visible==true)
            {

                trafikDikeyAkicak = false;
                for (int i = 0; i < trafikArabalari.Length; i++)
                {
                    trafikArabalari[i] = new PictureBox();
                    trafikArabalari[i].Width = 69;
                    trafikArabalari[i].Height = 36;
                    trafikArabalari[i].ImageLocation = "arabayan.png";
                    trafikArabalari[i].Margin = new Padding(3);
                    trafikArabalari[i].SizeMode = PictureBoxSizeMode.StretchImage;
                    trafikArabalari[i].BackColor = Color.Gray;
                    int randomSayi = r.Next(1, 5);
                    trafikArabalari[i].Location = new Point(-160 + (randomSayi * 75), 450);
                    Controls.Add(trafikArabalari[i]);
                    trafikArabalari[i].BringToFront();

                }
            }
            if (yesil.Visible==true)
            {
                trafikDikeyAkicak = true;

                for (int i = 0; i < trafikArabalari.Length; i++)
                {
                    trafikArabalari[i] = new PictureBox();
                    trafikArabalari[i].Width = 45;
                    trafikArabalari[i].Height = 45;
                    trafikArabalari[i].ImageLocation = "araba.png";
                    trafikArabalari[i].Margin = new Padding(3);
                    trafikArabalari[i].SizeMode = PictureBoxSizeMode.StretchImage;
                    trafikArabalari[i].BackColor = Color.Gray;

                    trafikArabalari[i].Location = new Point(564, 1000 + (r.Next(1, 5) * 50));
                    Controls.Add(trafikArabalari[i]);
                    trafikArabalari[i].BringToFront();

                }
             
            }
            tmrAkanTrafik.Start();

        }
        public void arabaTemizleFormdan()
        {

            try
            {
                foreach (var araba in arabalar)
                {
                    araba.Dispose();
                }
            }
            catch (Exception)
            {

            }
        }

        
        private void tmrSayac_Tick(object sender, EventArgs e)
        {
            if (yesil.Visible==true&&bekleyenArabaSayisi>0)
            {

                lblUstIsikSayac.Text = kirmiziIsikSuresi.ToString();
                
                kirmiziIsikSuresi--;
                if (kirmiziIsikSuresi<=0)
                {
                    kirmiziIsikSuresi = 120;
                    isiklarinRenginiDegistir();
                    tmrVtKontrol.Stop();
                    tmrArabaSur.Start();

                    tmrSayac.Stop();
                    tmrVtKontrol.Stop();
                    lblAltIsikSayac.Text = "000";
                    lblUstIsikSayac.Text = "000";


                }
            }

            else if(yesil.Visible == false && bekleyenArabaSayisi > 0)
            {
                lblAltIsikSayac.Text = kirmiziIsikSuresi.ToString();

                kirmiziIsikSuresi--;
                if (kirmiziIsikSuresi <= 0)
                {
                        kirmiziIsikSuresi = 120;
                    isiklarinRenginiDegistir();
                    tmrVtKontrol.Stop();
                    tmrArabaSur.Start();

                    tmrSayac.Stop();
                    tmrVtKontrol.Stop();

                }
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            trafikOlustur();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            isiklarinRenginiDegistir();

        }
        int i = 0;
        int sure = 0;
        private void tmrArabaSur_Tick(object sender, EventArgs e)
        {

            if (sure>=10)
            {

               
                tmrSayac.Stop();
                if (altisikYesil)
                {

                    foreach (var araba in arabalar)
                    {
                       
                        araba.Location = new Point(araba.Location.X + 15, araba.Location.Y);

                    }
                    if (i == 50)
                    {

                       
                        arabalariSifirla();
                        arabaTemizleFormdan();
                        tmrVtKontrol.Start();
                        tmrSayac.Start();
                        kirmiziIsikSuresi = 120;
                        tmrArabaSur.Stop();
                        i = 0;
                        sure = 0;

                    }
                    i++;
                }
                else
                {

                    foreach (var araba in arabalar)
                    {
                        araba.Location = new Point(araba.Location.X, araba.Location.Y - 15);

                    }
                    if (i == 50)
                    {


                        arabalariSifirla();
                        arabaTemizleFormdan();
                        tmrVtKontrol.Start();
                        tmrSayac.Start();
                        kirmiziIsikSuresi = 120;
                        tmrArabaSur.Stop();
                        i = 0;
                        sure = 0;


                    }
                    i++;
                }
            }
            sure++;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            
        }
        Random ran = new Random();

        private void tmrAkanTrafik_Tick(object sender, EventArgs e)
        {
            int randomSayi = ran.Next(1,5);
            
            if (yesil.Visible==true)
            {

                try
                {
                    foreach (var araba in trafikArabalari)
                    {
                        araba.Location = new Point(araba.Location.X, araba.Location.Y - 15);
                        if (araba.Location.Y <-150)
                        {
                            araba.Location = new Point(623, 1000 + (randomSayi * 50));

                        }
                    }
                }
                catch (Exception)
                {
                    trafikOlustur();
                   
                }
                
                 
            }
            if (yesil2.Visible==true)
            {
                try
                {
                    foreach (var araba in trafikArabalari)
                    {
                        araba.Location = new Point(araba.Location.X + 15, araba.Location.Y);
                        if (araba.Location.X > 1250)
                        {
                            araba.Location = new Point(-200 - (randomSayi * 75), 450);

                        }

                    }
                }
                catch (Exception)
                {
                    trafikOlustur();


                }
            }
            



        }

        bool altisikYesil = true;
        public void isiklarinRenginiDegistir()
        {
            if (yesil.Visible==true)
            {
                yesil.Visible = false;
                kirmizi2.Visible = false;
                sari.Visible = true;
                sari2.Visible = true;
                altisikYesil = true;
                tmrIsiklar.Start();
            }
            else
            {
                yesil.Visible = false;
                yesil2.Visible = false;
                kirmizi.Visible = false;
                kirmizi2.Visible = false;
                sari.Visible = true;
                sari2.Visible = true;
                altisikYesil = false;
                tmrIsiklar.Start();
            }
            trafikOlustur();

            tmrAkanTrafik.Start();

        }
    }
}
