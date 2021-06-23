using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;

using System.Windows.Forms;
using System.Data.SqlClient;


namespace QLVĐV
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Do you really want to exit the program ?", "notify", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            {
                e.Cancel=true;
            }
        }

        private void btncancel_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-PPOG0J8\CSDL;Initial Catalog=Athletes;Integrated Security=True");
            try
            {
                conn.Open();
                string tk = txbusername.Text;
                string mk = txbPassword.Text;
                string sql = "select*from Login where UserName='"+tk+"' and PassWord='"+mk+"' ";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader dta =cmd.ExecuteReader(); 
                if (dta.Read()==true)
                {
                    MessageBox.Show("Login Succesful");
                }
                else
                {
                    MessageBox.Show("Login failed");
                }
            }
           catch(Exception )
            {
                MessageBox.Show("Connection errors");
            }

            state f = new state();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void txbusername_TextChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void txbPassword_TextChanged(object sender, EventArgs e)
        {

        }

      
     
    }
}
