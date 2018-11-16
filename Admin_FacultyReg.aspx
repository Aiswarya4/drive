<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="Admin_FacultyReg.aspx.cs" Inherits="Admin_FacultyReg" %>

<%@ Register src="Admin_FacultyReg.ascx" tagname="Admin_FacultyReg" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Admin_FacultyReg ID="Admin_FacultyReg1" runat="server" />
</asp:Content>

