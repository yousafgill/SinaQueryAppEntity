<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="queryCategoryPage.aspx.cs" Inherits="SinaQueryAppEntity.pages.queryCategoryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      <div class="FormContainer">
        <fieldset>
            <br />
            <br />
            <legend>Query Category  </legend>
            <div class="col-sm-7">
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblCategoryId" runat="server" Text="Category Title"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox CssClass="form-control" ID="txtCategoryId" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-5 col-sm-offset-7 ">
                        <asp:Button CssClass="btn btn-primary btn-block" ID="save" runat="server" Text="Save" OnClick="save_Click" />
                        <asp:TextBox ForeColor="Red" Visible="false" Enabled="false" Border="none" CssClass="form-control" ID="status" runat="server"></asp:TextBox>

                    </div>
                </div>
            </div>

        </fieldset>

    </div>


</asp:Content>
