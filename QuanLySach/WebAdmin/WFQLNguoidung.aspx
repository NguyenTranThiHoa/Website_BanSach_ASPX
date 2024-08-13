<%--<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="WFQLNguoidung.aspx.cs" Inherits="QuanLySach.WebAdmin.WFQLNguoidung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px4" style="margin-top: 70px;margin-left: 100px">
        <div class="row">
            <div class="col-md-12">
               
                <div class="card">
                    <div class="card-header">
                        <h4>Người dùng
                            <asp:HyperLink ID="AddUserLink" runat="server" NavigateUrl="ThemNguoidung.aspx" CssClass="btn btn-primary float-end">Thêm Admin/User</asp:HyperLink>
                        </h4>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="UsersGridView" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" OnRowCommand="UsersGridView_RowCommand" OnSelectedIndexChanged="UsersGridView_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="Id" />
                                <asp:BoundField DataField="user_name" HeaderText="Tên" />
                                <asp:BoundField DataField="name" HeaderText="Tên đăng nhập" />
                                <asp:BoundField DataField="password" HeaderText="Password" />
                                <asp:BoundField DataField="description" HeaderText="Vai trò" />
                                <asp:TemplateField HeaderText="Sửa">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="EditLink" runat="server" NavigateUrl='<%# Eval("id", "SuaNguoidung.aspx?id={0}") %>' CssClass="btn btn-success">Sửa</asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Xóa">
                                    <ItemTemplate>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="DeleteUser" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-danger" Text="Xóa" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
--%>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="WFQLNguoidung.aspx.cs" Inherits="QuanLySach.WebAdmin.WFQLNguoidung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px4" style="margin-top: 70px;margin-left: 100px">
        <div class="row">
            <div class="col-md-12">
               
                <div class="card mt-4">
                    <div class="card-header">
                        <h4>Danh sách người dùng</h4>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="UsersGridView" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" OnRowCommand="UsersGridView_RowCommand" OnSelectedIndexChanged="UsersGridView_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="Id" />
                                <asp:BoundField DataField="user_name" HeaderText="Tên" />
                                <asp:BoundField DataField="name" HeaderText="Tên đăng nhập" />
                                <asp:BoundField DataField="password" HeaderText="Password" />
                                <asp:BoundField DataField="description" HeaderText="Vai trò" />
                                <asp:TemplateField HeaderText="Sửa">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="EditLink" runat="server" NavigateUrl='<%# Eval("id", "SuaNguoidung.aspx?id={0}") %>' CssClass="btn btn-success">Sửa</asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Xóa">
                                    <ItemTemplate>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="DeleteUser" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-danger" Text="Xóa" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>