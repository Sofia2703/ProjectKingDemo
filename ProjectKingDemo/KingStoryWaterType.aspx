<%@ Page Title="" Language="C#" MasterPageFile="~/KingMaster.Master" AutoEventWireup="true" CodeBehind="KingStoryWaterType.aspx.cs" Inherits="ProjectKingDemo.KingStoryWaterType" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    water type<br />
<br />
<br />
&nbsp;
    <table  align="center" style="width:100%; background-image:url('./BGimg/white.png');">
        <tr>
            <td class="auto-style16"><br />
                <div id="spoiler" > 
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="TH SarabunIT๙" ForeColor="Red" Text="โครงการพระราชดำริ" style="font-size: large"></asp:Label>
                    <br />
                <br />
                    <div style="text-align: center">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" style="margin-left:14em;" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_Story" DataSourceID="GridReadDB" ForeColor="Black" GridLines="Vertical" Width="737px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="ID_Story" HeaderText="ID_Story" ReadOnly="True" SortExpression="ID_Story" />
                                <asp:BoundField DataField="NameStory" HeaderText="ชื่อโครงการ" SortExpression="NameStory" />
                                <asp:BoundField DataField="TitleStory" HeaderText="เรื่องย่อ" SortExpression="TitleStory" />
                                <asp:CommandField ButtonType="Button" SelectText="อ่านต่อ" ShowSelectButton="True" HeaderText="Action" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="GridReadDB" runat="server" ConnectionString="<%$ ConnectionStrings:KingProjectConnectionString %>" 
                        SelectCommand="SELECT [ID_Story], [NameStory], [TitleStory] FROM [ProjectStory]
                        WHERE ID_Type = (SELECT ID_Type FROM Type WHERE ID_Type LIKE '1');"></asp:SqlDataSource>
                <br />
                </div>
                <button title="Click to show/hide content" type="button" onclick="if(document.getElementById('spoiler') .style.display=='none') {document.getElementById('spoiler') .style.display=''}else{document.getElementById('spoiler') .style.display='none'}">Click for Show/hide Table</button>
                    <br />
                  &nbsp;</td>
        </tr>
        <tr>
            <td>
                <center><asp:LoginView ID="LoginView2" runat="server">
                    <AnonymousTemplate>
                        ** กรุณา Login ก่อนอ่าน **
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/AddProject.aspx" Text="Add Project" />
                        &nbsp;
                        <button onclick="if(document.getElementById('Editer') .style.display=='none') {document.getElementById('Editer') .style.display=''}else{document.getElementById('Editer') .style.display='none'}" title="Click to show/hide content" type="button">
                            Edit
                        </button>
                        <br />
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID_Story" DataSourceID="ShowDataDeTail" ForeColor="#333333" GridLines="None" Height="50px" Width="745px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="ID_Story" HeaderText="ID_Story" ReadOnly="True" SortExpression="ID_Story" />
                                <asp:BoundField DataField="NameStory" HeaderText="NameStory" SortExpression="NameStory" />
                                <asp:BoundField DataField="Story" HeaderText="Story" SortExpression="Story" />
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="ShowDataDeTail" runat="server" ConnectionString="<%$ ConnectionStrings:KingProjectConnectionString %>" SelectCommand="SELECT [ID_Story], [NameStory], [Story] FROM [ProjectStory] WHERE ([ID_Story] = @ID_Story)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="ID_Story" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </LoggedInTemplate>
                </asp:LoginView></center>
                <br />
               <div id="Editer" style="display:none;">
                <center><asp:LoginView ID="LoginView4" runat="server">
                    <LoggedInTemplate>
                        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="ID_Story" DataSourceID="EditDetail" Height="50px" Width="758px" DefaultMode="Edit">
                            <Fields>
                                <asp:TemplateField HeaderText="ID_Story" SortExpression="ID_Story">
                                    <EditItemTemplate>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID_Story") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ID_Story") %>'></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ID_Story") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ชื่อโครงการ" SortExpression="NameStory">
                                    <EditItemTemplate>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NameStory") %>' Width="300px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NameStory") %>' Width="300px"></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("NameStory") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="เรื่องย่อ" SortExpression="TitleStory">
                                    <EditItemTemplate>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TitleStory") %>' Width="500px" rows="7" cols="50" TextMode="MultiLine"></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TitleStory") %>' Width="500px" rows="7" cols="50" TextMode="MultiLine"></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TitleStory") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="เนื้อเรื่อง" SortExpression="Story">
                                    <EditItemTemplate>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Story") %>' rows="10" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Story") %>' rows="10" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Story") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                            </Fields>
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="EditDetail" runat="server" ConnectionString="<%$ ConnectionStrings:KingProjectConnectionString %>" 
                    DeleteCommand="DELETE FROM [ProjectStory] WHERE [ID_Story] = @ID_Story" 
                    InsertCommand="INSERT INTO [ProjectStory] ([ID_Story], [NameStory], [TitleStory], [Story]) VALUES (@ID_Story, @NameStory, @TitleStory, @Story)" 
                    SelectCommand="SELECT [ID_Story], [NameStory], [TitleStory], [Story] FROM [ProjectStory] WHERE ([ID_Story] = @ID_Story)" 
                    UpdateCommand="UPDATE [ProjectStory] SET [NameStory] = @NameStory, [TitleStory] = @TitleStory, [Story] = @Story WHERE [ID_Story] = @ID_Story">
                            <DeleteParameters>
                                <asp:Parameter Name="ID_Story" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ID_Story" Type="Int32" />
                                <asp:Parameter Name="NameStory" Type="String" />
                                <asp:Parameter Name="TitleStory" Type="String" />
                                <asp:Parameter Name="Story" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="ID_Story" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="NameStory" Type="String" />
                                <asp:Parameter Name="TitleStory" Type="String" />
                                <asp:Parameter Name="Story" Type="String" />
                                <asp:Parameter Name="ID_Story" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </LoggedInTemplate>

                </asp:LoginView></center>
              </div>
                <br />
            </td>
        </tr>
      
    </table>
</asp:Content>
