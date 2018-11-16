<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginPage.ascx.cs" Inherits="LoginPage" %>
<section id="banner">
				<div class="inner">
					<header>
						<h1>AWH COLLEGE OF ENGINEERING</h1>
						<p>Affiliated to APJ Abdul Kalam Technological University and Approved by AICTE</p>
                        <p>Login</p>

										<form method="post" action="#">
											<div class="row uniform">
												<div class="4u 12u$(small)">
													<asp:TextBox ID="TextBox1" runat="server" placeholder="Username" class="login" BorderColor="#3498db" BorderWidth="3px"></asp:TextBox>
												</div>
												<div class="4u 12u$(small)">
													<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Password" class="login" BorderColor="#3498db" BorderWidth="3px"></asp:TextBox>
												</div>
                                                <div class="4u 12u$(small)">
													<asp:Button ID="Button2" runat="server" Text="Login" onclick="Button2_Click"></asp:Button>
												</div>
												<!-- Break -->
                                                
                                              </div>
                                         </form>
					</header>
				</div>
			</section>