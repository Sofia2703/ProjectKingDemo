<%@ Page Title="" Language="C#" MasterPageFile="~/KingMaster.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="ProjectKingDemo.AddProject" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; background-image:url('./BGimg/white.png'); ">
        <tr>
            <td style="height: 28px">aDD</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID_Story" DataSourceID="AddDetail" DefaultMode="Insert" Height="50px" Width="472px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="ID_Story" HeaderText="ID_Story" InsertVisible="False" ReadOnly="True" SortExpression="ID_Story" />
                        <asp:TemplateField HeaderText="NameStory" SortExpression="NameStory">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NameStory") %>' Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NameStory") %>' Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("NameStory") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TitleStory" SortExpression="TitleStory">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Rows="5" Text='<%# Bind("TitleStory") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Rows="5" Text='<%# Bind("TitleStory") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("TitleStory") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Story" SortExpression="Story">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Rows="10" Text='<%# Bind("Story") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Rows="10" Text='<%# Bind("Story") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Story") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID_Type" SortExpression="ID_Type">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="TypeBD" DataTextField="NameType" DataValueField="ID_Type"
                                    SelectedValue='<%# Bind("ID_Type") %>' Width="200px"><asp:ListItem Selected="True" Value="0">-- Select --</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="True" DataSourceID="TypeBD" DataTextField="NameType" DataValueField="ID_Type"
                                    SelectedValue='<%# Bind("ID_Type") %>' Width="200px"><asp:ListItem Selected="True" Value="0">-- Select --</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID_Type") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID_Size" SortExpression="ID_Size">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" DataSourceID="SizeDB" DataTextField="Size" DataValueField="ID_Size"
                                    SelectedValue='<%# Bind("ID_Size") %>' Width="200px"><asp:ListItem Selected="True" Value="0">-- Select --</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="True" DataSourceID="SizeDB" DataTextField="Size" DataValueField="ID_Size"
                                    SelectedValue='<%# Bind("ID_Size") %>' Width="200px"><asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("ID_Size") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="AddDetail" runat="server" ConnectionString="<%$ ConnectionStrings:KingProjectConnectionString %>" 
                    SelectCommand="SELECT * FROM [ProjectStory] WHERE ([ID_Story] = @ID_Story)"
                    InsertCommand="INSERT INTO ProjectStory (NameStory,TitleStory,Story,ID_Type,ID_Size) VALUES (@NameStory,@TitleStory,@Story,@ID_Type,@ID_Size)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ID_Story" QueryStringField="ID_Story" Type="Int32" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NameStory" Type ="String"/>
                        <asp:Parameter Name="TitleStory" Type ="String"/>
                        <asp:Parameter Name="Story" Type ="String"/>
                        <asp:Parameter Name="ID_Type" Type ="Int32"/>
                        <asp:Parameter Name="ID_Size" Type ="Int32"/>
                </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="TypeBD" runat="server" ConnectionString="<%$ ConnectionStrings:KingProjectConnectionString %>" SelectCommand="SELECT * FROM [Type]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SizeDB" runat="server" ConnectionString="<%$ ConnectionStrings:KingProjectConnectionString %>" SelectCommand="SELECT * FROM [Size]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
