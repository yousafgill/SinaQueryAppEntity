<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sys_admin_123@sina.aspx.cs" Inherits="SinaQueryAppEntity.admin.sys_admin_123_sina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <table width="80%" align="center">
        <tr>
            <td>
                <asp:Button Text="Main Form" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
                    OnClick="Tab1_Click" />
                <asp:Button Text="Program Profile" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                    OnClick="Tab2_Click" />
                <asp:Button Text="Qualifications" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                    OnClick="Tab3_Click" />
                <asp:Button Text="Query Type" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
                    OnClick="Tab4_Click" />
                <asp:Button Text="User Profiles" BorderStyle="None" ID="Tab5" CssClass="Initial" runat="server"
                    OnClick="Tab5_Click" />
                <asp:Button Text="Course Profile" BorderStyle="None" ID="Tab6" CssClass="Initial" runat="server"
                    OnClick="Tab6_Click" />
                <asp:Button Text="Catergory" BorderStyle="None" ID="Tab7" CssClass="Initial" runat="server"
                    OnClick="Tab7_Click" />
                <asp:MultiView ID="MainView" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table style="width: 100%;  border-color: #666; border-style: solid">
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <div class="col-sm-3">
                                            <asp:TextBox CssClass="form-control" ID="txtFilter" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:Button CssClass="form-control" ID="btnFilter" runat="server" Text="Filter" OnClick="search_click" />
                                        </div>
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SINADBConnectionString %>" SelectCommand="WEB_SP_FindQueryByAny" DeleteCommand="DELETE FROM [QueryMain] WHERE [Id] = @Id" InsertCommand="INSERT INTO [QueryMain] ([QueryDate], [PersonName], [FatherName], [EmailAddress], [CellNo], [LandLineNo], [DateOfBirth], [Grade], [Organization], [Designation], [QualificationId], [ProgramId], [CourseId], [CategoryId], [QueryTypeId], [QueryUser], [QueryComment]) VALUES (@QueryDate, @PersonName, @FatherName, @EmailAddress, @CellNo, @LandLineNo, @DateOfBirth, @Grade, @Organization, @Designation, @QualificationId, @ProgramId, @CourseId, @CategoryId, @QueryTypeId, @QueryUser, @QueryComment)" UpdateCommand="UPDATE [QueryMain] SET [QueryDate] = @QueryDate, [PersonName] = @PersonName, [FatherName] = @FatherName, [EmailAddress] = @EmailAddress, [CellNo] = @CellNo, [LandLineNo] = @LandLineNo, [DateOfBirth] = @DateOfBirth, [Grade] = @Grade, [Organization] = @Organization, [Designation] = @Designation, [QualificationId] = @QualificationId, [ProgramId] = @ProgramId, [CourseId] = @CourseId, [CategoryId] = @CategoryId, [QueryTypeId] = @QueryTypeId, [QueryUser] = @QueryUser, [QueryComment] = @QueryComment WHERE [Id] = @Id" SelectCommandType="StoredProcedure">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter DbType="Date" Name="QueryDate" />
                                            <asp:Parameter Name="PersonName" Type="String" />
                                            <asp:Parameter Name="FatherName" Type="String" />
                                            <asp:Parameter Name="EmailAddress" Type="String" />
                                            <asp:Parameter Name="CellNo" Type="String" />
                                            <asp:Parameter Name="LandLineNo" Type="String" />
                                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                                            <asp:Parameter Name="Grade" Type="String" />
                                            <asp:Parameter Name="Organization" Type="String" />
                                            <asp:Parameter Name="Designation" Type="String" />
                                            <asp:Parameter Name="QualificationId" Type="Int32" />
                                            <asp:Parameter Name="ProgramId" Type="Int32" />
                                            <asp:Parameter Name="CourseId" Type="Int32" />
                                            <asp:Parameter Name="CategoryId" Type="Int32" />
                                            <asp:Parameter Name="QueryTypeId" Type="Int32" />
                                            <asp:Parameter Name="QueryUser" Type="Int32" />
                                            <asp:Parameter Name="QueryComment" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="txtFilter" DefaultValue="%" Name="QueryFilter" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter DbType="Date" Name="QueryDate" />
                                            <asp:Parameter Name="PersonName" Type="String" />
                                            <asp:Parameter Name="FatherName" Type="String" />
                                            <asp:Parameter Name="EmailAddress" Type="String" />
                                            <asp:Parameter Name="CellNo" Type="String" />
                                            <asp:Parameter Name="LandLineNo" Type="String" />
                                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                                            <asp:Parameter Name="Grade" Type="String" />
                                            <asp:Parameter Name="Organization" Type="String" />
                                            <asp:Parameter Name="Designation" Type="String" />
                                            <asp:Parameter Name="QualificationId" Type="Int32" />
                                            <asp:Parameter Name="ProgramId" Type="Int32" />
                                            <asp:Parameter Name="CourseId" Type="Int32" />
                                            <asp:Parameter Name="CategoryId" Type="Int32" />
                                            <asp:Parameter Name="QueryTypeId" Type="Int32" />
                                            <asp:Parameter Name="QueryUser" Type="Int32" />
                                            <asp:Parameter Name="QueryComment" Type="String" />
                                            <asp:Parameter Name="Id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:GridView CssClass="table table-striped" ID="gvMainForm" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" HorizontalAlign="Center" OnSelectedIndexChanging="gvMainForm_SelectedIndexChanging" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" />
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="QueryDate" HeaderText="QueryDate" SortExpression="QueryDate" />
                                            <asp:BoundField DataField="PersonName" HeaderText="PersonName" SortExpression="PersonName" />
                                            <asp:BoundField Visible="false" DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" ReadOnly="True" />
                                            <asp:BoundField DataField="CellNo" HeaderText="CellNo" SortExpression="CellNo" />
                                            <asp:BoundField DataField="LandLineNo" HeaderText="LandLineNo" SortExpression="LandLineNo" />
                                            <asp:BoundField Visible="false" DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="Grade" HeaderText="Grade" SortExpression="Grade" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="Organization" HeaderText="Organization" SortExpression="Organization" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="Designation" HeaderText="Designation" SortExpression="Designation" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="QueryComment" HeaderText="QueryComment" SortExpression="QueryComment" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="ProgramTitle" HeaderText="ProgramTitle" SortExpression="ProgramTitle" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="CourseTitle" HeaderText="CourseTitle" SortExpression="CourseTitle" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="QualificationTitle" HeaderText="QualificationTitle" SortExpression="QualificationTitle" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="CategoryTitle" HeaderText="CategoryTitle" SortExpression="CategoryTitle" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="QueryTypeTitle" HeaderText="QueryTypeTitle" SortExpression="QueryTypeTitle" ReadOnly="True" />
                                            <asp:BoundField Visible="false" DataField="User_Login" HeaderText="User_Login" SortExpression="User_Login" ReadOnly="True" />
                                        </Columns>
                                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table style="width: 100%;  border-color: #666; border-style: solid">
                            <tr>
                                <td>

                                    <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sinaPg" Font-Size="Medium">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="ProgramTitle" HeaderText="ProgramTitle" SortExpression="ProgramTitle" />
                                            <asp:BoundField DataField="ProgramDescription" HeaderText="ProgramDescription" SortExpression="ProgramDescription" />
                                            <asp:CheckBoxField DataField="ProgramDiscontinued" HeaderText="ProgramDiscontinued" SortExpression="ProgramDiscontinued" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:EntityDataSource ID="sinaPg" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="ProgramProfiles">
                                    </asp:EntityDataSource>

                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table style="width: 100%;  border-color: #666; border-style: solid">
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView2" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sinaQual" Font-Size="Medium">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="QualificationTitle" HeaderText="QualificationTitle" SortExpression="QualificationTitle" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:EntityDataSource ID="sinaQual" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Qualifications">
                                    </asp:EntityDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <table style="width: 100%; border-color: #666; border-style: solid">
                            <tr>
                                <td>

                                    <asp:GridView ID="GridView3" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="QuType" Font-Size="Medium">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="QueryTypeTitle" HeaderText="QueryTypeTitle" SortExpression="QueryTypeTitle" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:EntityDataSource ID="QuType" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="QueryTypes">
                                    </asp:EntityDataSource>

                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View5" runat="server">
                        <table style="width: 100%;  border-color: #666; border-style: solid">
                            <tr>
                                <td>

                                    <%--Search--%>
                                    <div class="form-group">
                                        <div class="col-sm-6 col-sm-offset-3">
                                        </div>
                                        <div class="col-sm-3">
                                            <a class="btn btn-primary" href="../pages/userProfilePage.aspx">New User</a>
                                        </div>
                                    </div>
                                    <asp:GridView ID="GridView4" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="gvUser" Font-Size="Medium">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="User_Login" HeaderText="User Login" SortExpression="User_Login" />
                                            <asp:BoundField DataField="User_Password" HeaderText="Password" SortExpression="User_Password" />
                                            <asp:BoundField DataField="User_DisplayName" HeaderText="DisplayName" SortExpression="User_DisplayName" />
                                            <asp:BoundField DataField="User_Email" HeaderText="Email" SortExpression="User_Email" />
                                            <asp:CheckBoxField DataField="Use_Disabled" HeaderText="Disabled" SortExpression="Use_Disabled" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:EntityDataSource ID="gvUser" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="UserProfiles" AutoGenerateWhereClause="True" Where="">
                                    </asp:EntityDataSource>

                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View6" runat="server">
                        <table style="width: 100%; border-color: #666; border-style: solid">
                            <tr>
                                <td>

                                    <asp:GridView ID="GridView5" CssClass="table table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="CourseEnt" Font-Size="Medium">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="CourseProgramId" HeaderText="ProgramId" SortExpression="CourseProgramId" />
                                            <asp:BoundField DataField="CourseTitle" HeaderText="Course Title" SortExpression="CourseTitle" />
                                            <asp:BoundField DataField="CourseDescription" HeaderText="Description" SortExpression="CourseDescription" />
                                            <asp:CheckBoxField DataField="CourseDiscontinued" HeaderText="Discontinued" SortExpression="CourseDiscontinued" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:EntityDataSource ID="CourseEnt" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="CourseProfiles">
                                    </asp:EntityDataSource>

                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <%--this is the new tab for Categories--%>
                      <asp:View ID="View7" runat="server">
                        <table style="width: 100%; border-color: #666; border-style: solid">
                            <tr>
                                <td>

                                    <asp:GridView CssClass="table table-striped" ID="GridView6" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EntityDataSource1">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="CategoryTitle" HeaderText="CategoryTitle" SortExpression="CategoryTitle" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="QueryCategories"></asp:EntityDataSource>

                                </td>
                            </tr>
                        </table>
                    </asp:View>

                    <%---------------End Code For New Tab--%>


                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>
