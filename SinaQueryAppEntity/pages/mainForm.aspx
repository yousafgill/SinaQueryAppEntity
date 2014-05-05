<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mainForm.aspx.cs" Inherits="SinaQueryAppEntity.pages.mainForm" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="FormContainer">
        <fieldset>
            <br />
            <br />
            <legend>Course Profile  </legend>
            <div class="col-sm-6">


                <%--Person Name--%>

                <div class="form-group">
                    <asp:Label ID="lblNameId" CssClass="col-sm-4 control-label" runat="server" Text="Person Name *"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox placeholder="Full Name" required type="calendar" CssClass="form-control" ID="txtNameId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Father Name--%>
                <div class="form-group">
                    <asp:Label ID="lblFName" CssClass="col-sm-4 control-label" runat="server" Text="Father Name"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox placeholder="Father Name" pattren="[a-z A-Z]" CssClass="form-control" ID="txtFNameId" runat="server"></asp:TextBox>
                        <%--cellNo--%>
                    </div>
                </div>
                <%--dob--%>
                <%-- <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-sm-4 control-label" runat="server" Text="Date of Birth "></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox type="date" placeholder="mm/dd/yyyy" CssClass="form-control" ID="txtdob" runat="server"></asp:TextBox>

                    </div>

                </div>--%>
                <%--landline--%>
                <div class="form-group">
                    <asp:Label ID="lblLandId" CssClass="col-sm-4 control-label" runat="server" Text="Landline Number"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox placeholder="051-0000000" CssClass="form-control" ID="txtLandId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Cell No--%>

                <div class="form-group">
                    <asp:Label ID="lblCellNoId" CssClass="col-sm-4 control-label" runat="server" Text="Cell Number *"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox placeholder="03XX-0000000" CssClass="form-control" ID="txtCellNoId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Email--%>
                <div class="form-group">
                    <asp:Label ID="lblEMailId" CssClass="col-sm-4 control-label" runat="server" Text="Email ID"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox type="email" placeholder="example@some.com" CssClass="form-control" ID="txtEMailId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Qualification--%>
                <div class="form-group">
                    <asp:Label ID="Label4" CssClass="col-sm-4 control-label" runat="server" Text="Qualification"></asp:Label>

                    <asp:EntityDataSource ID="qualificationEnt" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="Qualifications">
                    </asp:EntityDataSource>
                    <div class="col-sm-8">
                        <div class="dropdown">
                            <asp:DropDownList AppendDataBoundItems="true" ID="ddqualification" runat="server" DataSourceID="qualificationEnt" DataTextField="QualificationTitle" DataValueField="Id" Height="34px" Width="100%">
                            <asp:ListItem Text="Select Qualification" Value="23"> </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <%--Category--%>
                <div class="form-group">
                    <asp:Label ID="lblcat" CssClass="col-sm-4 control-label" runat="server" Text="Category"></asp:Label>

                    <div class="col-sm-8">
                        <asp:DropDownList AppendDataBoundItems="true" Height="34px" Width="100%" CssClass="col-sm-4 control-label" ID="ddcat" runat="server" DataSourceID="queryCatEnt" DataTextField="CategoryTitle" DataValueField="Id">
                            <asp:ListItem Text="Select Category" Value="4"> </asp:ListItem>
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="queryCatEnt" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="QueryCategories">
                        </asp:EntityDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblOrg" CssClass="col-sm-4 control-label" runat="server" Text="Organization"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox placeholder="e.g. Sina" CssClass="form-control" ID="txtorg" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <%--Designation--%>

                <%--<asp:TextBox CssClass="form-control" ID="txtDate" runat="server"></asp:TextBox>--%>
                <div class="form-group">
                    <asp:Label ID="lblDesigId" CssClass="col-sm-4 control-label" runat="server" Text="Designation"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox placeholder="e.g. Teacher" CssClass="form-control" ID="txtDesigId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Grade--%>

                <div class="form-group">
                    <asp:Label ID="lblGradeId" CssClass="col-sm-4 control-label" runat="server" Text="Grade"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox CssClass="form-control" ID="txtGradeId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%--Query Date--%>
             
                <div class="form-group">
                     
                    <asp:Label ID="date" CssClass="col-sm-4 control-label" runat="server" Text="Query Date *"></asp:Label>
                   
                    <div class="col-sm-8">
                        <%--Course--%>
                        <asp:TextBox type="date" required placeholder="mm/dd/yyyy" CssClass="form-control" ID="Qdate" runat="server"></asp:TextBox>
                          
               
                    </div>


                </div>
                <%--Query Type--%>
                <div class="form-group">
                    <asp:Label ID="Label5" CssClass="col-sm-4 control-label" runat="server" Text="Query Type"></asp:Label>
                    <asp:EntityDataSource ID="dsQueryType" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="QueryTypes" Select="it.[Id], it.[QueryTypeTitle]">
                    </asp:EntityDataSource>
                    <div class="col-sm-8">
                        <asp:DropDownList  ID="ddQtype" runat="server" DataSourceID="dsQueryType" DataTextField="QueryTypeTitle" DataValueField="Id" Height="34px" Width="100%" AppendDataBoundItems="true">
                            <asp:ListItem Text="Select Type" Value="5"></asp:ListItem>
                        </asp:DropDownList>

                    </div>

                </div>
                <%--Program Title--%>
                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-sm-4 control-label" runat="server" Text="Program Title"></asp:Label>
                    <asp:EntityDataSource ID="progTitle" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="ProgramProfiles" Select="it.[Id], it.[ProgramTitle], it.[ProgramDescription], it.[ProgramDiscontinued]">
                    </asp:EntityDataSource>
                    <div class="col-sm-8">
                        <asp:DropDownList AppendDataBoundItems="true" ID="ddProgram" runat="server" DataSourceID="progTitle" DataTextField="ProgramTitle" DataValueField="Id" Height="34px" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddProgram_SelectedIndexChanged">
                             <asp:ListItem Text="Select Program" Value="14"></asp:ListItem>
                        </asp:DropDownList>
                        
                    </div>
                </div>
                <%--Course--%>
                <div class="form-group">
                    <asp:Label ID="Label3" CssClass="col-sm-4 control-label" runat="server" Text="Course Title"></asp:Label>
                    <div class="col-sm-8">
                        <asp:DropDownList AppendDataBoundItems="True" ID="ddCourse" runat="server" DataSourceID="selCourse" DataTextField="CourseTitle" DataValueField="Id" Height="34px" Width="100%">
                            <asp:ListItem Text="Select Program" Value="75"></asp:ListItem>
                        </asp:DropDownList>

                        <asp:SqlDataSource ID="selCourse" runat="server" ConnectionString="<%$ ConnectionStrings:SINADBConnectionString %>" SelectCommand="SP_selCourse" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddProgram" DefaultValue="" Name="CourseFilter" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
                </div>
                <%--Query USer--%>
              <%--  <div class="form-group">
                    <asp:Label ID="lbluser" CssClass="col-sm-4 control-label" runat="server" Text="Course Coordinator"></asp:Label>
                    <div class="col-sm-8">
                        <asp:DropDownList AppendDataBoundItems="true" Height="34px" Width="100%" ID="dduser" runat="server" DataSourceID="EntityDataSource1" DataTextField="User_DisplayName" DataValueField="Id">
                         
                        </asp:DropDownList>
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="UserProfiles">
                        </asp:EntityDataSource>
                    </div>
                </div>--%>

                <%--Query Comment--%>
                <div class="form-group">
                    <asp:Label ID="lblQCommentId" CssClass="col-sm-4 control-label" runat="server" Text="Query Comment"></asp:Label>
                    <div class="col-sm-8">
                        <asp:TextBox placeholder="500 chracters at max" height="100px"  MaxLength="500" CssClass="form-control" ID="txtQCommentId" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-5 col-sm-offset-7 ">
                        <asp:Button ID="save" CssClass="btn btn-primary btn-block" runat="server" Text="Save" OnClick="save_Click" />
                        <asp:TextBox ID="error" Visible="false" Enabled="false" runat="server" ForeColor="Red"></asp:TextBox>

                    </div>
                </div>
            </div>
        </fieldset>
    </div>


</asp:Content>
