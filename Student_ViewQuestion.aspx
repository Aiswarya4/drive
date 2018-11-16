<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.master" AutoEventWireup="true" CodeFile="Student_ViewQuestion.aspx.cs" Inherits="Student_ViewQuestion" %>

<%@ Register src="Student_ViewQuestion.ascx" tagname="Student_ViewQuestion" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Student_ViewQuestion ID="Student_ViewQuestion1" runat="server" />
</asp:Content>

