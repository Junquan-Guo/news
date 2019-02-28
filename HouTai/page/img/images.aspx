<%@ Page Language="C#" AutoEventWireup="true" CodeFile="images.aspx.cs" Inherits="page_img_images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>图片总数</title>
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="../../css/images.css" media="all" />
</head>
<body class="childrenBody">
    <form class="layui-form">
        <blockquote class="layui-elem-quote news_search">
            <div class="layui-inline">
                <input type="checkbox" name="selectAll" id="selectAll" lay-filter="selectAll" lay-skin="primary" title="全选"/>
            </div>
            <div class="layui-inline">
                <a class="layui-btn layui-btn-danger batchDel">批量删除</a>
            </div>
        </blockquote>
        <ul id="Images"></ul>
    </form>
    <script type="text/javascript" src="../../layui/layui.js"></script>
    <script type="text/javascript" src="images.js"></script>
</body>
</html>
