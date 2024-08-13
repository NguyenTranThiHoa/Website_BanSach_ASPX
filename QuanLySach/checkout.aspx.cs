using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace QuanLySach
{
    public partial class checkout : System.Web.UI.Page
    {
        private IEnumerable<object> cart;

        private HtmlGenericControl cartProductList; // Khai báo biến

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cartProductList = (HtmlGenericControl)this.FindControl("cartProductList"); // Khởi tạo biến
                LoadData();
                LoadCartData();
            }
        }

        private void LoadData()
        {
            using (var _context = new Model1())
            {
                var danhmuc = _context.phanloais.ToList();
                dropdownContent.InnerHtml = string.Join("", danhmuc.Select(d => $"<a href='#'id= {d.id} '> {d.phanloai_name}</a>"));
            }
        }

        private void LoadCartData()
        {
            if (Session["cartItems"] != null)
            {
                var cart = (List<sanpham>)Session["cartItems"];
                decimal totalAmount = 0;

                // Xóa các mục cũ trong giao diện
                cartProductList.Controls.Clear();

                foreach (var item in cart)
                {
                    // Tạo mới các mục sản phẩm
                    var productItem = new HtmlGenericControl("li");

                    // Thêm hình ảnh
                    var image = new HtmlImage { Src = $"/IMAGE/{item.anh}" };
                    image.Attributes["style"] = "max-width: 100px; margin-left:20px";
                    productItem.Controls.Add(image);

                    // Thêm tên sản phẩm
                    var nameSpan = new HtmlGenericControl("span");
                    nameSpan.Attributes["style"] = "margin-left:30px";
                    nameSpan.InnerText = item.ten;
                    productItem.Controls.Add(nameSpan);

                    // Thêm số lượng
                    var quantitySpan = new HtmlGenericControl("span");
                    quantitySpan.Attributes["style"] = "margin-left:50px";
                    quantitySpan.InnerText = item.soluong.ToString();
                    productItem.Controls.Add(quantitySpan);

                    // Thêm đơn giá
                    var priceSpan = new HtmlGenericControl("span");
                    priceSpan.Attributes["style"] = "margin-left:30px";
                    priceSpan.InnerText = $"{item.gia:N0} VND";
                    productItem.Controls.Add(priceSpan);

                    // Thêm thành tiền
                    decimal itemTotal = (decimal)(item.gia * item.soluong);
                    totalAmount += itemTotal;
                    var totalSpan = new HtmlGenericControl("span");
                    totalSpan.Attributes["style"] = "margin-left:30px";
                    totalSpan.InnerText = $"{itemTotal:N0} VND";
                    productItem.Controls.Add(totalSpan);

                    // Thêm mục sản phẩm vào giao diện
                    cartProductList.Controls.Add(productItem);
                }

                // Hiển thị tổng tiền
                totalAmountSpan.InnerText = $"{totalAmount:N0} VND";
            }
        }

        protected void btnDatHang_Click(object sender, EventArgs e)
        {
            if (Session["cartItems"] != null && ((List<sanpham>)Session["cartItems"]).Count > 0)
            {
                SaveOrderInfo();
                SaveOrderItems();
                ClearCart();
                Response.Redirect("ChucMungDatHang.aspx");
            }
            else
            {
                // Hiển thị thông báo nếu giỏ hàng trống
                // ví dụ: lblMessage.Text = "Giỏ hàng trống. Vui lòng thêm sản phẩm trước khi đặt hàng.";
            }
        }

        private int GetMaxOrderId()
        {
            using (var context = new Model1())
            {
                // Retrieve the maximum current order ID, or 0 if no orders exist
                return context.orders.Max(o => (int?)o.id) ?? 0;
            }
        }

        private void SaveOrderInfo()
        {
            using (var context = new Model1())
            {
                var order = new order
                {
                    // Assign a new unique ID to the order
                    id = GetMaxOrderId() + 1,
                    user_id = null,
                    firstname = txtFirstName.Value.ToString(),
                    lastname = txtLastName.Value.ToString(),
                    address = txtAddress.Value.ToString(),
                    phone = txtPhone.Value,
                    email = txtEmail.Value,
                    status = "Xu ly",
                    created_at = DateTime.Now,
                    updated_at = DateTime.Now
                };

                context.orders.Add(order);
                context.SaveChanges();
            }
        }

        private int GetMaxOrderItemId()
        {
            using (var context = new Model1())
            {
                // Retrieve the maximum current order item ID, or 0 if no items exist
                return context.order_items.Max(oi => (int?)oi.id) ?? 0;
            }
        }

        private void SaveOrderItems()
        {
            using (var context = new Model1())
            {
                var cart = (List<sanpham>)Session["cartItems"];
                var lastOrderId = context.orders.OrderByDescending(o => o.id).FirstOrDefault().id;
                var maxOrderItemId = GetMaxOrderItemId();

                foreach (var item in cart)
                {
                    var orderItem = new order_items
                    {
                        id = ++maxOrderItemId, // Increment the max ID for each new order item
                        order_id = lastOrderId,
                        product_id = item.id,
                        price = item.gia.ToString(),
                        qty = item.soluong.ToString(),
                        ten = item.ten,
                        anh = item.anh,
                        total = (int)(item.gia * item.soluong),
                        created_at = DateTime.Now,
                        updated_at = DateTime.Now
                    };

                    context.order_items.Add(orderItem);
                }

                context.SaveChanges();
            }
        }

        private void ClearCart()
        {
            Session.Remove("cartItems");
        }

    }
}