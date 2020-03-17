<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Authorsupdate.aspx.vb" Inherits="Authorsupdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Authors</title>
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

    <h1>Add Author</h1>
            <table>
                <tr>
                    <td>First Name</td>
                     <td>
                         <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstname" runat="server" ErrorMessage="*Required Field" ControlToValidate="tbFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td>Last Name</td>
                     <td><asp:TextBox ID="tbLastname" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastname" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="tbLastname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>City </td>
                     <td><asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="tbCity"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>State (Abbrivated)</td>
                     <td><asp:TextBox ID="tbState" runat="server"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ForeColor="Red" runat="server" ErrorMessage="* Must be US state abbreviation" ControlToValidate="tbState" ValidationExpression="^(?:(A[KLRZ]|C[AOT]|D[CE]|FL|GA|HI|I[ADLN]|K[SY]|LA|M[ADEINOST]|N[CDEHJMVY]|O[HKR]|P[AR]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY]))$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Zip </td>
                     <td><asp:TextBox ID="tbZip" runat="server"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red"  ErrorMessage="* Must be US postal code" ControlToValidate="tbZip" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone </td>
                     <td><asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ErrorMessage="*Must be US phone number" ControlToValidate="tbPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan=2 >
                        <asp:Button ID="InsertAuthor" runat="server" Text=" Add New Author" /> 


                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="ClearButton" runat="server" Text="Clear" />



                    </td>
                </tr>
            </table>
             <br />
            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>



        </div>
    </form>
</body>
</html>
