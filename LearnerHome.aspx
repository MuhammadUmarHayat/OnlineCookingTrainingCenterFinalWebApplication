﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LearnerHome.aspx.cs" Inherits="LearnerHome" %>

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
            color: #FF0066;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Online Cooking Training Center

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Learner_Serach.aspx" CssClass="auto-style5">Search </asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ForgetPassword.aspx" CssClass="auto-style5">Forget Password</asp:HyperLink>

</div>
           
           <div class="main">

               





                


            



                <br />
              
                Well come <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
                </strong>
              
               <br />
               <br />
               
                     <asp:DataList ID="DataList1" runat="server" BackColor="#3333CC" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal"

            Width="600px"  UseAccessibleHeader="True" >

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

                Recipies

            </HeaderTemplate>

                             <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

                             <ItemTemplate> 
                                 <br />

                                 <asp:Image ID="imgEmp" runat="server" Width="100px" Height="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "image") %>' style="padding-left:40px"/><br />
<br />




   <b>Title :</b>

                <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                                  <br />

                <b> </b>

                <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
<br />

      <b>Price:</b>

                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Price") %>'></asp:Label>

 <br />                      
                                 

                                  <b>Author:</b>

                <asp:Label ID="Label4" runat="server" Text='<%# Bind("userid") %>'></asp:Label>

 <br />
 <b>Preparation Time:</b>

                <asp:Label ID="Label2" runat="server" Text='<%# Bind("preparationTime") %>'></asp:Label>

 <br />

 <b>Cooking Time:</b>

                <asp:Label ID="Label5" runat="server" Text='<%# Bind("CookTime") %>'></asp:Label>


                                 <br />


</ItemTemplate>
                </asp:DataList>
               <br />




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>