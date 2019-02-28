<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="images/favicon.ico" type="image/x-icon" rel="shortcut icon" />
    <link href="css/Default2.css" type="text/css" rel="stylesheet" />
    <div class="content">
        <div class="all">
            <div class="neck">
                <a href="#" target="_blank">
                    <img src="images/ad002.jpg" height="120" width="1000" /></a>
            </div>
            <!--neck end-->
            <div class="left">
                <div class="left_top">
                    <a href="http:/XinWen/Default.aspx" target="_blank">首页</a>&nbsp;&nbsp;><a href="http:/XinWen/Default2.aspx" target="_blank">大学四年</a>
                </div>
                <!--left_top end-->
                <div class="left_cont">
                    <asp:Panel ID="Panel1" runat="server"> 
                        <h2><span>热度</span>排行</h2>
                    </asp:Panel>
                    <div class="left_sort">
                        <ol>
                            <li><span><strong>1</strong></span></li>
                            <li><span><strong>2</strong></span></li>
                            <li><span><strong>3</strong></span></li>
                            <li><span><strong>4</strong></span></li>
                            <li><span><strong>5</strong></span></li>
                            <li><span><strong>6</strong></span></li>
                            <li><span><strong>7</strong></span></li>
                            <li><span><strong>8</strong></span></li>
                            <li><span><strong>9</strong></span></li>
                        </ol>

                    </div>
                   <div class="left_sort1">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
                           SelectCommand="SELECT top 9 [fileid], [filename] FROM [files] ORDER BY [publishdate] DESC"></asp:SqlDataSource>
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource1" GridLines="None" ShowHeader="False" AllowSorting="True" Height="239px" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px;" Width="221px">
                           <Columns>
                               <asp:TemplateField></asp:TemplateField>
                               <asp:TemplateField SortExpression="filename">
                                   <EditItemTemplate>
                                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
                                   </EditItemTemplate>
                                   <ItemTemplate>
                                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' 
                                           Text='<%# Eval("filename").ToString().Length>16 ? Eval("filename").ToString().Substring(0,15)+"...":Eval("filename") %>' 
                                           Target="_blank" ToolTip='<%# Eval("filename") %>' ForeColor="Black"></asp:HyperLink>
                                   </ItemTemplate>
                               </asp:TemplateField>
                           </Columns>
                       </asp:GridView>

                   </div>
                   
                </div>
                <div class="left_cont2">
                    <asp:Panel ID="Panel2" runat="server">
                        <h2><span>热门</span>点击</h2>
                    </asp:Panel>
                    
                     <div>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
                             SelectCommand="SELECT top 9 [fileid], [keyword], [filename]  FROM [files] ORDER BY [visitnum] DESC"></asp:SqlDataSource>
                         <br />
                         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource2" GridLines="None" Height="208px" ShowHeader="False" Width="257px" AllowSorting="True">
                             <Columns>
                                 <asp:TemplateField SortExpression="keyword">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("keyword") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>'
                                             Text='<%#"【"+ Eval("keyword")+"】" %>'></asp:HyperLink>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:TemplateField SortExpression="filename">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>'
                                             Text='<%# Eval("filename").ToString().Length>12 ? Eval("filename").ToString().Substring(0,11)+"...":Eval("filename") %>'
                                             Target="_blank" ToolTip='<%# Eval("filename") %>' ForeColor="Black"></asp:HyperLink>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                         </asp:GridView>

                     </div>
                </div>
            </div>

            <div class="right">
                <div class="right_top">
                    <a href="#" target="_blank" class="a1">最新新闻</a>&nbsp;News
                </div>
                <!--right_top end-->
               <div class="right_cont">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" SelectCommand="SELECT [fileid], [pic], [filename], [publishdate], [abstract] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="typeid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource3" GridLines="None" ShowHeader="False" PageSize="4">
                        <Columns>
                            <asp:TemplateField HeaderText="pic" SortExpression="pic">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("pic") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <div class="right_cont2">
                                        <div class="right_cont2_img">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic") %>' Height="150px" Width="200px" />
                                        </div>
                                        <!--right_cont2_font img-->
                                        <div class="right_cont2_font">
                                            <li class="li_head">
                                                <p><asp:Label ID="Label3" runat="server" Text='<%# Eval("publishdate") %>'></asp:Label></p>
                                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' Text='<%# Eval("filename") %>'></asp:HyperLink>
                                            </li>
                                            <li class="li_cont">
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("abstract") %>'></asp:Label>
                                                <asp:HyperLink ID="HyperLink5" runat="server" Text=" 查看全文&gt;&amp;gt" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>'></asp:HyperLink>
                                            </li>
                                        </div>
                                        <!--right_cont2_font end-->
                                    </div>
                                    <!--right_cont2 end-->
                                </ItemTemplate>
                            </asp:TemplateField>
         
                        </Columns>
                        <HeaderStyle Font-Size="1px" Height="1px" />
                        <PagerSettings  FirstPageText="第一页" LastPageText="末   页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
                        <PagerStyle Font-Size="8px" HorizontalAlign="Center" Width="100%"   CssClass="bubufxPagerCss" />
                    </asp:GridView>
                </div>
            </div>
            <!--right end-->
        </div>
        <!--all end-->
    </div>
    <!--content end-->
    <script src="jquery/jquery.js"></script>
    <script>
        $(".top ul li a").removeClass("current")
        $(".top ul li:nth-child(2) a").addClass("current")
    </script>
</asp:Content>


