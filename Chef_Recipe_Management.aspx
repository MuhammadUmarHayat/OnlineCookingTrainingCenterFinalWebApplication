<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chef_Recipe_Management.aspx.cs" Inherits="Chef_Recipe_Management" %>

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

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChefHome.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/chef_AddCategory.aspx" CssClass="auto-style5">Add Category</asp:HyperLink>

&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Chef_AddRecipe.aspx" CssClass="auto-style5">Add Recipeies</asp:HyperLink>

&nbsp;| <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Chef_MyRecipies.aspx" CssClass="auto-style5">My Recipes</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/LogOut.aspx" CssClass="auto-style5">Logout</asp:HyperLink>

</div>
           
           <div class="main">





                


            



                <br />
              
                <strong><span class="auto-style7">Welcome</span>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
                </strong>
              
               <br />


             


                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="rid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="rid" HeaderText="rid" ReadOnly="True" SortExpression="rid" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                        <asp:BoundField DataField="preparationTime" HeaderText="preparationTime" SortExpression="preparationTime" />
                        <asp:BoundField DataField="CookTime" HeaderText="CookTime" SortExpression="CookTime" />
                        <asp:BoundField DataField="TotalTime" HeaderText="TotalTime" SortExpression="TotalTime" />
                        <asp:BoundField DataField="Serve" HeaderText="Serve" SortExpression="Serve" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="FoodType" HeaderText="FoodType" SortExpression="FoodType" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YahyaFinalDBConnectionString %>" SelectCommand="SELECT [rid], [Category], [Title], [Status], [userid], [preparationTime], [CookTime], [TotalTime], [Serve], [Price], [FoodType] FROM [Recipe] WHERE ([userid] = @userid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="userid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="rid" HeaderText="rid" SortExpression="rid" />
                        <asp:BoundField DataField="ingrediant" HeaderText="ingrediant" SortExpression="ingrediant" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:YahyaFinalDBConnectionString %>" SelectCommand="SELECT [Id], [rid], [ingrediant], [quantity], [userid] FROM [Recipe_Ingredients] WHERE ([userid] = @userid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="userid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Step1" HeaderText="Step1" SortExpression="Step1" />
                        <asp:BoundField DataField="Step2" HeaderText="Step2" SortExpression="Step2" />
                        <asp:BoundField DataField="Step3" HeaderText="Step3" SortExpression="Step3" />
                        <asp:BoundField DataField="Step4" HeaderText="Step4" SortExpression="Step4" />
                        <asp:BoundField DataField="Step5" HeaderText="Step5" SortExpression="Step5" />
                        <asp:BoundField DataField="rid" HeaderText="rid" SortExpression="rid" />
                        <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:YahyaFinalDBConnectionString %>" SelectCommand="SELECT [Id], [Step1], [Step2], [Step3], [Step4], [Step5], [rid], [userid] FROM [Recipe_Description] WHERE ([userid] = @userid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="userid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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