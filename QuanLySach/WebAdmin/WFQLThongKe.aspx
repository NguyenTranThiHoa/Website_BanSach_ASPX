<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="WFQLThongKe.aspx.cs" Inherits="QuanLySach.WebAdmin.WFQLThongKe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container-fluid px4" style="margin-top: 70px;margin-left: 100px">
            <div class="card mt-4 shadow-sm">
                <div class="card-header">
                    <h4 class="mb-0">THỐNG KÊ DOANH THU </h4><br>
                </div>
                <div class="card-body">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="startLabel" runat="server" Text="Ngày bắt đầu"></asp:Label>
                            <asp:TextBox ID="startDateTextBox" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                    </div><br />
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="endLabel" runat="server" Text="Ngày kết thúc"></asp:Label>
                            <asp:TextBox ID="endDateTextBox" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                    </div><br />
                    <div class="col-md-12 mb-3">
                        <div class="form-group">
                            <asp:Button ID="updateButton" runat="server" Text="Cập nhật" CssClass="btn btn-primary" OnClick="UpdateButton_Click" />
                        </div>
                    </div><br />
                    <div class="col-lg-12">
                        <asp:GridView ID="orderGridView" runat="server" CssClass="table table-striped" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="order_id" HeaderText="Mã đơn hàng" />
                                <asp:BoundField DataField="ten" HeaderText="Tên sản phẩm" />
                                <asp:BoundField DataField="qty" HeaderText="Số lượng bán được" />
                                <asp:BoundField DataField="total" HeaderText="Doanh thu" />
                                <asp:BoundField DataField="updated_at" HeaderText="Ngày đặt hàng" />
                            </Columns>
                        </asp:GridView>
                        <asp:Label ID="totalRevenueLabel" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

