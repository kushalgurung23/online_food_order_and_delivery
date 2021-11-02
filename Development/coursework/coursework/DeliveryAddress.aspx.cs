using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

namespace coursework
{
    public partial class DeliveryAddress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            // SAVE button of dish web form.
            OracleConnection cn = new OracleConnection("Data Source=XE;User ID=cwkushal;password=gurung; Unicode=True");
            cn.Open();
            String query = "INSERT into delivery_address (delivery_id, delivery_point, delivery_time, delivery_cost) values('" + txtDeliveryID.Text + "','" + txtDeliveryPoint.Text + "','" + txtDeliveryTime.Text + "','" + txtDeliveryCost.Text + "')";
            // Executing query
            OracleCommand cmd = new OracleCommand(query, cn);

            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/DeliveryAddress.aspx");

            txtDeliveryID.Text = "";
            txtDeliveryPoint.Text = "";
            txtDeliveryTime.Text = "";
            txtDeliveryCost.Text = "";
        }
    }
}