using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class QFQLDanhmuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategories();
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
        }
        private void BindCategories()
        {
            using (var context = new Model1())
            {
                var categories = context.phanloais.ToList();
                if (categories.Count > 0)
                {
                    CategoriesGridView.DataSource = categories;
                    CategoriesGridView.DataBind();
                    NoRecordsLabel.Visible = false;
                }
                else
                {
                    NoRecordsLabel.Visible = true;
                }
            }
        }


        protected void CategoriesGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditCategory")
            {
                int categoryId = Convert.ToInt32(e.CommandArgument);
                Response.Redirect($"SuaDanhmuc.aspx?id={categoryId}");
            }
            else if (e.CommandName == "DeleteCategory")
            {
                int categoryId = Convert.ToInt32(e.CommandArgument);
                using (var context = new Model1())
                {
                    var category = context.phanloais.Find(categoryId);
                    if (category != null)
                    {
                        context.phanloais.Remove(category);
                        context.SaveChanges();
                        AlertMessage.Text = "Danh mục đã xóa thành công!";
                        AlertMessage.Visible = true;
                        BindCategories();
                    }
                }
            }
        }

        protected void CategoriesGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}