﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AyurvedicSystem.Treatments
{
    public partial class TteatmentsMain : UserControl
    {
        public TteatmentsMain()
        {
            InitializeComponent();
        }

        private void bunifuFlatButton1_Click(object sender, EventArgs e)
        {
            TreatmentsNew item = new TreatmentsNew();
            panel1.Controls.Clear();
            //item.Top = 10;
            //item.Left = 10;
            panel1.Controls.Add(item);
        }

        private void bunifuFlatButton2_Click(object sender, EventArgs e)
        {
            TreatmentsExisting item = new TreatmentsExisting();
            panel1.Controls.Clear();
            //item.Top = 10;
            //item.Left = 10;
            panel1.Controls.Add(item);
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
