<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Addbooks.aspx.vb" Inherits="Addbooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Books</title>
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
</ul>
</nav><br /><br />
            <h1>Show Books</h1>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Column1" DataValueField="AuthorId"></asp:DropDownList>

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAuthorNames" TypeName="DataSetTableAdapters.AuthorNamesTableAdapter">
                <DeleteParameters>
                    <asp:Parameter Name="Original_AuthorId" Type="Int32" />
                </DeleteParameters>
            </asp:ObjectDataSource>
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2">
                <Columns>
                    <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
                    <asp:BoundField DataField="PublishedYear" HeaderText="PublishedYear" SortExpression="PublishedYear" />
                    <asp:BoundField DataField="BookSummary" HeaderText="BookSummary" SortExpression="BookSummary" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                </Columns>
            </asp:GridView>



            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByAuthorID" TypeName="DataSetTableAdapters.BooksandAuthorsTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="AuthorID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <h1>Add Books</h1>
            <br />
            <table>
                <tr>
                    <td>AuthorID</td>
                    <td>
                        <asp:TextBox ID="AuthorIDTextBox" runat="server" Enabled="False">1</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Book Title</td>
                    <td>
                        <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="tbTitle"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>Book Summary</td>
                    <td>
                        <asp:TextBox ID="tbSummary" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="tbSummary"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>Published Year</td>
                    <td>
                        <asp:TextBox ID="tbYear" runat="server"></asp:TextBox>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ErrorMessage="* Must be a year" ControlToValidate="tbYear" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan=2>
                        <asp:Button ID="AddBookButton" runat="server" Text="Add Book" />
    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
                        <asp:Button ID="ClearButton" runat="server" Text="Clear" />
                    </td>
                    
                </tr>
            </table>

            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
