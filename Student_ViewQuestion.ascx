<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Student_ViewQuestion.ascx.cs" Inherits="Student_ViewQuestion" %>
<style type="text/css">
    .style1 {
        width: 100%;
    }
</style>
<h3>View Question Paper</h3>

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
                                                                        <asp:Label ID="Label1" runat="server" Text="Question ID"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label3" runat="server" Text="Year"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label5" runat="server" Text="Month"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label2" runat="server" Text="Question Paper"></asp:Label>
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
                                                                        <%# Eval("QuestionID") %></td>
                                                                    <td>
                                                                        <%# Eval("Year") %></td>
                                                                     <td>
                                                                        <%# Eval("Month") %></td>
                                                                    <td>
                                                                        <%# Eval("QuestionPaper") %></td>
                                                                    
                                                                    <td>
                                                                        <a href="Student_ViewQuestion.aspx">
                                                                            <asp:Button ID="Button1" runat="server" Text="Download"  CommandArgument='<%# Eval("QuestionID") %>' CommandName="Download" /></a></td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    </asp:DataList>
												</div>
												<!-- Break -->
												
											</div>
										</form>