<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="Admin_AddSubject.aspx.cs" Inherits="Admin_AddSubject" %>

<%@ Register src="Admin_AddSubject.ascx" tagname="Admin_AddSubject" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Admin_AddSubject ID="Admin_AddSubject1" runat="server" />
</asp:Content>

