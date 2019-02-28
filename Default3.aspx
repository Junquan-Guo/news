<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="hd_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="images/favicon.ico" type="image/x-icon" rel="shortcut icon" />
    <link href="css/Default3.css" type="text/css" rel="stylesheet"  />
    <div class="content">
        <div class="all">
            <div class="neck">
                <a href="#" target="_blank">
                    <img src="images/ad002.jpg" height="120" width="1000" /></a>
            </div>
            <!--neck end-->
            <div class="title">
                <a href="http:/XinWen/Default3.aspx" target="_blank" class="a1">图片新闻</a>&nbsp;Newsphoto<span>当前位置：<a href="http:/XinWen/Default.aspx" target="_blank">首页</a>><a href="http:/XinWen/Default3.aspx" target="_blank">图片新闻</a></span>
            </div>
            <!--title end-->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
                SelectCommand="SELECT top 6 [fileid], [pic], [filename], [abstract] FROM [files]">

            </asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="fileid" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="cent">
                        <div class="cent_img">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("pic") %>' Width="300" Height="200" />
                        </div>
                        <div class="cent_cont">
                            <h3 class="li_head">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' Text='<%# Eval("filename") %>'></asp:HyperLink>
                            </h3>
                            <div class="li_cont">
                                <li><asp:Label ID="abstractLabel" runat="server" Text='<%# Eval("abstract").ToString().Length>64 ? Eval("abstract").ToString().Substring(0,63)+"...":Eval("abstract") %>' /></li>
                            </div>
                            <!--li_cont end-->
                            <div class="cent_div">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>'>查看全文</asp:HyperLink>
                            </div>
                        </div>
                        <!--left_content end-->
                    </div>
                    <!--cent end-->
                </ItemTemplate>
                <HeaderStyle Font-Size="1px" Height="1px" />
                <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"  CssClass="bubufxPagerCss"/>
            </asp:DataList>          

        </div>
        <!--all end-->
    </div>
    <!--content end-->
        <script>
            $(".top ul li a").removeClass("current")
            $(".top ul li:nth-child(9) a").addClass("current")
    </script>
</asp:Content>

