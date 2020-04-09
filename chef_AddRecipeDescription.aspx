<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chef_AddRecipeDescription.aspx.cs" Inherits="chef_AddRecipeDescription" %>

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
            width: 269px;
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
                           <td class="auto-style9" colspan="3"><strong>Add Recipy Description</strong></td>
                       </tr>
                       <tr>
                           <td class="auto-style11">RID</td>
                           <td>
                               <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style10"></asp:Label>
                </strong>
              
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">Step 1</td>
                           <td>
                               <asp:TextBox ID="TextBox1" runat="server" Height="72px" MaxLength="200" TextMode="MultiLine" Width="584px"></asp:TextBox>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">Step 2</td>
                           <td>
                               <asp:TextBox ID="TextBox2" runat="server" Height="72px" MaxLength="200" TextMode="MultiLine" Width="584px"></asp:TextBox>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">Step 3</td>
                           <td>
                               <asp:TextBox ID="TextBox3" runat="server" Height="72px" MaxLength="200" TextMode="MultiLine" Width="584px"></asp:TextBox>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">Step 4</td>
                           <td>
                               <asp:TextBox ID="TextBox4" runat="server" Height="72px" MaxLength="200" TextMode="MultiLine" Width="584px"></asp:TextBox>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">Step 5</td>
                           <td>
                               <asp:TextBox ID="TextBox5" runat="server" Height="72px" MaxLength="200" TextMode="MultiLine" Width="584px"></asp:TextBox>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">Upload Video(Max 50 MB)</td>
                           <td>
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">&nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">&nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">&nbsp;</td>
                           <td>
                               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                           &nbsp;<strong><asp:Label ID="Label2" runat="server" CssClass="auto-style6"></asp:Label>
                </strong>
              
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">&nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">&nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">&nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">&nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">
              
                               &nbsp;</td>
                           <td>
                           &nbsp;
                               </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style11">&nbsp;</td>
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