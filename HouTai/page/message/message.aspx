<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="page_message_message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>消息列表</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../layui/font/font_eolqem241z66flxr.css" media="all" />
    <link rel="stylesheet" href="../../css/message.css" media="all" />
</head>
<body class="childrenBody">
    <form class="layui-form" runat="server">
        <blockquote class="layui-elem-quote news_search">
            <div class="layui-inline selectMsg">
                <select name="msgColl" lay-filter="selectMsg">
                    <option value="0">全部</option>
                    <option value="1">已收藏</option>
                </select>
            </div>
        </blockquote>
        <table class="layui-table msg_box" lay-skin="line">
            <colgroup>
                <col width="45%"/>
                <col width="25%"/>
                <col width="15%"/>
                <col/>
            </colgroup>
            <tbody class="msgHtml"></tbody>
        </table>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="message.js"></script>
</body>
</html>
