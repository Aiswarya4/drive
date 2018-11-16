<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Faculty_AnnounceSeminar.ascx.cs" Inherits="Faculty_AnnounceSeminar" %>
<h3>Seminar Announcement</h3>

										<form method="post" action="#">
											<div class="row uniform">
												<div class="12u$"">
                                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
												</div>
												<!-- Break -->
												<div class="12u$">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                                        </asp:DropDownList>
													</div>
												</div>
												<!-- Break -->
                                                <div class="12u$">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                                        </asp:DropDownList>
													</div>
												</div>
												<!-- Break -->
                                                <div class="12u$"">
                                                    <asp:TextBox ID="TextBox2" runat="server"  placeholder="Seminar No."></asp:TextBox>
												</div>
                                                <!-- Break -->
												 <div class="12u$"">
													 <asp:TextBox ID="TextBox3" runat="server"  placeholder="Topic"></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="6u 12u$(xsmall)">
                                                    <asp:TextBox ID="TextBox4" runat="server"  placeholder="Announcement Date"></asp:TextBox>
												</div>
												<div class="6u$ 12u$(xsmall)">
													   <asp:TextBox ID="TextBox5" runat="server"  placeholder="Submission Date"></asp:TextBox>
												</div>
												<!-- Break -->
												<!-- Break -->
												<div class="12u$">
													<ul class="actions">
														<li><asp:Button ID="Button2" runat="server" Text="Cancel" class="alt"/></li>
														<li><asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" /></li>
													</ul>
												</div>
											</div>
										</form>