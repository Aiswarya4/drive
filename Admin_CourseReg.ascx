<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Admin_CourseReg.ascx.cs" Inherits="Admin_CourseReg" %>
<h3>Course Registration</h3>
										<form method="post" action="#">
											<div class="row uniform">
												<div class="12u$">
                                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Course ID"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="TextBox1" ErrorMessage="Not Empty" ForeColor="Red"></asp:RequiredFieldValidator>
												</div>
												<!-- Break -->
												<div class="12u$">
                                                       <asp:TextBox ID="TextBox2" runat="server" placeholder="Department"></asp:TextBox>
												       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                           ControlToValidate="TextBox2" ErrorMessage="Character only" ForeColor="Red" 
                                                           ValidationExpression="[a-b|A-Z]+"></asp:RegularExpressionValidator>
												</div>
												
                                                <!-- Break -->
												<div class="12u$">
                                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Course"></asp:TextBox>
												    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="TextBox3" ErrorMessage="Not Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ErrorMessage="Character Only" ForeColor="Red" 
                                                        ValidationExpression="[a-z,A-Z]+" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
												</div>
												<!-- Break -->
                                                <!-- Break -->
												<div class="12u$">
													<div class="select-wrapper">
                                                     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                                        </asp:DropDownList>
													</div>
												</div>
												<!-- Break -->
												<div class="12u$">
													<ul class="actions">
														<li>
                                                            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Untitled1.jpg" 
                                                                Width=97px Height=51px 
                                                                NavigateUrl="~/Admin_CourseReg.aspx">HyperLink</asp:HyperLink>
                                                        </li>
														<li><asp:Button ID="Button2" runat="server" Text="Save" onclick="Button2_Click" 
                                                                Height="39px" Width="95px" /></li>
													</ul>
												</div>
											</div>
										</form>
