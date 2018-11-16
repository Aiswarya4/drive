<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyPage.master" AutoEventWireup="true" CodeFile="Faculty_UploadNotes.aspx.cs" Inherits="Faculty_UploadNotes" %>

<%@ Register src="Faculty_UploadNotesControl.ascx" tagname="Faculty_UploadNotesControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Faculty_UploadNotesControl ID="Faculty_UploadNotesControl1" 
        runat="server" />
</asp:Content>

