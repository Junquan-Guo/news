<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="page_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <link href="layui/font/font_eolqem241z66flxr.css" rel="stylesheet" />
    <link href="layui/css/layui.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
</head>
<body class="childrenBody">
    <div class="panel_box row">
        <div class="panel col">
            <a href="javascript:;" data-url="page/message/message.aspx">
                <div class="panel_icon">
                    <i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>
                </div>
                <div class="panel_word">
                    <span><asp:Label ID="message" runat="server" Text="16"></asp:Label></span>
                    <cite>新消息</cite>
                </div>
            </a>
        </div>
        <div class="panel col">
            <a href="javascript:;" data-url="page/user/allUsers.aspx">
                <div class="panel_icon" style="background-color: #FF5722;">
                    <i class="iconfont icon-dongtaifensishu" data-icon="icon-dongtaifensishu"></i>
                </div>
                <div class="panel_word">
                    <span><asp:Label ID="newly" runat="server" Text="5"></asp:Label></span>
                    <cite>新增人数</cite>
                </div>
            </a>
        </div>
        <div class="panel col">
            <a href="javascript:;" data-url="page/user/allUsers.aspx" >
                <div class="panel_icon" style="background-color: #009688;">
                    <i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
                </div>
                <div class="panel_word">
                    <span><asp:Label ID="amount" runat="server" Text="12"></asp:Label></span>
                    <cite>用户总数</cite>
                </div>
            </a>
        </div>
        <div class="panel col">
            <a href="javascript:;" data-url="page/img/images.aspx">
                <div class="panel_icon" style="background-color: #5FB878;">
                    <i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>
                </div>
                <div class="panel_word">
                    <span><asp:Label ID="photograph" runat="server" Text="520"></asp:Label></span>
                    <cite>图片总数</cite>
                </div>
            </a>
        </div>
        <div class="panel col">
            <a href="javascript:;" data-url="page/news/newsList.aspx">
                <div class="panel_icon" style="background-color: #F7B824;">
                    <i class="iconfont icon-wenben" data-icon="icon-wenben"></i>
                </div>
                <div class="panel_word">
                    <span><asp:Label ID="check" runat="server" Text="0"></asp:Label></span>
                    <cite>待审核文章</cite>
                </div>
            </a>
        </div>
        <div class="panel col max_panel">
            <a href="javascript:;" data-url="page/news/newsList.aspx">
                <div class="panel_icon" style="background-color: #2F4056;">
                    <i class="iconfont icon-text" data-icon="icon-text"></i>
                </div>
                <div class="panel_word">
                    <span><asp:Label ID="article" runat="server" Text="0"></asp:Label></span>
                    <cite>文章列表</cite>
                </div>
            </a>
        </div>
    </div>


    <script type="text/javascript" src="layui/layui.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
