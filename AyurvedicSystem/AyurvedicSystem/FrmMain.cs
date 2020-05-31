using AyurvedicSystem.SearchViews;
using AyurvedicSystem.ShopViews;
using AyurvedicSystem.Treatments;
using AyurvedicSystem.Views.AdminViews;
using ledger_horana;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AyurvedicSystem
{
    public partial class FrmMain : Form
    {
        String user, privilages;
        public FrmMain(String user,String privilages)
        {
            this.user = user;
            this.privilages = privilages;
            InitializeComponent();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void bunifuCustomLabel2_Click(object sender, EventArgs e)
        {

        }

        private void txtDebit_Click(object sender, EventArgs e)
        {

        }

        private void txtCredit_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void bunifuTileButton1_Click(object sender, EventArgs e)
        {
            RegisterMain item = new RegisterMain( user);
            panel2.Controls.Clear();
            //item.Top = 10;
            //item.Left = 10;
            panel2.Controls.Add(item);
        }

        private void bunifuTileButton2_Click(object sender, EventArgs e)
        {
            SearchMain item = new SearchMain();
            panel2.Controls.Clear();
            //item.Top = 10;
            //item.Left = 10;
            panel2.Controls.Add(item);
        }

        private void bunifuTileButton6_Click(object sender, EventArgs e)
        {
            TteatmentsMain  item = new TteatmentsMain();
            panel2.Controls.Clear();
            //item.Top = 10;
            //item.Left = 10;
            panel2.Controls.Add(item);
        }

        private void bunifuTileButton4_Click(object sender, EventArgs e)
        {
            AdminMain item = new AdminMain();
            panel2.Controls.Clear();
            //item.Top = 10;
            //item.Left = 10;
            panel2.Controls.Add(item);
        }

        private void bunifuThinButton21_Click(object sender, EventArgs e)
        {
            string message = "Do you want logout ?";
            string title = "logout";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result = MessageBox.Show(message, title, buttons);
            if (result == DialogResult.Yes)
            {
                frmLogin f = new frmLogin();
                
                f.Show();
                this.Hide();

            }
            else
            {
                // Do something  
            }
        }

        private void bunifuTileButton3_Click(object sender, EventArgs e)
        {
            ShopMain item = new ShopMain();
            panel2.Controls.Clear();
            //item.Top = 10;
            //item.Left = 10;
            panel2.Controls.Add(item);
        }
    }
}
