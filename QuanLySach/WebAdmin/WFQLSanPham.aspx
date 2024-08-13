<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="WFQLSanPham.aspx.cs" Inherits="QuanLySach.WebAdmin.WFQLSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px4" style="margin-top: 70px;margin-left: 100px">
          <div class="card mt-4 shadow-sm">
       <div class="card-header">
           <h4 class="mb-0">Sản phẩm
               <asp:HyperLink ID="AddProductLink" runat="server" NavigateUrl="ThemSanpham.aspx" CssClass="btn btn-primary float-end">Thêm</asp:HyperLink>
           </h4>
       </div>
       <div class="card-body">
           <asp:Label ID="AlertMessage" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>

           <asp:Repeater ID="ProductsRepeater" runat="server" OnItemCommand="ProductsRepeater_ItemCommand">
               <HeaderTemplate>
                   <div class="table-responsive">
                       <table class="table table-striped table-bordered">
                           <thead>
                               <tr>
                                   <th>ID</th>
                                   <th>Tên danh mục</th>
                                   <th>Tên sản phẩm</th>
                                   <th>Giá</th>
                                   <th>Hình ảnh</th>
                                   <th>Mô tả</th>
                                   <th>Số lượng</th>
                                   <th>Thao tác</th>
                               </tr>
                           </thead>
                           <tbody>
               </HeaderTemplate>
               <ItemTemplate>
                   <tr>
                       <td><%# Eval("id") %></td>
                       <td><%# Eval("phanloai_id") %></td>
                       <td><%# Eval("ten") %></td>
                       <td><%# Eval("gia") %></td>
                       <td>
                           <img src='<%# $"./img/{Eval("anh")}" %>' style="width: 80px; height: 80px;" alt="Hình ảnh" />
                       </td>
                       <td><%# Eval("mota") %></td>
                       <td><%# Eval("soluong") %></td>
                       <td>
                           <asp:HyperLink ID="EditLink" runat="server" NavigateUrl='<%# $"SuaSanpham.aspx?id={Eval("id")}" %>' CssClass="btn btn-success btn-sm">Sửa</asp:HyperLink>
                           <asp:LinkButton ID="DeleteButton" runat="server" CommandName="DeleteProduct" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-danger btn-sm" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này?')">Xóa</asp:LinkButton>
                       </td>
                   </tr>
               </ItemTemplate>
               <FooterTemplate>
                           </tbody>
                       </table>
                   </div>
               </FooterTemplate>
           </asp:Repeater>
           <asp:Label ID="NoRecordsLabel" runat="server" CssClass="mb-0" Visible="false">Không tìm thấy bản ghi nào</asp:Label>
       </div>
        </div>
    </div>
</asp:Content>

