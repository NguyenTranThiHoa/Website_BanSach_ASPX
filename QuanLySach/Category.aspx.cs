using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.DanhMucSanPham
{
    public partial class Category : System.Web.UI.Page
    {
        private Model1 _context = new Model1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int categoryId;
                if (Request.QueryString["id"] != null && int.TryParse(Request.QueryString["id"], out categoryId))
                {
                    LoadProductsByCategory(categoryId);
                }
                else
                {
                    productContainer.InnerHtml = "Danh mục không hợp lệ.";
                }
            }
        }
        private void LoadProductsByCategory(int? categoryId)
        {
            if (categoryId == null)
            {
                // Handle the case where categoryId is null (e.g., return an empty list or a message)
                productContainer.InnerHtml = "<div>No category selected.</div>";
                return;
            }

            var products = _context.sanphams
                                   .Where(s => s.phanloai_id == categoryId)
                                   .Select(s => new
                                   {
                                       s.id,
                                       s.ten,
                                       s.gia,
                                       s.anh
                                   }).ToList();

            string productHtml = string.Join("", products.Select(p => $@"
            <div class='item'>
                <div class='gallery'>
                    <a href='ProductDetails.aspx?id={p.id}'>
                        <img src='/IMAGE/{p.anh}' alt='{p.ten}' />
                    </a>
                    <div class='desc'>{p.ten}</div>
                    <div class='price'>Giá: {p.gia} VND</div>
                </div>
            </div>"));
            productContainer.InnerHtml = productHtml;
        }



    }
}