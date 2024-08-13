<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="WFQLTrangchu.aspx.cs" Inherits="QuanLySach.WebAdmin.WFQLTrangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 50px;margin-left: 100px">
         <div class="row">
      <div class="col-md-12">
          <h4 class="mt-4">Dashboard</h4>
          <asp:Label ID="AlertMessage" runat="server" CssClass="alert"></asp:Label>
      </div>

      <div class="col-md-3 mb-3">
          <div class="card card-body bg-primary p-3 fs-3 text-center">
              <strong class="text-sm mb-0 text-capitalize font-weight-bold fs-4">Tổng Danh Mục</strong>
              <h5 class="fw-bold mb-4 fs-3 text-center">
                  <asp:Label ID="TotalCategories" runat="server"></asp:Label>
              </h5>
          </div>
      </div>

      <div class="col-md-3 mb-3">
          <div class="card card-body bg-warning p-3 fs-3 text-center">
              <strong class="text-sm mb-0 text-capitalize font-weight-bold fs-4">Tổng Sản Phẩm</strong>
              <h5 class="fw-bold mb-4 fs-3 text-center">
                  <asp:Label ID="TotalProducts" runat="server"></asp:Label>
              </h5>
          </div>
      </div>

      <div class="col-md-3 mb-3">
          <div class="card card-body bg-warning p-3 fs-3 text-center">
              <strong class="text-sm mb-0 text-capitalize font-weight-bold fs-4">Tổng Người Dùng</strong>
              <h5 class="fw-bold mb-4 fs-3 text-center">
                  <asp:Label ID="TotalUsers" runat="server"></asp:Label>
              </h5>
          </div>
      </div>

      <div class="col-md-3 mb-3">
          <div class="card card-body bg-primary p-3 fs-3 text-center">
              <strong class="text-sm mb-0 text-capitalize font-weight-bold fs-4">Tổng Đơn Hàng</strong>
              <h5 class="fw-bold mb-4 fs-3 text-center">
                  <asp:Label ID="TotalOrders" runat="server"></asp:Label>
              </h5>
          </div>
      </div>

      <div class="col-mb-12 mb-3">
          <hr>
          <h4 class="mt-4">Đơn hàng mới</h4>
      </div>
      <div class="col-md-3 mb-3">
          <div class="card card-body bg-info p-3 fs-3 text-center">
              <strong class="text-sm mb-0 text-capitalize font-weight-bold fs-4">Đơn hàng hôm nay</strong>
              <h5 class="fw-bold mb-4 fs-3 text-center">
                  <asp:Label ID="TodayOrders" runat="server"></asp:Label>
              </h5>
          </div>
      </div>
  </div>
</asp:Content>
   