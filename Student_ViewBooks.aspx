<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.master" AutoEventWireup="true" CodeFile="Student_ViewBooks.aspx.cs" Inherits="Student_ViewBooks" %>

<%@ Register src="Student_ViewBooks.ascx" tagname="Student_ViewBooks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Student_ViewBooks ID="Student_ViewBooks1" runat="server" />
</asp:Content>

