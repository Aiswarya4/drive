<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Admin_StudentReg.ascx.cs" Inherits="Admin_StudentReg" %>
<h3>Student Registration</h3>

										<form method="post" action="#">
											<div class="row uniform">
												<div class="6u 12u$(xsmall)">
                                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Student ID"></asp:TextBox>
												</div>
												<div class="6u$ 12u$(xsmall)">
													  <asp:TextBox ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
												</div>
												<!-- Break -->
												<div class="12u$">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                                                        </asp:DropDownList>
													</div>
												</div>
												<!-- Break -->
                                                <div class="12u$">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                                        </asp:DropDownList>
													</div>
												</div>
												<!-- Break -->
                                                 <div class="12u$">
													 <asp:TextBox ID="TextBox3" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
												</div>
												<!-- Break -->
												<div class="6u 12u$(xsmall)">
                                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Phone No."></asp:TextBox>
												</div>
												<div class="6u$ 12u$(xsmall)">
													  <asp:TextBox ID="TextBox5" runat="server" placeholder="Email"></asp:TextBox>
												</div>
												<!-- Break -->
												<div class="12u$">
													<ul class="actions">
														<li><asp:Button ID="Button1" runat="server" Text="Cancel" class="alt" /></li>
														<li><asp:Button ID="Button2" runat="server" Text="Save" onclick="Button2_Click" /></li>
													</ul>
												</div>
											</div>
										</form>