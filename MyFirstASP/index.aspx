<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MyFirstASP.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP is LIFE</title>

    <style type="text/css">
        .auto-style1 {
        text-align: center;
        color: saddlebrown;
        }
        .auto-style2 {
        width: 417px;
        }
        .auto-style3 {
        width: 400px;
        }
        .auto-style4 {
        height: 55px;
        width: 97px;
        }
        .auto-style5 {
        margin-left: 0px;
        margin-top: 0px;
        }
        .auto-style6 {
        width: 273px;

        }
        .auto-style7 {
        height: 55px;
        width: 273px;
        }
        .auto-style8 {
        margin-top: 0px;
        border-radius:20px;
        }
        .auto-style9 {
        width: 733px;
        height: 581px;
        }
        .auto-style10 {
        width: 97px;
        }
        .auto-style11 {
        width: 500px;
        }
        .auto-style12 {
        height: 116px;
        }
        .stylePanel {
        border-radius:50px;
        }
        .tecboc {
        border-radius:10px;
        }
        .auto-style14 {
        text-align: center;
        }
        .auto-style15 {
        margin-top: 0px;
        border-radius:50px;

       }
</style>
</head>
<body style = "background-color:antiquewhite">
    <form id="form1" runat="server" class="auto-style9">
        <div>

            <h1 class="auto-style1"> P I Z Z A - H U R T S</h1>

        </div>
      
        <hr class="auto-style2"/>

        <br />

        <table class="auto-style11">
            <tr style="vertical-align:top">
                <td class="auto-style12">
                    
                    <asp:Panel ID="panPizza" runat="server" CssClass="stylePanel" BackColor="#CC9900" GroupingText="Pizza Information" Height="100%" Width="450px">
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style10">
                                    <%-- Comment on ASP--%>
                                    <asp:Label ID="lblCustomer" runat="server" AccessKey="c" Text="Customer" AssociatedControlID="txtCustomer"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="txtCustomer" runat="server" CssClass="tecboc" Width="200px"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <%-- Comment on ASP--%>
                                    <asp:Label ID="lblTelephone" runat="server" AccessKey="t" Text="Telephone" AssociatedControlID="txtPhone"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:TextBox ID="TxtPhone" runat="server" TextPhone="Phone" CssClass="tecboc" Width="200px"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <%-- Real Time action--%>
                                    <asp:Label ID="lblDelivery" runat="server" Text="To deliver"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:CheckBox ID="chkDelivery" runat="server" AutoPostBack="true" OnCheckedChanged="chkDelivery CheckChanged" />
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtAddress" runat="server" Height="50px" TextMode="Multiline" CssClass="tecboc" Width="200px"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblPizza" runat="server" Text="Pizza"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:DropDownList ID="cboPizza" runat="server" CssClass="tecboc" AutoPostBack="true" OnSelectedIndexChanged="cboPizza_SelectedIndexCHanged" Width="200px">
                                        <asp:ListItem> Select a Pizza</asp:ListItem>
                                   </asp:DropDownList>
                                
                                </td>
                            </tr>

                             <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblPizzaSize" runat="server" Text="Pizza Size"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:ListBox ID="lstPizzaSize" runat="server" CssClass="tecboc" AutoPostBack="true" Width="200px" ></asp:ListBox>
                                
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblToppings" runat="server" Text="Toppings"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:CheckBoxList ID="CheckBoxList" runat="server" AutoPostBack="true"></asp:CheckBoxList>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblPizzaCrust" runat="server" Text="Pizza Crust"></asp:Label>
                                </td>
                                <td class="auto-style6">
                                    <asp:RadioButtonList ID="radlstCrust" runat="server" AutoPostBack="true"></asp:RadioButtonList>
                                  </td>
                            </tr>

                        </table>
                        <br />
                        <br />
                        <br />
                        </asp:Panel>
                </td>

                <td class="auto-style12">
                    <asp:Panel ID="panPricing" runat="server" GroupingText="Pricing" BackColor="#CC9900" Height="250px" Width="260px" CssClass="auto-style8">

                        <asp:Image ID="imgHurtz" runat="server" CssClass="auto-style15" Height="80px" ImageUrl="~/logo.png"/>

                    </asp:Panel>




                </td>




            </tr>
        </table>


    </form>
</body>
</html>
