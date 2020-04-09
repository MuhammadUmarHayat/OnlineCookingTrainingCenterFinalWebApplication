<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterationPage.aspx.cs" Inherits="RegisterationPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Online Cooking Training Center</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #9900CC;
            font-size: xx-large;
        }
        .auto-style5 {}
        .auto-style6 {
            width: 51%;
        }
        .auto-style7 {
            font-size: x-large;
            text-align: center;
            color: #660033;
        }
        .auto-style8 {
            color: #CC0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>
                    Online Cooking Training Center
            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">Register</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ForgetPassword.aspx" CssClass="auto-style5">Forget Password</asp:HyperLink>

</div>
           
           <div class="main">

               <table align="center" class="auto-style6">
                   <tr>
                       <td class="auto-style7" colspan="3"><strong>User Registeration Form</strong></td>
                   </tr>
                   <tr>
                       <td>Please choose user type</td>
                       <td>
                           <asp:DropDownList ID="DropDownList1" runat="server">
                               <asp:ListItem>Administrator</asp:ListItem>
                               <asp:ListItem>Chef</asp:ListItem>
                               <asp:ListItem>Learner</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>Enter name</td>
                       <td> <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>Gender</td>
                       <td>
                           <asp:DropDownList ID="DropDownList2" runat="server">
                               <asp:ListItem>Male</asp:ListItem>
                               <asp:ListItem>Female</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>UserID</td>
                       <td>
               <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>Password</td>
                       <td>
               <asp:TextBox ID="txtPw" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>Retype Password</td>
                       <td>
               <asp:TextBox ID="txtRPw" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>Postal Address</td>
                       <td>
               <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>Email</td>
                       <td>
               <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>Mobile</td>
                       <td>
               <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>Image</td>
                       <td>
                           <asp:FileUpload ID="FileUpload1" runat="server" />
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td><strong>
                           <asp:Label ID="Label1" runat="server" CssClass="auto-style8"></asp:Label>
                           </strong></td>
                       <td>
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Now" Width="100px" />
                       &nbsp;
               <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Cancel" Width="100px" />
                       </td>
                       <td>&nbsp;</td>
                   </tr>
               </table>





                


            



                <br />
              
               <br />
               <br />
               <br />




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>