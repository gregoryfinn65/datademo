﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Authorsrpt.aspx.vb" Inherits="Authorsrpt" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Authors Report</title>
    <link href="css/AuthorStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav>
<ul>
  <li><a href="Default.aspx">Home</a></li>
  <li><a href="Details.aspx">Author Details</a></li>
  <li><a href="Books.aspx">Books Details</a></li>
  <li><a href="Authorsupdate.aspx">Add Authors</a></li>
  <li><a href="Addbooks.aspx">Add Books</a></li>
  <li><a href="Authorsrpt.aspx">Authors Report</a></li>
  <li><a href="Mybooksrpt.aspx">My Books Report</a></li>
  <li> <a href="Booksrpt.aspx">Books Report</a></li>
</ul>
</nav> 
<br /> <br />
<h1> All the authors in alphabetical
order and all the author information.</h1>

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<rsweb:ReportViewer ID="ReportViewer1" width="80%" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
<LocalReport ReportPath="allAuthorsReport.rdlc">
<DataSources>
<rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
</DataSources>
</LocalReport>
</rsweb:ReportViewer>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DataSetTableAdapters.AuthorsTableAdapter"></asp:ObjectDataSource>

    </div>
    </form>
</body>
</html>