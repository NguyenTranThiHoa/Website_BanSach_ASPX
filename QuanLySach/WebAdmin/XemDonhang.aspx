<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="XemDonhang.aspx.cs" Inherits="QuanLySach.WebAdmin.XemDonhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div class="container" style="margin-top: 50px; margin-left: 100px">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="mb-4">Xem và cập nhật trạng thái đơn hàng</h1>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-md-3">Khách hàng:</div>
                                                <div class="col-md-9">
                                                    <asp:Label ID="CustomerName" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">Địa chỉ:</div>
                                                <div class="col-md-9">
                                                    <asp:Label ID="Address" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">Số điện thoại:</div>
                                                <div class="col-md-9">
                                                    <asp:Label ID="PhoneNumber" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">Email:</div>
                                                <div class="col-md-9">
                                                    <asp:Label ID="Email" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">Trạng thái đơn hàng:</div>
                                                <div class="col-md-9">
                                                    <asp:DropDownList ID="StatusDropDownList" runat="server">
                                                        <asp:ListItem Text="Xử lý" Value="Xử lý"></asp:ListItem>
                                                        <asp:ListItem Text="Đã xác nhận" Value="Đã xác nhận"></asp:ListItem>
                                                        <asp:ListItem Text="Đang chuyển hàng" Value="Đang chuyển hàng"></asp:ListItem>
                                                        <asp:ListItem Text="Đã giao hàng" Value="Đã giao hàng"></asp:ListItem>
                                                        <asp:ListItem Text="Đã hủy" Value="Đã hủy"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <asp:Button ID="UpdateButton" runat="server" Text="Cập nhật" OnClick="UpdateButton_Click" CssClass="btn btn-primary" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="col-md-6">
                                    <h3>Chi tiết đơn hàng</h3>
                                    <table class="table">
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Ảnh</th>
                                       
                                            <th>Đơn Giá</th>
                                            <th>Số lượng</th>
                                            <th>Thành tiền</th>
                                        </tr>
                                        <asp:Repeater ID="OrderItemsRepeater" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Container.ItemIndex + 1 %></td>
                                                    <td><%# Eval("ten") %></td>
                                                    <td>
                                                        <img src='<%# ResolveUrl("../IMAGE/" + Eval("anh").ToString()) %>' style="width: 80px; height: 80px;" alt="Img" />
                                                    </td>
                                                    <td><%# string.Format("{0:N0} VNĐ", Eval("price")) %></td>
                                                    <td><%# Eval("qty") %></td>
                                                    <td><%# string.Format("{0:N0} VNĐ", Eval("total")) %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                    <div class="tongtien">
                                        <h5>
                                            Tổng tiền:
                                            <asp:Label ID="TotalLabel" runat="server" Text=""></asp:Label>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
