<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .content {
            height:100%;
        }

        .all {
            width: 1000px;
            height: 1100px;
            padding: 0 20px 0 20px;
            border-left: 1px solid #d6d4cf;
            border-right: 1px solid #d6d4cf;
            background: #ffffff;
            margin: 0 auto;
        }

        .right {
            width: 1000px;
            height: auto;
            margin-top: 30px;
        }

        .right_top {
            height: 40px;
            font: bold 20px 微软雅黑;
            line-height: 40px;
            padding-left:150px;
            color: #666;
            width: 846px;
            background: #eae9e6;
            border: 1px solid #ccc;
        }

        .right_cont {
            height: 1100px;
            margin: 20px auto;
            width: 996px;
            background: #eae9e6;
            border: 1px solid #ccc;
        }

        .right_cont2 {
            width: 700px;
            height: 170px;
            margin:0 142px 20px;
            padding:0;
            border: 2px solid #ccc;
        }

        .right_cont2_img {
            width: 200px;
            height: 170px;
            float: left;
        }

        .right_cont2_img img {
            margin: 10px 0 0 10px;
        }

        .right_cont2_font {
            width: 450px;
            height: 170px;
            margin: 0 20px;
            float: right;
        }

        .li_head {
            margin: 15px 0;
        }

        .li_head a {
            font-size: 14px;
            color: #F90;
            line-height: 20px;
            margin: 15px 0;
            font-weight: bold;
        }

        .li_head p {
            float: right;
            color: #808080;
            padding-right: 0px;
            padding-left: 10px;
            font-weight: bold;
            font-size: 12px;
        }

        .li_head a:hover {
            color: #f8490b;
            text-decoration: underline;
        }

        .li_cont {
            color: #333;
            line-height: 25px;
            font-weight: bold;
        }

        .li_cont a {
            color: #366;
        }

        .li_cont a:hover {
            text-decoration: underline;
        }

        .a1 {
            color: #000;
            margin-left: 20px;
        }

        .right_top a:hover {
            color: #F90;
        }
        .xiansi {
            color: #0094ff;
            font-size: 24px;
            text-align: center;
            margin-top: 50px;
        }

        .neck {
            width: 1000px;
            height: 120px;
        }

        .bubufxPagerCss table {
            text-align: center;
            margin: auto;
        }

        .bubufxPagerCss table td {
            border: 0px;
            padding: 5px;
        }

        .bubufxPagerCss td {
            border-bottom: #ffffff 3px solid;
        }

        .bubufxPagerCss tr td a:hover {
            background-color: #F90;
            color: #FFF;
        }

        .bubufxPagerCss a {
            color: #F90;
            text-decoration: none;
            padding: 3px 6px 3px 6px;
            margin: 0 0 0 4px;
            text-align: center;
            border: 1px solid #333;
        }

        .bubufxPagerCss span {
            color: #F90;
            background-color: #ac1f24;
            padding: 3px 6px 3px 6px;
            margin: 0 0 0 4px;
            text-align: center;
            font-weight: bold;
            border: 1px solid #333;
        }


       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="all">
            <div class="neck">
                <a href="#" target="_blank">
                    <img src="images/ad002.jpg" height="120" width="1000" /></a>
            </div>
            <div class="right">
                <div class="right_top">
                    <a href="#" target="_blank" class="a1">搜索到的新闻</a>&nbsp;News
                </div>
                <!--right_top end-->
                <div class="right_cont">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:newsConnectionString %>" 
                        SelectCommand="SELECT * FROM [files]"></asp:SqlDataSource>
                    
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" ShowHeader="False" AllowPaging="True" PageSize="4">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="pic" SortExpression="pic">
                                <ItemTemplate>
                                    <div class="right_cont2">
                                        <div class="right_cont2_img">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic") %>' Height="150px" Width="200px" />
                                        </div>
                                        <!--right_cont2_font img-->
                                        <div class="right_cont2_font">
                                            <li class="li_head">
                                                <p>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("publishdate") %>'></asp:Label></p>
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
                        <PagerSettings FirstPageText="第一页" LastPageText="末   页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
                        <PagerStyle Font-Size="8px" HorizontalAlign="Center" Width="100%" CssClass="bubufxPagerCss" />
                    </asp:GridView>
                    <div class="xiansi"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></div>
                </div>
            </div>
            <!--right end-->


        </div>
    </div>
</asp:Content>

