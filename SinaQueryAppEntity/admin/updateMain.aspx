<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updateMain.aspx.cs" Inherits="SinaQueryAppEntity.admin.updateMain" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="FormContainer">
        <fieldset>
            <br />
            <br />
            <legend>Course Profile  </legend>
            <div class="col-sm-6">


                <%--personaname--%>

                <div class="form-group">
                    <asp:Label ID="lblNameId" CssClass="col-sm-4 control-label" runat="server" Text="Person Name *"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox required type="calendar" CssClass="form-control" ID="txtNameId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Fathername--%>
                <div class="form-group">
                    <asp:Label ID="lblFName" CssClass="col-sm-4 control-label" runat="server" Text="Father Name"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox pattren="[a-z A-Z]" CssClass="form-control" ID="txtFNameId" runat="server"></asp:TextBox>
                        <%--<input type="text" onclick="fnPopUpCalendar(txtDate, txtDate, 'dd/mm/yyyy')" />--%>
                    </div>
                </div>
                <%--dob--%>
               <%-- <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-sm-4 control-label" runat="server" Text="Date of Birth *"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox type="date" required placeholder="mm/dd/yyyy" CssClass="form-control" ID="txtdob" runat="server"></asp:TextBox>

                    </div>

                </div>--%>
                <%--landline--%>
                <div class="form-group">
                    <asp:Label ID="lblLandId" CssClass="col-sm-4 control-label" runat="server" Text="Landline Number"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox CssClass="form-control" ID="txtLandId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--cellNo--%>

                <div class="form-group">
                    <asp:Label ID="lblCellNoId" CssClass="col-sm-4 control-label" runat="server" Text="Cell Number *"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox  CssClass="form-control" ID="txtCellNoId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--email--%>
                <div class="form-group">
                    <asp:Label ID="lblEMailId" CssClass="col-sm-4 control-label" runat="server" Text="Email ID"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox type="email" CssClass="form-control" ID="txtEMailId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Qualification--%>
                <div class="form-group">
                    <asp:Label ID="Label4" CssClass="col-sm-4 control-label" runat="server" Text="Qualification"></asp:Label>

                    <asp:EntityDataSource ID="qualificationEnt" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="Qualifications" Select="it.[Id], it.[QualificationTitle]">
                    </asp:EntityDataSource>
                    <div class="col-sm-8">
                        <div class="dropdown">
                            <asp:DropDownList ID="ddqualification" runat="server" DataSourceID="qualificationEnt" DataTextField="QualificationTitle" DataValueField="Id" Height="34px" Width="100%"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <%--category--%>
                <div class="form-group">
                    <asp:Label ID="lblcat" CssClass="col-sm-4 control-label" runat="server" Text="Category"></asp:Label>

                    <div class="col-sm-8">
                        <asp:DropDownList Height="34px" Width="100%" CssClass="col-sm-4 control-label" ID="ddcat" runat="server" DataSourceID="queryCatEnt" DataTextField="CategoryTitle" DataValueField="Id"></asp:DropDownList>
                        <asp:EntityDataSource ID="queryCatEnt" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="QueryCategories">
                        </asp:EntityDataSource>
                    </div>
                </div>
                  <%--Organization--%>
                <div class="form-group">
                    <asp:Label ID="lblOrg" CssClass="col-sm-4 control-label" runat="server" Text="Organization"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox CssClass="form-control" ID="txtorg" runat="server"></asp:TextBox>
                    </div>
                </div>
                
                <%--Designation--%>
                <div class="form-group">
                    <asp:Label ID="lblDesigId" CssClass="col-sm-4 control-label" runat="server" Text="Designation"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox CssClass="form-control" ID="txtDesigId" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
              
                <%--grade--%>

                <div class="form-group">
                    <asp:Label ID="lblGradeId" CssClass="col-sm-4 control-label" runat="server" Text="Grade"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox CssClass="form-control" ID="txtGradeId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Query Date--%>
                <div class="form-group">
                    <asp:Label ID="txtQdate" CssClass="col-sm-4 control-label" runat="server" Text="Query Date *"></asp:Label>
                    <div class="col-sm-8">
                        <%--<asp:TextBox CssClass="form-control" ID="txtDate" runat="server"></asp:TextBox>--%>
                        <asp:TextBox type="date" required placeholder="mm/dd/yyyy" CssClass="form-control" ID="Qdate" runat="server"></asp:TextBox>

                    </div>

                </div>
                <%--Query Type--%>
                <div class="form-group">
                    <asp:Label ID="Label5" CssClass="col-sm-4 control-label" runat="server" Text="Query Type"></asp:Label>
                    <asp:EntityDataSource ID="dsQueryType" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="QueryTypes" Select="it.[Id], it.[QueryTypeTitle]">
                    </asp:EntityDataSource>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="ddQtype" runat="server" DataSourceID="dsQueryType" DataTextField="QueryTypeTitle" DataValueField="Id" Height="34px" Width="100%"></asp:DropDownList>

                    </div>

                </div>
                <%--Program--%>
                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-sm-4 control-label" runat="server" Text="Program Title"></asp:Label>
                    <asp:EntityDataSource ID="progTitle" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="ProgramProfiles" Select="it.[Id], it.[ProgramTitle], it.[ProgramDescription], it.[ProgramDiscontinued]">
                    </asp:EntityDataSource>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="ddProgram" runat="server" DataSourceID="progTitle" DataTextField="ProgramTitle" DataValueField="Id" Height="34px" Width="100%"></asp:DropDownList>

                    </div>
                </div>
                <%--Course--%>
                <div class="form-group">
                    <asp:Label ID="Label3" CssClass="col-sm-4 control-label" runat="server" Text="Course Title"></asp:Label>
                    <asp:EntityDataSource ID="courseEntity" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="CourseProfiles" EntityTypeFilter="CourseProfile">
                    </asp:EntityDataSource>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="ddCourse" runat="server" DataSourceID="CourseDataSource" DataTextField="CourseTitle" DataValueField="Id" Height="34px" Width="100%"></asp:DropDownList>

                        <asp:SqlDataSource ID="CourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:SINADBConnectionString %>" SelectCommand="SP_selCourse" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddProgram" Name="CourseFilter" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
                </div>
                <%--Query USer--%>
                <div class="form-group">
                    <asp:Label ID="lbluser" CssClass="col-sm-4 control-label" runat="server" Text="Course Coordinator"></asp:Label>
                    
                         <asp:Label ID="lblusername" CssClass="col-sm-4 control-label "  runat="server" Text=""></asp:Label>
                       <%-- <asp:DropDownList Height="34px" Width="100%" ID="dduser" runat="server" DataSourceID="userent" DataTextField="User_DisplayName" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SelUserDataSql" runat="server" ConnectionString="<%$ ConnectionStrings:SINADBConnectionString %>" SelectCommand="seluser" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="" Name="userFilter" QueryStringField="userdisp" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="userent" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="UserProfiles">
                        </asp:EntityDataSource>--%>
                   
                </div>

                <%--Query Comment--%>
                <div class="form-group">
                    <asp:Label ID="lblQCommentId" CssClass="col-sm-4 control-label" runat="server" Text="Query Comment"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox  CssClass="form-control" ID="txtQCommentId" runat="server" TextMode="MultiLine" Height="150px"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-5 col-sm-offset-7 ">
                        <asp:Button ID="save" CssClass="btn btn-primary btn-block" runat="server" Text="Save" OnClick="save_Click" />
                        <asp:TextBox ID="error" Visible="false" Enabled="false" runat="server" ForeColor="Red"></asp:TextBox>
                        <asp:TextBox ID="userIdstr" Visible="false" Enabled="false" runat="server" ForeColor="Red"></asp:TextBox>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>



</asp:Content>
