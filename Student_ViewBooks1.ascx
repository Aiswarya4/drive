<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Student_ViewBooks1.ascx.cs" Inherits="Student_ViewBooks1" %>
	<div class="12u$">
                                                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333"  
                                                        >
                                                        <AlternatingItemStyle BackColor="White" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderTemplate>
                                                            <table class="style1">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label1" runat="server" Text="Issue ID"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label3" runat="server" Text="Request No"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label5" runat="server" Text="Book ID"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label2" runat="server" Text="Book Name"></asp:Label>
                                                                    </td>
                                                                     <td>
                                                                        <asp:Label ID="Label6" runat="server" Text="Book"></asp:Label>
                                                                    </td>
                                                                     <td>
                                                                        <asp:Label ID="Label7" runat="server" Text="Issue Date"></asp:Label>
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
                                                                        <%# Eval("IssueID") %></td>
                                                                    <td>
                                                                        <%# Eval("RequestNo") %></td>
                                                                     <td>
                                                                        <%# Eval("BookID") %></td>
                                                                    <td>
                                                                        <%# Eval("BookName") %></td>
                                                                    <td>
                                                                        <%# Eval("Book") %></td>
                                                                    <td>
                                                                        <%# Eval("IssueDate") %></td>
                                                                     
                                                                    
                                                                            <td>
                                                                            <a href="Student_ViewBooks1.aspx?id=<%# Eval("BookID") %>">VIEW</a> </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    </asp:DataList>
												</div>
												<!-- Break -->
<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
												
										