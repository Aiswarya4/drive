<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.master" AutoEventWireup="true" CodeFile="Student_ViewNotes.aspx.cs" Inherits="Student_ViewNotes" %>

<%@ Register src="Student_ViewNotes.ascx" tagname="Student_ViewNotes" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Student_ViewNotes ID="Student_ViewNotes1" runat="server" />
</asp:Content>

