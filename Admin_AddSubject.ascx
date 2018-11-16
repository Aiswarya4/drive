<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Admin_AddSubject.ascx.cs" Inherits="Admin_AddSubject" %>
<h3>Add Subject</h3>
										<form method="post" action="#">
											<div class="row uniform">
												<div class="12u$">
                                                    <asp:TextBox ID="TextBox1" runat="server" readonly></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="6u 12u$(xsmall)">
                                                    <div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" 
                                                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                                            AutoPostBack="True">
                                                        </asp:DropDownList>
													</div>
												</div>
												<div class="6u$ 12u$(xsmall)">
                                                     <asp:TextBox ID="TextBox3" runat="server" Readonly="True"></asp:TextBox>
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
                                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Subject"></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                <div class="select-wrapper">
                                                     <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                                                        </asp:DropDownList>
                                                        </div>
												</div>
												<!-- Break -->
												<div class="12u$">
													<ul class="actions">
														<li>
                                                            <asp:Button ID="Button2" runat="server" Text="Cancel" class="alt"/></li>
														<li>
                                                            <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" /></li>
													</ul>
												</div>
											</div>
										</form>

