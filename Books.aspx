<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Books.aspx.vb" Inherits="Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Details Page</title>
    <link href="css/AuthorStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Author and Book Page</h1>
        Book and Author from query string<br />
        <br />
        <asp:FormView ID="FormView2" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="ObjectDataSource2" GridLines="Horizontal" Width="313px">
            <EditItemTemplate>
                BookTitle:
                <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                <br />
                PublishedYear:
                <asp:TextBox ID="PublishedYearTextBox" runat="server" Text='<%# Bind("PublishedYear") %>' />
                <br />
                BookSummary:
                <asp:TextBox ID="BookSummaryTextBox" runat="server" Text='<%# Bind("BookSummary") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                BookTitle:
                <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                <br />
                PublishedYear:
                <asp:TextBox ID="PublishedYearTextBox" runat="server" Text='<%# Bind("PublishedYear") %>' />
                <br />
                BookSummary:
                <asp:TextBox ID="BookSummaryTextBox" runat="server" Text='<%# Bind("BookSummary") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                BookTitle:
                <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' />
                <br />
                PublishedYear:
                <asp:Label ID="PublishedYearLabel" runat="server" Text='<%# Bind("PublishedYear") %>' />
                <br />
                BookSummary:
                <asp:Label ID="BookSummaryLabel" runat="server" Text='<%# Bind("BookSummary") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:FormView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByAuthorID" TypeName="DataSetTableAdapters.BooksandAuthorsTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="AuthorID" QueryStringField="AuthorID" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
        <br />
        <br />
        rows of data in the Books table<br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="ObjectDataSource6" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
                <asp:BoundField DataField="PublishedYear" HeaderText="PublishedYear" SortExpression="PublishedYear" />
                <asp:BoundField DataField="BookSummary" HeaderText="BookSummary" SortExpression="BookSummary" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetBooksandAuthors" TypeName="DataSetTableAdapters.BooksandAuthorsTableAdapter"></asp:ObjectDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        Books by Author<br />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="auto-style1" DataSourceID="ObjectDataSource4" DataTextField="FirstName" DataValueField="AuthorId" Height="16px" Width="69px">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.AuthorsTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_AuthorId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Original_AuthorId" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource5">
            <EditItemTemplate>
                BookTitle:
                <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                <br />
                PublishedYear:
                <asp:TextBox ID="PublishedYearTextBox" runat="server" Text='<%# Bind("PublishedYear") %>' />
                <br />
                BookSummary:
                <asp:TextBox ID="BookSummaryTextBox" runat="server" Text='<%# Bind("BookSummary") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                BookTitle:
                <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                <br />
                PublishedYear:
                <asp:TextBox ID="PublishedYearTextBox" runat="server" Text='<%# Bind("PublishedYear") %>' />
                <br />
                BookSummary:
                <asp:TextBox ID="BookSummaryTextBox" runat="server" Text='<%# Bind("BookSummary") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                BookTitle:
                <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' />
                <br />
                PublishedYear:
                <asp:Label ID="PublishedYearLabel" runat="server" Text='<%# Bind("PublishedYear") %>' />
                <br />
                BookSummary:
                <asp:Label ID="BookSummaryLabel" runat="server" Text='<%# Bind("BookSummary") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByAuthorID" TypeName="DataSetTableAdapters.BooksandAuthorsTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="AuthorID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
        <br />
        <br />
        Books by title<br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="BookTitle" DataValueField="BookTitle">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetBookTitles" TypeName="DataSetTableAdapters.BookTitleListTableAdapter"></asp:ObjectDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
                <asp:BoundField DataField="BookSummary" HeaderText="BookSummary" SortExpression="BookSummary" />
                <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" SortExpression="AuthorID" />
                <asp:BoundField DataField="PublishedYear" HeaderText="PublishedYear" SortExpression="PublishedYear" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetBooksByTitle" TypeName="DataSetTableAdapters.BooksTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_BookID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BookTitle" Type="String" />
                <asp:Parameter Name="BookSummary" Type="String" />
                <asp:Parameter Name="AuthorID" Type="Int32" />
                <asp:Parameter Name="PublishedYear" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="BookTitle" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="BookTitle" Type="String" />
                <asp:Parameter Name="BookSummary" Type="String" />
                <asp:Parameter Name="AuthorID" Type="Int32" />
                <asp:Parameter Name="PublishedYear" Type="String" />
                <asp:Parameter Name="Original_BookID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <a href="Default.aspx">Default.aspx</a><br />
    
    </div>
    </form>
</body>
</html>
