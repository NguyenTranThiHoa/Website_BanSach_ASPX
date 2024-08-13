using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class WFQLDonhang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOrders();
            }
        }
        private void LoadOrders()
        {
            using (var context = new Model1())
            {
                // Load orders from the database
                var orders = context.orders
                                    .OrderBy(o => o.created_at)
                                    .ToList();

                // Transform data after it has been retrieved from the database
                var orderList = orders
                                .Select((o, index) => new
                                {
                                    STT = index + 1,
                                    o.id,
                                    o.created_at,
                                    o.status
                                })
                                .ToList();

                OrdersGridView.DataSource = orderList;
                OrdersGridView.DataBind();
            }
        }

        protected void OrdersGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedIndex = OrdersGridView.SelectedIndex;
            if (selectedIndex >= 0)
            {
                var orderId = OrdersGridView.DataKeys[selectedIndex].Value.ToString();

                // Redirect to details page with selected order ID
                Response.Redirect("XemDonhang.aspx?id=" + orderId);
            }
        }
    }
}