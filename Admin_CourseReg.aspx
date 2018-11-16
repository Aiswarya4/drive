<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="Admin_CourseReg.aspx.cs" Inherits="Admin_CourseReg" %>

<%@ Register src="Admin_CourseReg.ascx" tagname="Admin_CourseReg" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Admin_CourseReg ID="Admin_CourseReg1" runat="server" />
</asp:Content>

