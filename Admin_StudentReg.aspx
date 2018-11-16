<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="Admin_StudentReg.aspx.cs" Inherits="Admin_StudentReg" %>

<%@ Register src="Admin_StudentReg.ascx" tagname="Admin_StudentReg" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Admin_StudentReg ID="Admin_StudentReg1" runat="server" />
</asp:Content>

