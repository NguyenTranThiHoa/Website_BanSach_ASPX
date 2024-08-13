using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach
{
    public partial class listorders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
                LoadOrderData();
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

        private void LoadOrderData()
        {
            using (var context = new Model1())
            {
                var orders = context.orders.OrderByDescending(o => o.created_at).ToList();

                gridOrders.DataSource = orders;
                gridOrders.DataBind();
            }
        }

        protected void gridOrders_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var order = (order)e.Row.DataItem;

                e.Row.Cells[0].Text = order.id.ToString();
                e.Row.Cells[1].Text = order.lastname;
                e.Row.Cells[2].Text = order.created_at.ToString();
                e.Row.Cells[3].Text = $"<span class='{GetStatusClass(order.status)}'>{order.status}</span>";
            }
        }

        protected string GetStatusClass(string status)
        {
            switch (status)
            {
                case "Xử lý":
                    return "processing";
                case "Đã giao":
                    return "delivered";
                case "Hủy":
                    return "canceled";
                default:
                    return "";
            }
        }

    }
}
    