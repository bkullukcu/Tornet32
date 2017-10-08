namespace WindowsFormsApplication6
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.acik = new System.Windows.Forms.PictureBox();
            this.kapali = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.acik)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.kapali)).BeginInit();
            this.SuspendLayout();
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // acik
            // 
            this.acik.Image = global::WindowsFormsApplication6.Properties.Resources.acik;
            this.acik.Location = new System.Drawing.Point(169, 1);
            this.acik.Name = "acik";
            this.acik.Size = new System.Drawing.Size(554, 674);
            this.acik.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.acik.TabIndex = 0;
            this.acik.TabStop = false;
            // 
            // kapali
            // 
            this.kapali.Image = global::WindowsFormsApplication6.Properties.Resources.kapali;
            this.kapali.Location = new System.Drawing.Point(169, 1);
            this.kapali.Name = "kapali";
            this.kapali.Size = new System.Drawing.Size(554, 674);
            this.kapali.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.kapali.TabIndex = 0;
            this.kapali.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1392, 674);
            this.Controls.Add(this.kapali);
            this.Controls.Add(this.acik);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.acik)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.kapali)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.PictureBox acik;
        private System.Windows.Forms.PictureBox kapali;
    }
}

