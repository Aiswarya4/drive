<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyPage.master" AutoEventWireup="true" CodeFile="Faculty_UploadQuestion.aspx.cs" Inherits="Faculty_UploadQuestion" %>

<%@ Register src="Faculty_UploadQuestion.ascx" tagname="Faculty_UploadQuestion" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Faculty_UploadQuestion ID="Faculty_UploadQuestion1" runat="server" />
</asp:Content>

