<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chef_AddRecipeIngredients.aspx.cs" Inherits="chef_AddRecipeIngredients" %>


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
        .auto-style8 {
            width: 100%;
            background-color: #6699FF;
        }
        .auto-style9 {
            font-size: xx-large;
            text-align: center;
            color: #660066;
        }
        .auto-style10 {
            color: #009933;
            font-size: xx-large;
        }
        .auto-style6 {
            color: #FF0066;
            font-size: xx-large;
        }
        .auto-style11 {
            color: #FF9900;
            font-weight: bold;
            background-color: #009900;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Online Cooking Training Center: Chef Pannel

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChefHome.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/chef_AddCategory.aspx" CssClass="auto-style5">Add Category</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Chef_AddRecipe.aspx" CssClass="auto-style5">Add Recipeies</asp:HyperLink>

&nbsp;| <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Chef_MyRecipies.aspx" CssClass="auto-style5">My Recipes</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/LogOut.aspx" CssClass="auto-style5">Logout</asp:HyperLink>

</div>
           
           <div class="main">





                


            



                <br />
              
               <br />


               <div id="AddRecipe">





                   <table class="auto-style8">
                       <tr>
                           <td class="auto-style9" colspan="3"><strong>Add Ingredients</strong></td>
                       </tr>
                       <tr>
                           <td>RID</td>
                           <td>
                               <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style10"></asp:Label>
                </strong>
              
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>Ingredient</td>
                           <td>
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>Quantity</td>
                           <td>
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
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
                           <td>&nbsp;</td>
                           <td>
                               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add More Ingredients" />
                           &nbsp;<strong><asp:Label ID="Label2" runat="server" CssClass="auto-style6"></asp:Label>
                </strong>
              
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
                           <td>&nbsp;</td>
                           <td>
                               <strong>
                               <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next" Visible="False" CssClass="auto-style11" Width="102px" />
                               </strong></td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>
              
                               &nbsp;</td>
                           <td>
                           &nbsp;
                               </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                   </table>





               </div>
              
               <div id="AddRecipeIngredients">





               </div>

                <div id="AddRecipeDescription">





               </div>



               <br />
               <br />




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>