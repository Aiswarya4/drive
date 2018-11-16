<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.master" AutoEventWireup="true" CodeFile="Student_ViewBooks1.aspx.cs" Inherits="Student_ViewBooks1" %>

<%@ Register src="Student_ViewBooks1.ascx" tagname="Student_ViewBooks1" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Student_ViewBooks1 ID="Student_ViewBooks11" runat="server" />
</asp:Content>

