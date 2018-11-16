<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Faculty_ViewNotes.ascx.cs" Inherits="Faculty_ViewNotes" %>
<h3>View Notes</h3>

										<form method="post" action="#">
											<div class="row uniform">
												<div class="4u 12u$(small)">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> 
                                                           
                                                        </asp:DropDownList>
													</div>
												</div>
                                                <div class="4u 12u$(small)">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                                        </asp:DropDownList>
													</div>
												</div>
                                                <div class="4u 12u$(small)">
													<div class="select-wrapper">
                                                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                                            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                                        </asp:DropDownList>
													</div>
												</div>
												<!-- Break -->
												
												<div class="12u$">
                                                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                                                        onitemcommand="DataList1_ItemCommand">
                                                        <AlternatingItemStyle BackColor="White" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderTemplate>
                                                            <table class="style1">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label1" runat="server" Text="Note ID"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label3" runat="server" Text="Note"></asp:Label>
                                                                    </td>
                                                                    
                            
                                                                    <td>
                                                                        <asp:Label ID="Label4" runat="server" Text="Download"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </HeaderTemplate>
                                                        <ItemStyle BackColor="#EFF3FB" />
                                                        <ItemTemplate>
                                                            <table class="style1">
                                                                <tr>
                                                                    <td>
                                                                        <%# Eval("NoteID") %></td>
                                                                    <td>
                                                                        <%# Eval("Notes") %></td>
                                                                    
                                                                    <td>
                                                                        <a href="Faculty_ViewNotes.aspx">
                                                                            <asp:Button ID="Button1" runat="server" Text="Download"  CommandArgument='<%# Eval("NoteID") %>' CommandName="Download" /></a></td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    </asp:DataList>
												</div>
												<!-- Break -->
												
											</div>
										</form>