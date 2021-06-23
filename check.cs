using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QLVĐV
{
    public partial class check : Form
    {
         SqlConnection connection;
        SqlCommand Command;
        string str =@"Data Source=DESKTOP-UC8H1B1\SQLEXPRESS;Initial Catalog=VDV;Integrated Security=True ";
       SqlDataAdapter adapter= new SqlDataAdapter();
        DataTable table= new DataTable ();
        void loaddata()
        {
            Command = connection.CreateCommand();
            Command.CommandText = "select *from DanhSach";
            adapter.SelectCommand = Command;
            table.Clear();
            adapter.Fill(table);
            dgv.DataSource = table;
        }
        public check()
        {
            InitializeComponent();
        }

        private void check_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(str);
            connection.Open();
            loaddata();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Add f = new Add();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}
