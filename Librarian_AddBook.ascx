<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Librarian_AddBook.ascx.cs" Inherits="Librarian_AddBook" %>
<h3>Add Book</h3>
										<form method="post" action="#">
											<div class="row uniform">
												<div class="12u$">
                                                     <asp:TextBox ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                    <div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" 
                                                            AutoPostBack="True">
                                                        </asp:DropDownList>
													</div>
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Subject"></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                      <asp:TextBox ID="TextBox4" runat="server" placeholder="Author"></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Publisher"></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                      <asp:TextBox ID="TextBox6" runat="server" placeholder="Version"></asp:TextBox>
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
												</div>
												<!-- Break -->
                                                <div class="12u$">
                                                      <asp:TextBox ID="TextBox8" runat="server" placeholder="Status"></asp:TextBox>
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

