<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="searchQuery.aspx.cs" Inherits="SinaQueryAppEntity.pages.searchQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <div class="form-group">
       <div class="col-sm-3">
     <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
           </div>
       <div class="col-sm-2">
    <asp:Button CssClass="form-control" width="66px" ID="filterUq" runat="server" Text="Search" OnClick="search_Click"  />
           </div>
       </div>
    <asp:GridView CssClass="table table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="QueryDate" HeaderText="QueryDate" SortExpression="QueryDate" />
            <asp:BoundField DataField="PersonName" HeaderText="PersonName" SortExpression="PersonName" />
            <asp:BoundField Visible="false" DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
            <asp:BoundField Visible="false" DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="CellNo" HeaderText="CellNo" SortExpression="CellNo" />
            <asp:BoundField  DataField="LandLineNo" HeaderText="LandLineNo" SortExpression="LandLineNo" />
            <asp:BoundField Visible="false" DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
            <asp:BoundField Visible="false" DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
            <asp:BoundField Visible="false" DataField="Organization" HeaderText="Organization" SortExpression="Organization" />
            <asp:BoundField Visible="false" DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            <asp:BoundField Visible="false" DataField="QueryComment" HeaderText="QueryComment" SortExpression="QueryComment" />
            <asp:BoundField Visible="false" DataField="ProgramTitle" HeaderText="ProgramTitle" SortExpression="ProgramTitle" />
            <asp:BoundField Visible="false" DataField="CourseTitle" HeaderText="CourseTitle" SortExpression="CourseTitle" />
            <asp:BoundField Visible="false" DataField="QualificationTitle" HeaderText="QualificationTitle" SortExpression="QualificationTitle" />
            <asp:BoundField Visible="false" DataField="CategoryTitle" HeaderText="CategoryTitle" SortExpression="CategoryTitle" />
            <asp:BoundField Visible="false" DataField="QueryTypeTitle" HeaderText="QueryTypeTitle" SortExpression="QueryTypeTitle" />
            <asp:BoundField Visible="false" DataField="User_Login" HeaderText="User_Login" SortExpression="User_Login" />
        </Columns>
    </asp:GridView>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SINADBConnectionString %>" SelectCommand="WEB_SP_FindQueryByAny" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="QueryFilter" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
