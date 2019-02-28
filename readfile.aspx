<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="readfile.aspx.cs" Inherits="hd_cont" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="images/favicon.ico" type="image/x-icon" rel="shortcut icon" />
    <link href="css/readfile.css" type="text/css" rel="stylesheet" />
    
    <div class="content">
        <div class="all">
            <div class="neck">
                <a href="#" target="_blank">
                    <img src="images/ad002.jpg" height="120" width="1000" /></a>
            </div>
            <!--neck end-->

            <div class="left">
                <div class="left_top">
                    <a href="index.html" target="_blank">首页</a>&nbsp;&nbsp;><a href="hd_rencai.html" target="_blank">大学四年</a>
                </div>
                <!--left_top end-->

                <div class="left_cont">
                    <div class="left_cont2" onclick="show2(this)">
                        <a>网友评论</a><img src="images/cont_tb.png" height="25" width="30" />
                    </div>
                    <div class="hide item" id="item" flag="false">
                        <dl>
                            <dt>
                                <asp:Label ID="HyperLink1" runat="server" class="users" OnClick="show(this)" OnClientClick="return false">
                                <asp:Image ID="Image1" runat="server" ImageUrl="images/user000.jpg"/></asp:Label>
                                <asp:Label ID="Labeluser" runat="server" Text=""></asp:Label>
                            </dt>
                            <dd>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="6" placeholder="扯淡、吐槽、表扬、鼓励……想说啥就说啥！"></asp:TextBox>
                                <span class="num-limit"><span>0</span>/100</span>
                            </dd>
                            <dd>
                                <asp:Button ID="Button1" runat="server" Text="发表评论" OnClick="Button1_Click" />

                            </dd>
                        </dl>
                    </div>
                    <!--left_cont2 end-->
                    <div class="left_cont2" onclick="show2(this)">
                        <a>最热评论</a><img src="images/cont_tb.png" height="25" width="30" />
                    </div>
                    <div class="hide item" flag="false">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" SelectCommand="select top 4 comment,publishdate,pinglun.username,picture,fileid from pinglun
inner join users 
on pinglun.username = users.username ORDER BY [dianzan] DESC"></asp:SqlDataSource>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" GridLines="None" ShowHeader="False">
                            <Columns>
                                <asp:TemplateField HeaderText="picture" SortExpression="picture">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <dl>
                                            <dt>
                                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("picture") %>' />

                                            </dt>
                                            <dd>
                                                <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("username") %>'></asp:HyperLink>
                                                <span>
                                                    <asp:Label ID="Label5" runat="server" Text='<%#"["+ Eval("publishdate","{0:yyyy-MM-dd}")+"]" %>'></asp:Label></span></dd>
                                            <dd>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("comment") %>'></asp:Label></dd>
                                        </dl>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <!--left_cont2 end-->
                    <div class="left_cont2" onclick="show2(this)">
                        <a>最新评论</a><img src="images/cont_tb.png" height="25" width="30" />
                    </div>
                    <div class="hide item" flag="false">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" SelectCommand="select top 4 comment,publishdate,pinglun.username,picture,fileid from pinglun
inner join users
on pinglun.username = users.username
ORDER BY [publishdate] DESC "></asp:SqlDataSource>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" GridLines="None" ShowHeader="False">
                            <Columns>
                                <asp:TemplateField HeaderText="picture" SortExpression="picture">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <dl>
                                            <dt>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' /></dt>
                                            <dd>
                                                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("username") %>'></asp:HyperLink>
                                                <span>
                                                    <asp:Label ID="Label3" runat="server" Text='<%#"["+ Eval("publishdate","{0:yyyy-MM-dd}")+"]" %>'></asp:Label></span></dd>
                                            <dd>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("comment") %>'></asp:Label></dd>
                                        </dl>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <!--left_cont2 end-->
                    <div class="left_cont2" onclick="show2(this)">
                        <a>全部评论</a><img src="images/cont_tb.png" height="25" width="30" />
                    </div>
                    <div class="hide item" id="Div3" flag="false">
                       <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" SelectCommand="select comment,publishdate,pinglun.username,picture,fileid from pinglun
inner join users 
on pinglun.username = users.username"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" GridLines="None" ShowHeader="False" AllowPaging="True" PageSize="5">
                            <Columns>
                                <asp:TemplateField HeaderText="picture" SortExpression="picture">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <dl>
                                            <dt>
                                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("picture") %>' />

                                            </dt>
                                            <dd>
                                                <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("username") %>'></asp:HyperLink>
                                                <span>
                                                    <asp:Label ID="Label5" runat="server" Text='<%#"["+ Eval("publishdate","{0:yyyy-MM-dd}")+"]" %>'></asp:Label></span></dd>
                                            <dd>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("comment") %>'></asp:Label></dd>
                                        </dl>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerStyle HorizontalAlign="Center" Width="100%" />
                        </asp:GridView>
                    </div>
                    <!--left_cont2 end-->
                </div>
                <!--left_cont end-->
            </div>
            <!--left end-->

            <div class="right">
                <div class="right_top">
                    <a href="#" target="_blank" class="a1">最新新闻</a>&nbsp;News
                </div>
                <div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" SelectCommand="SELECT [fileid], [filename], [filecontent], [source], [publishdate], [visitnum], [redact] FROM [files] WHERE ([fileid] = @fileid)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="fileid" QueryStringField="fileid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="fileid" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="right_cont">
                                <div class="right_title">
                                    <h1><asp:Label ID="filenameLabel" runat="server" Text='<%# Eval("filename") %>' /></h1>
                                </div>
                                <div class="right_cont1">
                                    <h2>
                                        时间：<asp:Label ID="publishdateLabel" runat="server" Text='<%# Eval("publishdate") %>' />&nbsp;&nbsp;
                                        作者：<asp:Label ID="redactLabel" runat="server" Text='<%# Eval("redact") %>' />&nbsp;&nbsp;
                                        来源：<a href="#"><asp:Label ID="sourceLabel" runat="server" Text='<%# Eval("source") %>' /></a>
                                    </h2>
                                </div><!--right_cont1 end-->
        
                                <div class="right_cont2">
                                    <asp:Label ID="filecontentLabel" runat="server" Text='<%# Eval("filecontent") %>' />
                               </div><!--right_cont2 end-->
                        </ItemTemplate>
                    </asp:DataList>
                </div>
             </div>   
            <!--right end-->
        </div>
        <!--all end-->
        <script src="jquery/jquery.js" type="text/javascript"></script>
        <script type="text/javascript">
            function show2(value) {
                if ($(value).next().attr("flag") == "false") {
                    $(value).next().removeClass("hide");
                    $(value).parent().siblings().children("item").addClass("hide");
                    $(value).next().attr("flag", "true");
                }
                else {
                    $(value).next().addClass("hide");
                    $(value).parent().siblings().children("item").addClass("hide");
                    $(value).next().attr("flag", "false");
                }
            }
        </script>
    </div>
    <!--content end-->
</asp:Content>

