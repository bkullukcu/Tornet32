using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using InTheHand.Net.Sockets;

namespace WindowsFormsApplication6
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Interval = 1000;

            timer1.Start();

        
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            
            BluetoothDeviceInfo[] devices;
            using (BluetoothClient sdp = new BluetoothClient())
                devices = sdp.DiscoverDevices();
            bool b = true;
            foreach (BluetoothDeviceInfo deviceInfo in devices)
            {
                if (deviceInfo.DeviceName=="deneme1")
                {
                    acik.Visible = true;
                    kapali.Visible = false;
                    b = false;
                }
                else
                {

                    if (b)
                    {
                        acik.Visible = false;
                        kapali.Visible = true;
                    }


                }

            }
            b = true;
        }
       
    }
}
