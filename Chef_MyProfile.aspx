<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chef_MyProfile.aspx.cs" Inherits="Chef_MyProfile" %>

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
            color: #009933;
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

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Chef_MyProfile.aspx" CssClass="auto-style5">My Profile</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Chef_Recipe_Management.aspx" CssClass="auto-style5">Recipe Management</asp:HyperLink>

&nbsp;| <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Chef_MyRecipies.aspx" CssClass="auto-style5">My Recipes</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/LogOut.aspx" CssClass="auto-style5">Logout</asp:HyperLink>

</div>
           
           <div class="main">





                


            



                <br />
              
                <strong><span class="auto-style7">Welcome</span>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
                <br />
                <br />
                <br />
                </strong>
               <br />

               <asp:DataList ID="DataList1" runat="server" BackColor="#3333CC" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal"

            Width="600px"  UseAccessibleHeader="True" >

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

                My Profile 

            </HeaderTemplate>

                             <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

                             <ItemTemplate> 
                                 <br />

                                 <asp:Image ID="imgEmp" runat="server" Width="100px" Height="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "image") %>' style="padding-left:40px"/><br />
<br />
                                 <b>Userid :</b>

                <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                                  <br />

                <b>Name :</b>

                <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
<br />

      <b>Gender:</b>

                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>

 <br />                      
                                 

                                  <b>Email:</b>

                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>

 <br />

                                  <b>Address:</b>

                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                  <br />




                             </ItemTemplate>


               </asp:DataList>
               <br />

               <br />




            <div>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>



                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YahyaFinalDBConnectionString %>" SelectCommand="SELECT [UserID], [Name], [Gender], [Address], [Email], [Mobile] FROM [Users] WHERE ([UserID] = @UserID)" UpdateCommand="update users set [Name]=@Name, [Address]=@Address, [Email]=@Email, [Mobile]=@Mobile, [gender]=@gender where userid=@userid">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                 <br />

               <br />


            </div>




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>