namespace QLVĐV
{
    partial class check
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(check));
            this.label2 = new System.Windows.Forms.Label();
            this.btn_edit = new System.Windows.Forms.Button();
            this.dgv = new System.Windows.Forms.DataGridView();
            this.btn_add = new System.Windows.Forms.Button();
            this.btn_cancel = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txt_TimKiem = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.LightGray;
            this.label2.Location = new System.Drawing.Point(28, 52);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "IDINFOR";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // btn_edit
            // 
            this.btn_edit.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_edit.Location = new System.Drawing.Point(342, 115);
            this.btn_edit.Name = "btn_edit";
            this.btn_edit.Size = new System.Drawing.Size(74, 31);
            this.btn_edit.TabIndex = 4;
            this.btn_edit.Text = "Edit";
            this.btn_edit.UseVisualStyleBackColor = true;
            this.btn_edit.Click += new System.EventHandler(this.btn_edit_Click);
            // 
            // dgv
            // 
            this.dgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv.Location = new System.Drawing.Point(9, 176);
            this.dgv.Name = "dgv";
            this.dgv.Size = new System.Drawing.Size(507, 213);
            this.dgv.TabIndex = 6;
            // 
            // btn_add
            // 
            this.btn_add.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_add.Location = new System.Drawing.Point(258, 115);
            this.btn_add.Name = "btn_add";
            this.btn_add.Size = new System.Drawing.Size(64, 31);
            this.btn_add.TabIndex = 7;
            this.btn_add.Text = "Add";
            this.btn_add.UseVisualStyleBackColor = true;
            this.btn_add.Click += new System.EventHandler(this.button3_Click);
            // 
            // btn_cancel
            // 
            this.btn_cancel.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_cancel.Location = new System.Drawing.Point(436, 115);
            this.btn_cancel.Name = "btn_cancel";
            this.btn_cancel.Size = new System.Drawing.Size(64, 31);
            this.btn_cancel.TabIndex = 8;
            this.btn_cancel.Text = "Cancel";
            this.btn_cancel.UseVisualStyleBackColor = true;
            this.btn_cancel.Click += new System.EventHandler(this.btn_cancel_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkOrange;
            this.panel1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("panel1.BackgroundImage")));
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.Controls.Add(this.txt_TimKiem);
            this.panel1.Controls.Add(this.btn_cancel);
            this.panel1.Controls.Add(this.btn_add);
            this.panel1.Controls.Add(this.btn_edit);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(9, 15);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(507, 165);
            this.panel1.TabIndex = 9;
            // 
            // txt_TimKiem
            // 
            this.txt_TimKiem.Location = new System.Drawing.Point(31, 71);
            this.txt_TimKiem.Name = "txt_TimKiem";
            this.txt_TimKiem.Size = new System.Drawing.Size(446, 20);
            this.txt_TimKiem.TabIndex = 9;
            this.txt_TimKiem.TextChanged += new System.EventHandler(this.txt_TimKiem_TextChanged);
            // 
            // check
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(521, 401);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dgv);
            this.Name = "check";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "check";
            this.Load += new System.EventHandler(this.check_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btn_edit;
        private System.Windows.Forms.DataGridView dgv;
        private System.Windows.Forms.Button btn_add;
        private System.Windows.Forms.Button btn_cancel;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txt_TimKiem;
    }
}