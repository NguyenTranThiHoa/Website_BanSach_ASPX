<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="SuaDanhmuc.aspx.cs" Inherits="QuanLySach.WebAdmin.SuaDanhmuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px4" style="margin-top: 70px;margin-left: 100px">
   <div class="card mt-4 shadow-sm">
       <div class="card-header">
           <h4 class="mb-0">Sửa Danh mục 
               <asp:HyperLink ID="BackLink" runat="server" NavigateUrl="WFQLDanhmuc.aspx" CssClass="btn btn-primary float-end">Back</asp:HyperLink>
           </h4>
       </div>
       <div class="card-body" >
           <asp:Label ID="AlertMessage" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>
           <asp:Label ID="ErrorMessage" runat="server" CssClass="alert alert-danger" Visible="false"></asp:Label>
           <asp:Panel ID="EditPanel" runat="server" Visible="false">
               <asp:HiddenField ID="CategoryId" runat="server" />
               <div class="row">
                   <div class="col-ml-12 mb-3">
                       <label for="phanloai_name">Tên Danh mục*</label>
                       <asp:TextBox ID="phanloai_name" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
                   </div>
                   <div class="col-md-6 mb-3 text-end">
                       <br />
                       <asp:Button ID="SuaDMButton" runat="server" Text="Cập nhật" CssClass="btn btn-primary" OnClick="SuaDMButton_Click" />
                   </div>
               </div>
               </asp:Panel>
           </div>
       </div>
    </div>
</asp:Content>


