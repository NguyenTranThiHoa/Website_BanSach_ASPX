using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        private Model1 _context = new Model1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int productId;
                if (Request.QueryString["id"] != null && int.TryParse(Request.QueryString["id"], out productId))
                {
                    LoadProductDetails(productId);
                }
                else
                {
                    //productDetailsLiteral.Text = "Sản phẩm không hợp lệ.";
                }
            }
        }

        private void LoadProductDetails(int productId)
        {
            var product = (from sp in _context.sanphams
                           join pl in _context.phanloais on sp.phanloai_id equals pl.id
                           where sp.id == productId
                           select new
                           {
                               sp.ten,
                               sp.mota,
                               sp.anh,
                               sp.gia,
                               sp.soluong,
                               sp.masp,
                               pl.phanloai_name
                           }).FirstOrDefault();

            if (product != null)
            {
                pnlProductDetails.Visible = true;
                lblProductName.InnerText = product.ten;
                lblProductCode.InnerText = "Mã SP: " + product.masp;
                lblProductDescription.InnerText = product.mota;
                lblProductPrice.InnerText = "Giá: " + string.Format("{0:N0} VNĐ", product.gia);

                // Set hidden field value
                productIdField.Value = productId.ToString();

                // Set image source
                bigImage.ImageUrl = ResolveUrl("~/IMAGE/") + product.anh; // Change Src to ImageUrl
            }
            else
            {
                pnlProductDetails.Visible = false;
            }
        }


        protected void AddToCart_Click(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(productIdField.Value);

            // Ensure this captures the input value correctly
            int quantity;
            if (int.TryParse(qty.Text, out quantity) && quantity > 0)
            {
                var product = _context.sanphams.FirstOrDefault(sp => sp.id == productId);

                if (product != null)
                {
                    List<sanpham> cart = (List<sanpham>)Session["cart"] ?? new List<sanpham>();
                    var existingProduct = cart.FirstOrDefault(p => p.id == productId);
                    if (existingProduct != null)
                    {
                        existingProduct.soluong += quantity;
                    }
                    else
                    {
                        product.soluong = quantity;
                        cart.Add(product);
                    }
                    Session["cart"] = cart;
                }

            }
            else
            {
                // Handle invalid quantity input (e.g., show an error message)
            }
        }



    }
}