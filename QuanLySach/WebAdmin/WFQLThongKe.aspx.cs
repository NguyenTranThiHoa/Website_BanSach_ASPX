using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class WFQLThongKe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Gọi phương thức để load dữ liệu cho form thống kê khi trang được load lần đầu
                LoadData();
            }
        }
        protected void LoadData()
        {
            // Kết nối với cơ sở dữ liệu sử dụng Entity Framework
            using (var db = new Model1())
            {
                // Lấy danh sách các mục đơn hàng từ cơ sở dữ liệu
                var orderItems = db.order_items.ToList();

                // Kiểm tra xem người dùng đã chọn khoảng thời gian hay chưa
                if (!string.IsNullOrEmpty(startDateTextBox.Text) && !string.IsNullOrEmpty(endDateTextBox.Text))
                {
                    // Chuyển đổi ngày bắt đầu và kết thúc từ dạng chuỗi sang kiểu DateTime
                    var startDate = DateTime.Parse(startDateTextBox.Text);
                    var endDate = DateTime.Parse(endDateTextBox.Text);

                    // Lọc các mục đơn hàng theo khoảng thời gian
                    orderItems = orderItems.Where(item => item.updated_at >= startDate && item.updated_at <= endDate).ToList();
                }

                // Tính tổng doanh thu
                decimal totalRevenue = orderItems.Sum(item => item.total);

                // Hiển thị dữ liệu lên giao diện
                orderGridView.DataSource = orderItems;
                orderGridView.DataBind();

                totalRevenueLabel.Text = $"Tổng doanh thu: {totalRevenue.ToString("C")}";
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            // Gọi lại phương thức LoadData khi người dùng nhấn nút "Cập nhật"
            LoadData();
        }
    }
}