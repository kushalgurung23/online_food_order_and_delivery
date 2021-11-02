using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace coursework
{
    public partial class DishSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDishCode.Text = DropDownList2.SelectedItem.Value;
            displayDishRestaurantData();
        }

        public void displayDishRestaurantData()
        {
            string dish_code = txtDishCode.Text;
            if (dish_code != "")
            { 
                SqlDataSource2.SelectCommand = "select d.dish_code, d.dish_name, dr.dish_rate, r.restaurant_id, r.restaurant_name from restaurant r join dish_restaurant dr on r.restaurant_id = dr.restaurant_id join dish d on dr.dish_code = d.dish_code where dr.dish_code = '" + dish_code + "'";
            }
            GridView1.DataBind();
        }
    }
}