<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyPage.master" AutoEventWireup="true" CodeFile="Faculty_AnnounceSeminar.aspx.cs" Inherits="Faculty_AnnounceSeminar" %>

<%@ Register src="Faculty_AnnounceSeminar.ascx" tagname="Faculty_AnnounceSeminar" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Faculty_AnnounceSeminar ID="Faculty_AnnounceSeminar1" runat="server" />
</asp:Content>

