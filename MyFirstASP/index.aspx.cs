using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstASP
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panOrder.Visible = panPricing.Visible = false;
            
            if (!Page.IsPostBack)
            {
                txtAddress.Visible = lblAddress.Visible = false;

                cboPizza.Items.Add(new ListItem("Vegetarian", "10"));
                cboPizza.Items.Add(new ListItem("Hawaian", "12"));
                cboPizza.Items.Add(new ListItem("All Dressed", "8"));
                cboPizza.Items.Add(new ListItem("Halal", "20"));

                lstPizzaSize.Items.Add(new ListItem("Small", "1"));
                lstPizzaSize.Items.Add(new ListItem("Medium", "1.5"));
                lstPizzaSize.Items.Add(new ListItem("Large", "2"));

                lstPizzaSize.SelectedIndex = 0;

                chklstToppings.Items.Add(new ListItem("bacon", "3"));
                chklstToppings.Items.Add(new ListItem("mushroom", "1.5"));
                chklstToppings.Items.Add(new ListItem("Extra Cheese", "2"));
                chklstToppings.Items.Add(new ListItem("Olive", "2"));

                radlstCrust.Items.Add(new ListItem("Normal"));
                radlstCrust.Items.Add(new ListItem("Thin"));
                radlstCrust.Items.Add(new ListItem("Thick"));

                radlstCrust.SelectedIndex = 0;
            }

            if(cboPizza.SelectedIndex > 0)
            {
                calculatePrice();
            }

        }

        private void calculatePrice()
        {

            //Add tips

            //Add quamtity
            decimal baseP = 0, delivery = 0, total = 0, topping = 0, subtotal = 0, tax = 0, tips = 0, quantity = 1;

            baseP = Convert.ToDecimal(cboPizza.SelectedItem.Value) * Convert.ToDecimal(lstPizzaSize.SelectedItem.Value);

            litPricing.Text = "<br> <b> Base Price: $ </b>" + baseP + "<br>";

            if(chkDelivery.Checked)
            {
                delivery = 3;
                litPricing.Text += "<br> <b> Delivery Price: $ </b>" + delivery + "<br>";
            }
            foreach(ListItem item in chklstToppings.Items)
            {
                //if statement ADVANCED
                topping += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;

 //               if (item.Selected)
 //               {
 //                   Convert.ToDecimal(item.Value);
 //               }
 //               else
 //                   topping = 0;
            }
            litPricing.Text += "<br> <b> Toppings Price: $ </b> " + topping +"<br>";

            subtotal = baseP + delivery + topping + tips;

            litPricing.Text += "<br> <b> Toppings Price: $ </b> " + subtotal + "<br>";

            tax += Math.Round(subtotal * Convert.ToDecimal(0.15), 2);



        }

        protected void cboPizza_SelectedIndexCHanged(object sender, EventArgs e)
        {

        }

        protected void btnOrderNow_Click(object sender, EventArgs e)
        {

        }

        protected void chkDelivery_CheckChanged(object sender, EventArgs e)
        {

        }

        protected void txtAddress_TextChanged(object sender, EventArgs e)
        {

        }

        protected void cboPizza_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lstPizzaSize_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}