<%@ Page Language="C#" AutoEventWireup="true" CodeFile="linksList.aspx.cs" Inherits="page_links_linksList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>链接列表</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../layui/font/font_eolqem241z66flxr.css" media="all" />
    <link rel="stylesheet" href="../../css/news.css" media="all" />
</head>
<body class="childrenBody">
    <form id="Form1" runat="server">
        <blockquote class="layui-elem-quote news_search">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入关键字" class="layui-input search_input"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="查询" class="layui-btn search_btn"/>
            </div>
            <div class="layui-inline">
                <a class="layui-btn linksAdd_btn" style="background-color: #5FB878">添加链接</a>
            </div>
            <div class="layui-inline">
                <asp:Button ID="Button3" runat="server" Text="批量删除" class="layui-btn layui-btn-danger batchDel"/>
            </div>
        </blockquote>
        <div class="layui-form links_list">
            <table class="layui-table">
                <colgroup>
                    <col width="50" />
                    <col width="30%" />
                    <col />
                    <col />
                    <col />
                    <col />
                    <col />
                    <col width="13%" />
                </colgroup>
                <thead>
                    <tr>
                        <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"></th>
                        <th style="text-align: left;">网站名称</th>
                        <th>网站地址</th>
                        <th>站长邮箱</th>
                        <th>添加时间</th>
                        <th>展示位置</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody class="links_content"></tbody>
            </table>
        </div>
        <div id="page"></div>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="linksList.js"></script>
</body>
</html>
