<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="images/favicon.ico" type="image/x-icon" rel="shortcut icon" />
    <link href="css/style.css" type="text/css" rel="stylesheet" />

    <div id="ad1" style="position: absolute; top: 100px; left: 5px; z-index: 20;">
        <div class="img">
            <img src="images/ad001.jpg" width="130" height="300" />
        </div>
        <div class="adclose tc" style="cursor: pointer; background: #999; color: #FFF; height: 25px; line-height: 25px; text-align: center;" onclick="this.parentNode.style.display='none'">关闭广告</div>
    </div>
    <div id="ad2" style="position: absolute; top: 100px; right: 5px; z-index: 99999;">
        <div class="img">
            <img src="images/ad001.jpg" width="130" height="300" />
        </div>
        <div class="adclose tc" style="cursor: pointer; background: #999; color: #FFF; height: 25px; line-height: 25px; text-align: center;" onclick="this.parentNode.style.display='none'">关闭广告</div>
    </div>

    <div class="content">
        <div class="flash">
            <div class="top_img" id="KinSlideshow" style="visibility: hidden; line-height: 40px;">
                <a href="#" target="_blank">
                    <img src="images/hz1.jpg" alt="“花都杯”2017广东省文化创意设计大赛优秀作品展邀请函" width="1060" height="280" /></a>
                <a href="#" target="_blank">
                    <img src="images/hz2.jpg" alt="2018年山东省高校毕业生“三支一扶”考试招录信息汇总" width="1060" height="280" /></a>
                <a href="#" target="_blank">
                    <img src="images/hz3.jpg" alt="20所高校在江苏试点综合评价录取 - 现代快报多媒体数字报刊平台" width="1060" height="280" /></a>
                <a href="#" target="_blank">
                    <img src="images/hz4.jpg" alt="“陕西省高校网络与新媒体专业发展座谈会”在西安科技大学高新..." width="1060" height="280" /></a>
            </div>
            <!--top_img end-->
        </div>
        <!--flash end-->

        <div class="cent">
            <div class="left">
                <asp:Panel ID="Panel1" runat="server">
                    <div class="cent_left_back">
                        <div class="cent_left">
                            <ul>
                                <li><a href="#" target="_blank">
                                    <div class="tb_dynamic"></div>
                                    动态</a></li>
                                <li><a href="#" target="_blank">
                                    <div class="tb_atten"></div>
                                    关注</a></li>
                                <li><a href="#" target="_blank">
                                    <div class="tb_history"></div>
                                    历史</a> </li>
                                <li><a href="#" target="_blank">
                                    <div class="tb_fans"></div>
                                    粉丝</a></li>
                            </ul>
                        </div>
                        <!--cent_left end-->
                    </div>
                    <!--cent_left_back end-->
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                    <div class="cent_left2">
                        <asp:Label ID="Label1" runat="server" Text="Label">
                        <h3>热门专题</h3>
                        </asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 8 [keyword] FROM [files] GROUP BY [keyword]"></asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource5" RepeatColumns="2">
                            <ItemTemplate>
                                <li>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Default.aspx?fileid="+Eval("keyword") %>' Text='<%# Eval("keyword") %>'></asp:HyperLink>
                                </li>
                            </ItemTemplate>
                        </asp:DataList>

                    </div>
                    <!--cent_left2 end-->
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">
                    <div class="cent_left3">
                        <div class="cent_left3_top">
                            <a href="#" target="_blank">
                                <h3><span>C</span>联系我们</h3>
                            </a>
                            <ul>
                                <li>地址：广东工贸职业技术学院 （天河校区）</li>
                                <li>邮箱：88888888@qq.com</li>
                                <li>官方QQ：88888888</li>
                                <li>电话传真：0731-7777777</li>
                            </ul>
                        </div>
                        <!--cent_left3_top end-->
                    </div>
                    <!--cent_left3 end-->
                </asp:Panel>

            </div>
            <!--left end-->

            <div class="right">

                <div class="cent_cent">
                    <div class="cent_cent_top">
                        <div class="cent_cent_top1"><strong>热点要闻</strong></div>
                        <div class="cent_cent_top2">
                            <a href="http:/XinWen/Default3.aspx" title="" target="_blank">
                                <img src="images/index000.jpg" height="30" width="300" /></a>
                        </div>
                    </div>
                    <!--cent_cent_top end-->
                    <div class="cent_cent_img">
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 1 [fileid], [pic], [filename], [abstract] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC, [visitnum] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="typeid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DataList ID="DataList2" runat="server" DataKeyField="fileid" DataSourceID="SqlDataSource6">
                            <ItemTemplate>
                                <div class="cent_img_left">
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("pic") %>' Width="100" Height="70" />
                                </div>
                                <!--cent_img_left end-->
                                <div class="cent_img_right">
                                    <h3>
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' Text='<%# Eval("filename") %>'></asp:HyperLink></h3>
                                    <p>
                                        <asp:Label ID="abstractLabel" runat="server" Text='<%# Eval("abstract").ToString().Length>43 ? Eval("abstract").ToString().Substring(0,42)+"...":Eval("abstract") %>' />
                                    </p>
                                </div>
                                <!--cent_img_right end-->

                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <!--cent_cent_top end-->

                    <div class="cent_cent_left">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 5 [fileid], [filename], [publishdate] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC, [visitnum] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="typeid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource1" GridLines="Horizontal" ShowHeader="False" Width="397px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Style="margin-top: 0px">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hd017.png" />
                                    </ItemTemplate>
                                    <ItemStyle Width="25px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="filename" SortExpression="filename">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server"
                                            Text='<%# Eval("filename").ToString().Length>41 ? Eval("filename").ToString().Substring(0,41)+"...":Eval("filename") %>' Target="_blank" ToolTip='<%# Eval("filename") %>'>
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                    <ItemStyle Height="22px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="publishdate" SortExpression="publishdate">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("publishdate") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%#"["+ Eval("publishdate","{0:yyyy-MM-dd}")+"]" %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Height="22px" />
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>

                    </div>
                    <!--cent_cent_left end-->
                </div>
                <!--cent_cent end-->


                <div class="cent_right">
                    <div class="cent_cent_top">
                        <div class="cent_cent_top1"><strong>大学四年</strong></div>
                        <div class="cent_cent_top2">
                            <a href="http:/XinWen/Default3.aspx" title="" target="_blank">
                                <img src="images/index000.jpg" height="30" width="300" /></a>
                        </div>
                    </div>
                    <!--cent_cent_top end-->
                    <div class="cent_cent_img">
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 1 [fileid], [pic], [filename], [abstract] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC, [visitnum] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="2" Name="typeid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DataList ID="DataList3" runat="server" DataKeyField="fileid" DataSourceID="SqlDataSource7">
                            <ItemTemplate>
                                <div class="cent_img_left">
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("pic") %>' Width="100" Height="70" />
                                </div>
                                <!--cent_img_left end-->
                                <div class="cent_img_right">
                                    <h3>
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' Text='<%# Eval("filename") %>'></asp:HyperLink></h3>
                                    <p>
                                        <asp:Label ID="abstractLabel" runat="server" Text='<%# Eval("abstract").ToString().Length>43 ? Eval("abstract").ToString().Substring(0,42)+"...":Eval("abstract") %>' />
                                    </p>
                                </div>
                                <!--cent_img_right end-->

                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <!--cent_cent_top end-->
                    <div class="cent_cent_left">
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 5 [fileid], [filename], [publishdate] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC, [visitnum] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="2" Name="typeid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource4" GridLines="Horizontal" ShowHeader="False" Width="397px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Style="margin-top: 0px">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hd017.png" />
                                    </ItemTemplate>
                                    <ItemStyle Width="25px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="filename" SortExpression="filename">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>'
                                            Text='<%# Eval("filename").ToString().Length>18 ? Eval("filename").ToString().Substring(0,17)+"...":Eval("filename") %>' Target="_blank" ToolTip='<%# Eval("filename") %>'>
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                    <ItemStyle Height="22px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="publishdate" SortExpression="publishdate">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("publishdate") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%#"["+ Eval("publishdate","{0:yyyy-MM-dd}")+"]" %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Height="22px" />
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        >

                    </div>
                    <!--cent_cent_left end-->
                </div>
                <!--cent_right end-->


                <div class="cent_cent">
                    <div class="cent_cent_top">
                        <div class="cent_cent_top1"><strong>校园生活</strong></div>
                        <div class="cent_cent_top2">
                            <a href="http:/XinWen/Default3.aspx" title="" target="_blank">
                                <img src="images/index000.jpg" height="30" width="300" /></a>
                        </div>
                    </div>
                    <!--cent_cent_top end-->
                    <div class="cent_cent_img">
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 1 [fileid], [pic], [filename], [abstract] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC, [visitnum] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="3" Name="typeid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DataList ID="DataList4" runat="server" DataKeyField="fileid" DataSourceID="SqlDataSource8">
                            <ItemTemplate>
                                <div class="cent_img_left">
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("pic") %>' Width="100" Height="70" />
                                </div>
                                <!--cent_img_left end-->
                                <div class="cent_img_right">
                                    <h3>
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' Text='<%# Eval("filename") %>'></asp:HyperLink></h3>
                                    <p>
                                        <asp:Label ID="abstractLabel" runat="server" Text='<%# Eval("abstract").ToString().Length>43 ? Eval("abstract").ToString().Substring(0,42)+"...":Eval("abstract") %>' />
                                    </p>
                                </div>
                                <!--cent_img_right end-->
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <!--cent_cent_top end-->
                    <div class="cent_cent_left">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 5 [fileid], [filename], [publishdate] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC, [visitnum] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="3" Name="typeid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource2" GridLines="Horizontal" ShowHeader="False" Width="397px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Style="margin-top: 0px">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hd017.png" />
                                    </ItemTemplate>
                                    <ItemStyle Width="25px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="filename" SortExpression="filename">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>'
                                            Text='<%# Eval("filename").ToString().Length>18 ? Eval("filename").ToString().Substring(0,17)+"...":Eval("filename") %>' Target="_blank" ToolTip='<%# Eval("filename") %>'>
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                    <ItemStyle Height="22px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="publishdate" SortExpression="publishdate">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("publishdate") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%#"["+ Eval("publishdate","{0:yyyy-MM-dd}")+"]" %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Height="22px" />
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>

                    </div>
                    <!--cent_cent_left end-->
                </div>
                <!--cent_cent end-->


                <div class="cent_right">
                    <div class="cent_cent_top">
                        <div class="cent_cent_top1"><strong>兼职就业</strong></div>
                        <div class="cent_cent_top2">
                            <a href="http:/XinWen/Default3.aspx" title="" target="_blank">
                                <img src="images/index000.jpg" height="30" width="300" /></a>
                        </div>
                    </div>
                    <!--cent_cent_top end-->
                    <div class="cent_cent_img">
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 1 [fileid], [pic], [filename], [abstract] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC, [visitnum] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="4" Name="typeid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:DataList ID="DataList5" runat="server" DataKeyField="fileid" DataSourceID="SqlDataSource9">
                            <ItemTemplate>
                                <div class="cent_img_left">
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("pic") %>' Width="100" Height="70" />
                                </div>
                                <!--cent_img_left end-->
                                <div class="cent_img_right">
                                    <h3>
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' Text='<%# Eval("filename") %>'></asp:HyperLink></h3>
                                    <p>
                                        <asp:Label ID="abstractLabel" runat="server" Text='<%# Eval("abstract").ToString().Length>43 ? Eval("abstract").ToString().Substring(0,42)+"...":Eval("abstract") %>' />
                                    </p>
                                </div>
                                <!--cent_img_right end-->

                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <!--cent_cent_top end-->
                    <div class="cent_cent_left">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>"
                            SelectCommand="SELECT top 5 [fileid], [filename], [publishdate] FROM [files] WHERE ([typeid] = @typeid) ORDER BY [publishdate] DESC, [visitnum] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="4" Name="typeid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource3" GridLines="Horizontal" ShowHeader="False" Width="397px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Style="margin-top: 0px">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hd017.png" />
                                    </ItemTemplate>
                                    <ItemStyle Width="25px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="filename" SortExpression="filename">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>'
                                            Text='<%# Eval("filename").ToString().Length>18 ? Eval("filename").ToString().Substring(0,17)+"...":Eval("filename") %>' Target="_blank" ToolTip='<%# Eval("filename") %>'>
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                    <ItemStyle Height="22px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="publishdate" SortExpression="publishdate">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("publishdate") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%#"["+ Eval("publishdate","{0:yyyy-MM-dd}")+"]" %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Height="22px" />
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                    </div>
                    <!--cent_cent_left end-->
                </div>
                <!--cent_right end-->
            </div>
            <!--right end-->
        </div>
        <!--cent end-->

        <div class="bottom cms-home">
            <div class="btnan">
                <div class="bottom_title">
                    <a href="Default3.aspx" title="" target="_blank">
                        <h3>图片新闻<span>&nbsp;︾</span></h3>
                    </a>
                </div>
                <!--bottom_title end-->
            </div>
            <div class="indent-col-main">
                <div class="std">
                    <br />
                </div>
                <div class="block-slider">
                    <div class="anythingSlider">
                        <ul id="slider_list" class="products-grid">
                            <li class="item first">
                                <a class="product-image" title="图片新闻 1" href="http:/XinWen/hd_cont.aspx">
                                    <img alt="新闻中心 1" src="images/hd001.jpg" width="230" height="170" /></a>
                                <h3 class="product-name">
                                    <a title="讲座报名：2018高考报志愿之如何选大学" href="http:/XinWen/hd_cont.aspx">讲座报名：2018高考报志愿之如何选大学</a>
                                    <button class="button btn-cart" title="add to Cart"><span><span>大学四年</span></span></button>
                                </h3>
                            </li>
                            <li class="item">
                                <a class="product-image" title="图片新闻 2" href="http:/XinWen/hd_cont.aspx">
                                    <img alt="校园频道 2" src="images/hd002.jpg" width="230" height="170" /></a>
                                <h3 class="product-name">
                                    <a title="正确对待传统文化（大家读书）" href="http:/XinWen/hd_cont.aspx">正确对待传统文化（大家读书）</a>
                                    <button class="button btn-cart" title="add to Cart"><span><span>校园生活</span></span></button>
                                </h3>
                            </li>
                            <li class="item">
                                <a class="product-image" title="图片新闻 3" href="http:/XinWen/hd_cont.aspx">
                                    <img alt="文学频道 3" src="images/hd003.jpg" width="230" height="170" style="margin-right: 10px;" /></a>
                                <h3 class="product-name">
                                    <a title="广东印发《关于深化职称制度改革的实施意见》" href="http:/XinWen/hd_cont.aspx">广东印发《关于深化职称制度改革的实施意见》</a>
                                    <button class="button btn-cart" title="add to Cart"><span><span>兼职就业</span></span></button>
                                </h3>
                            </li>
                            <li class="item">
                                <a class="product-image" title="图片新闻 4" href="http:/XinWen/hd_cont.aspx">
                                    <img
                                        alt="生活频道 4" src="images/hd004.jpg" width="230" height="170" style="margin-right: 10px;" /></a>
                                <h3 class="product-name">
                                    <a title="中国人英语能力等级将有国家“标尺”" href="http:/XinWen/hd_cont.aspx">中国人英语能力等级将有国家“标尺”</a>
                                    <button class="button btn-cart" title="add to Cart"><span><span>考研考证</span></span></button>
                                </h3>
                            </li>
                            <li class="item"><a class="product-image" title="图片新闻 5" href="http:/XinWen/hd_cont.aspx">
                                <img alt="教育频道 5" src="images/hd005.jpg" width="230" height="170" /></a>
                                <h3 class="product-name">
                                    <a title="留学回国人员落户上海可全网预约 办理只需20分钟" href="http:/XinWen/hd_cont.aspx">留学回国人员落户上海可全网预约 办理只需20分钟</a>
                                    <button class="button btn-cart" title="add to Cart"><span><span>教育学习</span></span></button>
                                </h3>
                            </li>
                            <li class="item last">
                                <a class="product-image" title="图片新闻 6" href="http:/XinWen/hd_cont.aspx">
                                    <img alt="励志频道 6" src="images/hd006.jpg" width="230" height="170" /></a>
                                <h3 class="product-name">
                                    <a title="麻省理工与宁波合办供应链创新学院 明年完工" href="http:/XinWen/hd_cont.aspx">麻省理工与宁波合办供应链创新学院 明年完工</a>
                                    <button class="button btn-cart" title="add to Cart"><span><span>励志情感</span></span></button>
                                </h3>
                            </li>
                            <li class="item last">
                                <a class="product-image" title="图片新闻 7" href="http:/XinWen/hd_cont.aspx">
                                    <img alt="社会实践 7" src="images/hd007.jpg" width="230" height="170" /></a>
                                <h3 class="product-name"><a title="中医跟师学习可申请学位" href="http:/XinWen/hd_cont.aspx">中医跟师学习可申请学位</a>
                                    <button class="button btn-cart" title="add to Cart"><span><span>社会实践</span></span></button>
                                </h3>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="left_but" class="box-left"></div>
                <div id="right_but" class="box-right"></div>
            </div>
        </div>
        <!--bottom end-->
        <script src="jquery/jquery.js" type="text/javascript"></script>
        <script src="jquery/jquery.KinSlideshow.js" type="text/javascript"></script>
        <script src="js/banner1.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function () {
                $("#KinSlideshow").KinSlideshow();
            })
        </script>
        <script src="jquery/jquery.js" type="text/javascript"></script>
        <script src="js/slider.js" type="text/javascript"></script>
    </div>
    <!--content end-->
</asp:Content>

