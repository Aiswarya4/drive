<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryPage.master" AutoEventWireup="true" CodeFile="Librarian_AddBook.aspx.cs" Inherits="Librarian_AddBook" %>

<%@ Register src="Librarian_AddBook.ascx" tagname="Librarian_AddBook" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Librarian_AddBook ID="Librarian_AddBook1" runat="server" />
</asp:Content>

