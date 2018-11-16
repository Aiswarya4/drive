<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Faculty_UploadQuestion.ascx.cs" Inherits="Faculty_UploadQuestion" %>
<h3>Upload Question Paper</h3>

										<form method="post" action="#">
											<div class="row uniform">
												<div class="12u$">
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
												</div>
                                                <!-- Break -->
												<div class="12u$">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
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
													<div class="select-wrapper">
														<asp:DropDownList ID="DropDownList3" runat="server" 
                                                            AutoPostBack="True">
                                                        </asp:DropDownList>
													</div>
												</div>
												<!-- Break -->
												<div class="6u 12u$(xsmall)">
													 <asp:TextBox ID="TextBox2" runat="server" placeholder="Year"></asp:TextBox>
												</div>
                                                <div class="6u 12u$(xsmall)">
                                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Month"></asp:TextBox>
												</div>
                                                <!-- Break -->
                                                <div class="6u 12u$(xsmall)">
                                                    <asp:Label ID="Label1" runat="server" Text="Question Paper"></asp:Label>
												</div>
												<div class="6u 12u$(xsmall)">
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
												</div>
												<!-- Break -->
												<div class="12u$">
													<ul class="actions">
														<li><asp:Button ID="Button2" runat="server" Text="Cancel" class="alt" /></li>
														<li><asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" /></li>
													</ul>
												</div>
											</div>
										</form>

