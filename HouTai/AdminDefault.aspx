<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>高校新闻后台</title>
    <link rel="icon" href="favicon.ico"/>
    <link href="layui/css/layui.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
</head>
<body class="main_body">
    <form id="form1" runat="server">
    <div class="layui-layout layui-layout-admin">
        <!-- 顶部 -->
        <div class="layui-header header">
            <div class="layui-main">
                <a href="#" class="logo"><img src="images/logo.png" /></a>
                <!-- 搜索 -->
                <div class="layui-form component">
                    <select name="modules" lay-verify="required" lay-search="">
                        <option value="">直接选择或搜索选择</option>
                        <option value="1">群发功能</option>
                        <option value="2">自动回复</option>
                        <option value="3">用户管理</option>
                        <option value="4">新闻列表</option>
                        <option value="5">增加新闻</option>
                        <option value="6">图片</option>
                        <option value="7">友情链接</option>
                        <option value="8">设置</option>
                        <option value="9">flow</option>
                    </select>
                    <i class="layui-icon">&#xe615;</i>
                </div>
                <!-- 天气信息 -->
                <div class="weather">
                    <div id="tp-weather-widget"></div>
                    <script>(function (T, h, i, n, k, P, a, g, e) { g = function () { P = h.createElement(i); a = h.getElementsByTagName(i)[0]; P.src = k; P.charset = "utf-8"; P.async = 1; a.parentNode.insertBefore(P, a) }; T["ThinkPageWeatherWidgetObject"] = n; T[n] || (T[n] = function () { (T[n].q = T[n].q || []).push(arguments) }); T[n].l = +new Date(); if (T.attachEvent) { T.attachEvent("onload", g) } else { T.addEventListener("load", g, false) } }(window, document, "script", "tpwidget", "//widget.seniverse.com/widget/chameleon.js"))</script>
                    <script>tpwidget("init", {
    "flavor": "slim",
    "location": "WX4FBXXFKE4F",
    "geolocation": "disabled",
    "language": "zh-chs",
    "unit": "c",
    "theme": "chameleon",
    "container": "tp-weather-widget",
    "bubble": "disabled",
    "alarmType": "badge",
    "color": "#FFFFFF",
    "uid": "U9EC08A15F",
    "hash": "14dff75e7253d3a8b9727522759f3455"
});
                        tpwidget("show");</script>
                </div>
                <!-- 顶部右侧菜单 -->
                <ul class="layui-nav top_menu">
                    <li class="layui-nav-item showNotice" id="showNotice">
                        <a href="javascript:;"><i class="layui-icon">&#xe688;</i><cite>系统公告</cite></a>
                    </li>
                    <li class="layui-nav-item lockcms">
                        <a href="javascript:;"><i class="layui-icon"></i><cite>锁屏</cite></a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <asp:Image ID="picture" runat="server" class="layui-circle" width="35" height="35"/>
                            <cite><asp:Label ID="managename1" runat="server" Text = "未登录"></asp:Label></cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="javascript:;" data-url="page/user/userInfo.aspx"><i class="layui-icon " data-icon="&#xe60a;">&#xe60a;</i><cite>编辑资料</cite></a></dd>
                            <dd><a href="javascript:;" data-url="page/user/changePwd.aspx"><i class="layui-icon " data-icon="&#xe642;">&#xe63c;</i><cite>修改密码</cite></a></dd>
                            <dd><a href="login.aspx" data-url="login.aspx" target="_parent"><i class="layui-icon " data-icon="&#xe643;">&#xe643;</i><cite>退出</cite></a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 左侧导航 -->
        <div class="layui-side layui-bg-black">
            <div class="user-photo">
                <a class="img" title="我的头像"><asp:Image ID="picture1" runat="server" /></a>
                <p><asp:Label ID="lblloginmessage" runat="server" Text = "请退出后管理员登录！！！"></asp:Label></p>
            </div>
            <div class="navBar layui-side-scroll"></div>
        </div>
        <!-- 右侧内容 -->
        <div class="layui-body layui-form">
            <div class="layui-tab marg0" lay-filter="bodyTab">
                <ul class="layui-tab-title top_tab">
                    <li class="layui-this" lay-id=""><i class="iconfont"></i><cite>后台首页</cite></li>
                </ul>
                <div class="layui-tab-content clildFrame">
                    <div class="layui-tab-item layui-show">
                        <iframe src="main.aspx"></iframe>
                    </div>
                </div>
            </div>
        </div>
        <!-- 底部 -->
        <div class="layui-footer footer">
            <div class="bottom">
                <ul>
                    <li>班级：16软件3班</li>
                    <li>学号：1630312</li>
                    <li>姓名：郭俊权</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- 锁屏 -->
    <div class="admin-header-lock" id="lock-box" style="display: none;">
        <div class="admin-header-lock-img"><asp:Image ID="picture2" runat="server" /></div>
        <div class="admin-header-lock-name" id="lockUserName"><asp:Label ID="managename2" runat="server" Text = "未登录状态"></asp:Label></div>
        <div class="input_btn">
            <input type="password" class="admin-header-lock-input layui-input" placeholder="请输入密码解锁.." name="lockPwd" id="lockPwd" />
            <button class="layui-btn" id="unlock">解锁</button>
        </div>
        <p>
            <asp:Label ID="hint1" runat="server" Text="请输入“123456”，否则不会解锁成功哦！！！"></asp:Label></p>
    </div>

    <script type="text/javascript" src="layui/layui.js"></script>
    <script type="text/javascript" src="js/nav.js"></script>
    <script type="text/javascript" src="js/leftNav.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    </form>
</body>
</html>
