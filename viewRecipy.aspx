<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewRecipy.aspx.cs" Inherits="viewRecipy" %>

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
        .auto-style7 {
            color: #FF6600;
            font-weight: bold;
            font-size: x-large;
            background-color: #006600;
        }
        .auto-style8 {
            font-size: x-large;
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
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">View Profile</asp:HyperLink>

&nbsp;|</div>
           
           <div class="main">

               





                


            



                <br />
              
                Well come <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
                </strong>
              
               <br />
               
               <br /> <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <br />
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
               <br /> <br />
               <br />
               
               <br />




            




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>