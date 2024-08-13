using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class SuaDanhmuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int categoryId = int.Parse(Request.QueryString["id"]);
                    using (var context = new Model1())
                    {
                        var category = context.phanloais.Find(categoryId);
                        if (category != null)
                        {
                            CategoryId.Value = category.id.ToString();
                            phanloai_name.Text = category.phanloai_name;
                            EditPanel.Visible = true;
                        }
                    }
                }
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void SuaDMButton_Click(object sender, EventArgs e)
        {
            using (var context = new Model1())
            {
                int categoryId = int.Parse(CategoryId.Value);
                var category = context.phanloais.Find(categoryId);
                if (category != null)
                {
                    category.phanloai_name = phanloai_name.Text;
                    context.SaveChanges();
                    AlertMessage.Text = "Cập nhật danh mục thành công!";
                    AlertMessage.Visible = true;
                }
            }
        }
    }
}