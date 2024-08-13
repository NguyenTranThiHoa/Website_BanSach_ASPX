<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="WFQLDonhang.aspx.cs" Inherits="QuanLySach.WebAdmin.WFQLDonhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px4" style="margin-top: 70px; margin-left: 100px;">
        <style>
            .Xử-lý, .Đã-xác-nhận, .Đang-chuyển-hàng, .Đã-giao-hàng, .Đã-hủy {
                display: block;
            }
            .Xử-lý {
                background-color: orange;
                color: aliceblue;
            }
            .Đã-xác-nhận {
                background-color: yellowgreen;
                color: aliceblue;
            }
            .Đang-chuyển-hàng {
                background-color: lightblue;
                color: aliceblue;
            }
            .Đã-giao-hàng {
                background-color: green;
                color: aliceblue;
            }
            .Đã-hủy {
                background-color: red;
                color: aliceblue;
            }
        </style>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h4 class="m-0">Đơn Hàng</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:GridView ID="OrdersGridView" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" Width="100%" CellSpacing="0" OnSelectedIndexChanged="OrdersGridView_SelectedIndexChanged" DataKeyNames="id">
                        <Columns>
                            <asp:BoundField DataField="STT" HeaderText="STT" />
                            <asp:BoundField DataField="id" HeaderText="Mã đơn hàng" />
                            <asp:BoundField DataField="created_at" HeaderText="Ngày đặt" DataFormatString="{0:yyyy-MM-dd}" />
                            <asp:TemplateField HeaderText="Trạng thái">
                                <ItemTemplate>
                                    <span class='<%# Eval("status").ToString().Replace(" ", "-") %>'><%# Eval("status") %></span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Thao tác">
                                <ItemTemplate>
                                    <asp:HyperLink ID="ViewLink" runat="server" CssClass="btn btn-warning" NavigateUrl='<%# "XemDonhang.aspx?id=" + Eval("id") %>' Text="Xem"></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

