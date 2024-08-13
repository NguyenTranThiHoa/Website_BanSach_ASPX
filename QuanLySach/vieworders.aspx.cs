using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach
{
    public partial class vieworders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int orderId = Convert.ToInt32(Request.QueryString["id"]);
                LoadOrderDetails(orderId);
                DataBind();
            }
        }
        private void LoadOrderDetails(int orderId)
        {
            using (var context = new Model1())
            {
                // Load order information
                var order = context.orders.Where(o => o.id == orderId).FirstOrDefault();
                if (order != null)
                {
                    lblCustomerName.Text = order.lastname;
                    lblAddress.Text = order.address;
                    lblPhone.Text = order.phone;
                    lblEmail.Text = order.email;
                    lblStatus.Text = order.status;

                    // Determine payment status based on order status
                    if (order.status == "Delivered")
                    {
                        lblPaymentStatus.Text = "Paid";
                        lblPaymentStatus.ForeColor = System.Drawing.Color.Green; // Set the text color to green
                    }
                    else if (order.status == "Canceled")
                    {
                        lblPaymentStatus.Text = "Canceled";
                        lblPaymentStatus.ForeColor = System.Drawing.Color.Red; // Set the text color to red
                    }
                    else
                    {
                        lblPaymentStatus.Text = "Unpaid";
                        lblPaymentStatus.ForeColor = System.Drawing.Color.Orange; // Set the text color to orange
                    }

                    // Load order items
                    var orderItems = context.order_items.Where(oi => oi.order_id == orderId).Select(oi => new
                    {
                        STT = oi.id,
                        ProductName = oi.ten,
                        ProductImage = oi.anh,
                        Price = (oi.price),
                        Quantity = (oi.qty),
                        TotalAmount = (oi.total)
                    }).ToList();

                    rptOrderItems.DataSource = orderItems;
                    rptOrderItems.DataBind();

                    decimal total = orderItems.Sum(oi => oi.TotalAmount);
                    lblTotal.Text = string.Format("{0:N0}", total) + "VND";
                }
            }
        }
    }
}
