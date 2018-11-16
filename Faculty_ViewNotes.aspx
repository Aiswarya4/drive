<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyPage.master" AutoEventWireup="true" CodeFile="Faculty_ViewNotes.aspx.cs" Inherits="Faculty_ViewNotes" %>

<%@ Register src="Faculty_ViewNotes.ascx" tagname="Faculty_ViewNotes" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Faculty_ViewNotes ID="Faculty_ViewNotes1" runat="server" />
</asp:Content>

