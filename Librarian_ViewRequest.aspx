<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryPage.master" AutoEventWireup="true" CodeFile="Librarian_ViewRequest.aspx.cs" Inherits="Librarian_ViewRequest" %>

<%@ Register src="Librarian_ViewRequest.ascx" tagname="Librarian_ViewRequest" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <uc1:Librarian_ViewRequest ID="Librarian_ViewRequest1" runat="server" />
    
</asp:Content>

