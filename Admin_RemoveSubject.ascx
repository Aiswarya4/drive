<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Admin_RemoveSubject.ascx.cs" Inherits="Admin_RemoveSubject" %>
<style type="text/css">
    .style1 {
        width: 100%;
    }
</style>
<h3>Remove Subject</h3>

										<form method="post" action="#">
											
                                            <div>
                                                <asp:Panel ID="Panel1" runat="server" Visible="False">
                                                    <div align="center"><h3 style="background-color: #507CD1; color:White;">Subject Details</h3></div>
                                                        <table align="center"  bgcolor="White" >
                                                            
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label8" runat="server" Text="Subject ID"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label7" runat="server" Text="Course ID"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label9" runat="server" Text="Course"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label10" runat="server" Text="Semester"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Label6" runat="server" Text="Teacher"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2"  align="right">
                                                                    <asp:Button ID="Button1" runat="server" Text="Delete" onclick="Button1_Click" />
                                                                    </td>
                                                            </tr>
                                                        </table>
                                                </asp:Panel>
                                            </div>
                                            <div class="row uniform">
												<div class="6u 12u$(xsmall)">
                                                <div class="select-wrapper">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                    </div>
												</div>
												<div class="6u$ 12u$(xsmall)">
                                                <div class="select-wrapper">
													 <asp:DropDownList ID="DropDownList2" runat="server"  AutoPostBack="True"
                                                         onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    </div>
												</div>
												<!-- Break -->
												<div class="12u$">
													<asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                                                        >
                                                        <AlternatingItemStyle BackColor="White" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderTemplate>
                                                            <table class="style1">
                                                                <tr>
                                                                    <td class="4u 12u$(xsmall)">
                                                                        <asp:Label ID="Label1" runat="server" Text="Subject ID"></asp:Label>
                                                                    </td>
                                                                    <td class="4u 12u$(xsmall)">
                                                                        <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>
                                                                    </td>
                                                                   
                                                                    <td class="4u 12u$(xsmall)">
                                                                        <asp:Label ID="Label4" runat="server" Text="View"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </HeaderTemplate>
                                                        <ItemStyle BackColor="#EFF3FB" />
                                                        <ItemTemplate>
                                                            <table class="style1">
                                                                <tr>
                                                                    <td class="4u 12u$(xsmall)">
                                                                        <%# Eval("SubjectID") %></td>
                                                                    <td class="4u 12u$(xsmall)">
                                                                        <%# Eval("Subject") %></td>
                                                                    <td class="4u 12u$(xsmall)">
                                                                        <a href="Admin_RemoveSubject.aspx?id=<%# Eval("SubjectID") %>"><u><b><asp:Label ID="Label2" runat="server" Text="View" ToolTip="Click Here"
                                                                       ForeColor="#507CD1"></asp:Label></u></b></a></td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    </asp:DataList>
												</div>
												</div>
                                               
										
										</form>