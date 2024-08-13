using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace QuanLySach
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
                LoadCartData();
            }
        }

        public void LoadData()
        {
            using (var _context = new Model1())
            {
                var danhmuc = _context.phanloais.ToList();
                dropdownContent.InnerHtml = string.Join("", danhmuc.Select(d => $"<a href='#'id= {d.id} '> {d.phanloai_name}</a>"));
            }
        }

        /********************************************************************************/
        //private void LoadCartData()
        //{
        //    if (Session["cart"] != null)
        //    {
        //        var cart = (List<sanpham>)Session["cart"];
        //        cartTable.Rows.Clear(); // Clear existing rows to avoid duplication

        //        // Add header row if not added already
        //        var headerRow = new HtmlTableRow();
        //        headerRow.Cells.Add(new HtmlTableCell { InnerText = "STT" });
        //        headerRow.Cells.Add(new HtmlTableCell { InnerText = "Tên sản phẩm" });
        //        headerRow.Cells.Add(new HtmlTableCell { InnerText = "Hình ảnh" });
        //        headerRow.Cells.Add(new HtmlTableCell { InnerText = "Đơn giá" });
        //        headerRow.Cells.Add(new HtmlTableCell { InnerText = "Số lượng" });
        //        headerRow.Cells.Add(new HtmlTableCell { InnerText = "Thành tiền" });
        //        headerRow.Cells.Add(new HtmlTableCell { InnerText = "Hành động" });
        //        cartTable.Rows.Add(headerRow);

        //        decimal totalAmount = 0;

        //        foreach (var item in cart)
        //        {
        //            var row = new HtmlTableRow();

        //            // Adding cells for each column
        //            row.Cells.Add(new HtmlTableCell { InnerText = (cart.IndexOf(item) + 1).ToString() });
        //            row.Cells.Add(new HtmlTableCell { InnerText = item.ten });

        //            var imageCell = new HtmlTableCell();
        //            var image = new HtmlImage { Src = item.anh };
        //            image.Style.Add("max-width", "100px");
        //            imageCell.Controls.Add(image);
        //            row.Cells.Add(imageCell);

        //            row.Cells.Add(new HtmlTableCell { InnerText = $"{item.gia:N0} VND" });

        //            var quantityCell = new HtmlTableCell();
        //            var quantityInput = new HtmlInputText("number")
        //            {
        //                Value = item.soluong.ToString()
        //            };
        //            quantityInput.Attributes["min"] = "1";
        //            quantityCell.Controls.Add(quantityInput);
        //            row.Cells.Add(quantityCell);

        //            decimal temporaryTotal = (decimal)(item.gia * item.soluong);
        //            totalAmount += temporaryTotal;
        //            row.Cells.Add(new HtmlTableCell { InnerText = $"{temporaryTotal:N0} VND" });

        //            var updateButtonCell = new HtmlTableCell();
        //            var updateButton = new Button
        //            {
        //                CssClass = "btn btn-warning",
        //                Text = "Cập nhật",
        //                CommandArgument = item.id.ToString()
        //            };
        //            //updateButton.Click += UpdateButton_Click;
        //            //updateButtonCell.Controls.Add(updateButton);
        //            //row.Cells.Add(updateButtonCell);

        //            var deleteButtonCell = new HtmlTableCell();
        //            var deleteButton = new HtmlAnchor
        //            {
        //                HRef = $"./deletecart.aspx?id={item.id}",
        //                InnerHtml = "Xóa",
        //                Attributes = { ["class"] = "btn btn-danger" }
        //            };
        //            deleteButtonCell.Controls.Add(deleteButton);
        //            row.Cells.Add(deleteButtonCell);

        //            cartTable.Rows.Add(row);
        //        }

        //        var totalAmountSpan = FindControl("totalAmountSpan") as HtmlGenericControl;
        //        if (totalAmountSpan != null)
        //        {
        //            totalAmountSpan.InnerText = $"{totalAmount:N0} VND";
        //        }
        //    }
        //}

        public void LoadCartData()
        {
            if (Session["cart"] != null)
            {
                var cart = (List<sanpham>)Session["cart"];
                cartTable.Rows.Clear(); // Clear existing rows to avoid duplication

                // Add header row if not added already
                var headerRow = new HtmlTableRow();
                headerRow.Cells.Add(new HtmlTableCell { InnerText = "STT" });
                headerRow.Cells.Add(new HtmlTableCell { InnerText = "Tên sản phẩm" });
                headerRow.Cells.Add(new HtmlTableCell { InnerText = "Hình ảnh" });
                headerRow.Cells.Add(new HtmlTableCell { InnerText = "Đơn giá" });
                headerRow.Cells.Add(new HtmlTableCell { InnerText = "Số lượng" });
                headerRow.Cells.Add(new HtmlTableCell { InnerText = "Thành tiền" });
                headerRow.Cells.Add(new HtmlTableCell { InnerText = "Hành động" });
                cartTable.Rows.Add(headerRow);

                decimal totalAmount = 0;

                foreach (var item in cart)
                {
                    var row = new HtmlTableRow();

                    // Adding cells for each column
                    row.Cells.Add(new HtmlTableCell { InnerText = (cart.IndexOf(item) + 1).ToString() });
                    row.Cells.Add(new HtmlTableCell { InnerText = item.ten });

                    var imageCell = new HtmlTableCell();
                    var image = new HtmlImage { Src = ResolveUrl("~/IMAGE/") + item.anh };
                    image.Style.Add("max-width", "100px");
                    image.Style.Add("max-height", "100px");
                    image.Style.Add("width", "auto");
                    image.Style.Add("height", "auto");
                    imageCell.Controls.Add(image);
                    row.Cells.Add(imageCell);

                    row.Cells.Add(new HtmlTableCell { InnerText = $"{item.gia:N0} VND" });

                    var quantityCell = new HtmlTableCell();
                    var quantityInput = new HtmlInputText("number")
                    {
                        Value = item.soluong.ToString()
                    };
                    quantityInput.Attributes["min"] = "1";
                    quantityInput.Attributes["data-id"] = item.id.ToString(); // Store item id
                    quantityCell.Controls.Add(quantityInput);
                    row.Cells.Add(quantityCell);

                    decimal temporaryTotal = (decimal)(item.gia * item.soluong);
                    totalAmount += temporaryTotal;
                    row.Cells.Add(new HtmlTableCell { InnerText = $"{temporaryTotal:N0} VND" });

                    cartTable.Rows.Add(row);
                }

                var totalAmountSpan = FindControl("totalAmountSpan") as HtmlGenericControl;
                if (totalAmountSpan != null)
                {
                    totalAmountSpan.InnerText = $"{totalAmount:N0} VND";
                }
            }
            if (Session["cart"] != null)
            {
                var cart = (List<sanpham>)Session["cart"];

                // Lưu trữ thông tin giỏ hàng vào Session để sử dụng ở trang thanh toán
                Session["cartItems"] = cart;
            }
        }

        protected void checkoutButton_Click(object sender, EventArgs e)
        {
            // Xử lý chuyển hướng đến trang thanh toán
            Response.Redirect("checkout.aspx");
        }

        protected void redirectToCheckout(object sender, EventArgs e)
        {
            // Lưu thông tin giỏ hàng vào Session
            if (Session["cart"] != null)
            {
                var cart = (List<sanpham>)Session["cart"];
                Session["cartItems"] = cart;
                Response.Redirect("checkout.aspx");
            }
        }

    }
}