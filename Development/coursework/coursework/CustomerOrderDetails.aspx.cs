using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.OleDb;
using System.Web.UI.WebControls;

namespace coursework
{
    public partial class CustomerOrderDetails : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("Provider=MSDAORA; Data Source=XE;User ID=cwkushal;password=gurung; Unicode=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCustomerID.Text = DropDownList1.SelectedItem.Value;
            showData();
            txtdeliveryID.Text = "";
            deliveryPointTextBox.Text = "";
        }

        protected void txtCustomerID_TextChanged(object sender, EventArgs e)
        {

        }

        public void showData()
        {
            string customer_id = txtCustomerID.Text;
            if (customer_id != "")
            {
                SqlDataSource2.SelectCommand = "select * from order_details where customer_id='" + customer_id + "'";
            }
            GridView1.DataBind();
        }

        protected void deliveryPointTextBox_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void deliveryPointBtn_Click(object sender, EventArgs e)
        {
            GridViewRow gridViewRow = GridView1.Rows[0];
            txtdeliveryID.Text = gridViewRow.Cells[5].Text;

            conn.Open();
            OleDbCommand cmd = new OleDbCommand("select delivery_point from delivery_address where delivery_id='" + txtdeliveryID.Text + "'", conn);
            cmd.ExecuteNonQuery();

            OleDbDataReader dataReader;
            dataReader = cmd.ExecuteReader();
            while (dataReader.Read())
            {
                deliveryPointTextBox.Text = dataReader.GetValue(0).ToString();
            }
            conn.Close();
        }

    }
}