<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Student_ViewBooks.ascx.cs" Inherits="Student_ViewBooks" %>
<h3>Search Book</h3>
										<form method="post" action="#">
											<div class="row uniform">
												<div class="12u$">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> 
                                                        </asp:DropDownList>
													</div>
												</div>
                                                <div class="12u$">
                                                    <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button2_Click" />
                                                    <asp:Button ID="Button4" runat="server" Text="Advanced Search" 
                                                        onclick="Button4_Click"  />
                                                </div>
                                                <asp:Panel ID="Panel1" runat="server" Visible="False" >
                                                <div class="12u$">
                                                <h3>Advanced Search</h3>
                                                </div>
                                               
                                                 <div class="12u$">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                                            o onselectedindexchanged="DropDownList2_SelectedIndexChanged1" placeholder="Category">
                                                        </asp:DropDownList>
													</div>
												</div><br />
                                                <div class="12u$"">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" >
                                                        </asp:DropDownList>
													</div>
												</div><br />
                                                 <div class="12u$">
                                                    <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button3_Click" />
                                                </div>
                                                </asp:Panel>
                                               
												<!-- Break -->
												
												<div class="12u$">
                                                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                                                        onitemcommand="DataList1_ItemCommand" onselectedindexchanged="DataList1_SelectedIndexChanged" 
                                                        >
                                                        <AlternatingItemStyle BackColor="White" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderTemplate>
                                                            <table class="style1">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label1" runat="server" Text="Book ID"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label5" runat="server" Text="Subject"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label2" runat="server" Text="Author"></asp:Label>
                                                                    </td>
                                                                     <td>
                                                                        <asp:Label ID="Label6" runat="server" Text="Publisher"></asp:Label>
                                                                    </td>
                                                                     <td>
                                                                        <asp:Label ID="Label7" runat="server" Text="Version"></asp:Label>
                                                                    </td>
                                                                     <td>
                                                                        <asp:Label ID="Label8" runat="server" Text="Book"></asp:Label>
                                                                    </td>
                                                                     <td>
                                                                        <asp:Label ID="Label9" runat="server" Text="Status"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label4" runat="server" Text="Request"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label10" runat="server" Text="View"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </HeaderTemplate>
                                                        <ItemStyle BackColor="#EFF3FB" />
                                                        <ItemTemplate>
                                                            <table class="style1">
                                                                <tr>
                                                                    <td>
                                                                        <%# Eval("BookID") %></td>
                                                                    <td>
                                                                        <%# Eval("Name") %></td>
                                                                     <td>
                                                                        <%# Eval("Subject") %></td>
                                                                    <td>
                                                                        <%# Eval("Author") %></td>
                                                                     <td>
                                                                        <%# Eval("Publisher") %></td>
                                                                    <td>
                                                                        <%# Eval("Version")%></td>
                                                                     <td>
                                                                        <%# Eval("Book") %></td>
                                                                    <td>
                                                                        <%# Eval("Status") %></td>
                                                                    
                                                                    <td>
                                                                        <a href="Student_ViewQuestion.aspx"> 
                                                                            <asp:Button ID="Button1" runat="server" Text="Request"  CommandArgument='<%# Eval("BookID") %>' CommandName="Request" /></a></td>
                                                                           
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    </asp:DataList>
												</div>
												<!-- Break -->
												
											</div>
										</form>