using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class XemDonhang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load thông tin đơn hàng khi trang được load lần đầu tiên
                LoadOrderDetails();
            }
        }
        private void LoadOrderDetails()
        {
            // Lấy ID đơn hàng từ QueryString
            int orderId = Convert.ToInt32(Request.QueryString["id"]);

            // Khởi tạo đối tượng DbContext
            using (Model1 context = new Model1())
            {
                // Truy vấn để lấy thông tin của đơn hàng
                var order = context.orders.FirstOrDefault(o => o.id == orderId);

                if (order != null)
                {
                    CustomerName.Text = order.lastname;
                    Address.Text = order.address;
                    PhoneNumber.Text = order.phone;
                    Email.Text = order.email;
                    StatusDropDownList.SelectedValue = order.status;
                }

                // Truy vấn để lấy chi tiết sản phẩm của đơn hàng
                var orderItems = context.order_items.Where(oi => oi.order_id == orderId).ToList();

                // Hiển thị chi tiết sản phẩm trong Repeater
                OrderItemsRepeater.DataSource = orderItems;
                OrderItemsRepeater.DataBind();

                // Tính tổng tiền và hiển thị
                var total = orderItems.Sum(oi => oi.total);
                TotalLabel.Text = $"{total:N0} VNĐ";
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            // Lấy ID đơn hàng từ QueryString
            int orderId = Convert.ToInt32(Request.QueryString["id"]);

            // Khởi tạo đối tượng DbContext
            using (Model1 context = new Model1())
            {
                // Truy vấn để lấy thông tin của đơn hàng
                var order = context.orders.FirstOrDefault(o => o.id == orderId);

                if (order != null)
                {
                    // Cập nhật trạng thái đơn hàng
                    order.status = StatusDropDownList.SelectedValue;
                    // Lưu thay đổi vào cơ sở dữ liệu
                    context.SaveChanges();
                }
            }
        }
    }
}