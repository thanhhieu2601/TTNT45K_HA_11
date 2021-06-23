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
            this.label2 = new System.Windows.Forms.Label();
            this.btn_find = new System.Windows.Forms.Button();
            this.dgv = new System.Windows.Forms.DataGridView();
            this.btn_add = new System.Windows.Forms.Button();
            this.btn_cancel = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txt_TimKiem = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(18, 46);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(31, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "ID";
            // 
            // btn_find
            // 
            this.btn_find.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_find.Location = new System.Drawing.Point(307, 115);
            this.btn_find.Name = "btn_find";
            this.btn_find.Size = new System.Drawing.Size(74, 31);
            this.btn_find.TabIndex = 4;
            this.btn_find.Text = "Edit";
            this.btn_find.UseVisualStyleBackColor = true;
            this.btn_find.Click += new System.EventHandler(this.button1_Click);
            // 
            // dgv
            // 
            this.dgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv.Location = new System.Drawing.Point(12, 176);
            this.dgv.Name = "dgv";
            this.dgv.Size = new System.Drawing.Size(536, 104);
            this.dgv.TabIndex = 6;
            // 
            // btn_add
            // 
            this.btn_add.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_add.Location = new System.Drawing.Point(212, 115);
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
            this.btn_cancel.Location = new System.Drawing.Point(404, 115);
            this.btn_cancel.Name = "btn_cancel";
            this.btn_cancel.Size = new System.Drawing.Size(64, 31);
            this.btn_cancel.TabIndex = 8;
            this.btn_cancel.Text = "Cancel";
            this.btn_cancel.UseVisualStyleBackColor = true;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkOrange;
            this.panel1.Controls.Add(this.button1);
            this.panel1.Controls.Add(this.txt_TimKiem);
            this.panel1.Controls.Add(this.btn_cancel);
            this.panel1.Controls.Add(this.btn_add);
            this.panel1.Controls.Add(this.btn_find);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(9, 15);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(539, 154);
            this.panel1.TabIndex = 9;
            // 
            // txt_TimKiem
            // 
            this.txt_TimKiem.Location = new System.Drawing.Point(106, 49);
            this.txt_TimKiem.Name = "txt_TimKiem";
            this.txt_TimKiem.Size = new System.Drawing.Size(388, 20);
            this.txt_TimKiem.TabIndex = 9;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(103, 115);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(76, 30);
            this.button1.TabIndex = 10;
            this.button1.Text = "Search";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // check
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(560, 292);
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
        private System.Windows.Forms.Button btn_find;
        private System.Windows.Forms.DataGridView dgv;
        private System.Windows.Forms.Button btn_add;
        private System.Windows.Forms.Button btn_cancel;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txt_TimKiem;
        private System.Windows.Forms.Button button1;
    }
}