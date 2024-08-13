<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="QFQLDanhmuc.aspx.cs" Inherits="QuanLySach.WebAdmin.QFQLDanhmuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="container" >
            <div class="row" style="margin-top: 50px; margin-left: 100px">
                <div class="container-fluid px4">
                    <div class="card mt-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="mb-0">Danh mục 
                                <a id="ContentPlaceHolder1_AddCategoryLink" class="btn btn-primary float-end" href="ThemDanhmuc.aspx">Thêm</a>
                            </h4>
                        </div>
            <div class="card-body">
                <asp:Label ID="AlertMessage" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>
                <asp:GridView ID="CategoriesGridView" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" OnRowCommand="CategoriesGridView_RowCommand" OnSelectedIndexChanged="CategoriesGridView_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="Phanloai_name" HeaderText="Tên danh mục" />
                        <asp:TemplateField HeaderText="Trạng Thái">
                            <ItemTemplate>
                                <asp:LinkButton ID="EditButton" runat="server" CommandName="EditCategory" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-success btn-sm">Sửa</asp:LinkButton>
                                <asp:LinkButton ID="DeleteButton" runat="server" CommandName="DeleteCategory" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-danger btn-sm">Xóa</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Label ID="NoRecordsLabel" runat="server" CssClass="mb-0" Visible="false">Không tìm thấy bản ghi nào</asp:Label>
             </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>

