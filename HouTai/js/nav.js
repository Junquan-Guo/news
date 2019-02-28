var navs = [{
    "title" : "后台首页",
    "icon": "&#xe63b;",
	"href": "main.aspx",
	"spread" : false
},{
    "title" : "功能",
    "icon": "&#58921;",
    "href" : "",
    "spread" : false,
    "children" : [
		{
		    "title" : "群发功能",
		    "icon": "&#xe611;",
		    "href": "page/message/message.aspx",
		    "spread" : false
		},
		{
		    "title" : "自动回复",
		    "icon": "&#xe60f;",
		    "href": "page/message/messageReply.aspx",
		    "spread" : false
		}
    ]
},{
    "title" : "用户管理",
    "icon": "&#58916;",
    "href": "",
    "spread": false,
    "children": [
		{
		    "title": "用户管理",
		    "icon": "&#xe613;",
		    "href": "page/user/allUsers.aspx",
		    "spread": false
		},{
        "title": "会员管理",
        "icon": "&#xe612;",
        "href": "page/user/addUser.aspx",
        "spread": false
    }
    ]
},{
	"title" : "新闻管理",
	"icon": "&#xe622;",
	"href" : "",
	"spread": false,
	"children": [
    {
        "title": "新闻列表",
        "icon": "&#xe621;",
        "href": "page/news/newsList.aspx",
        "spread": false
    },
    {
        "title": "增加新闻",
        "icon": "&#xe642;",
        "href": "page/news/newsAdd.aspx",
        "spread": false
    }
	]
}, {
    "title": "素材管理",
    "icon": "&#xe609;",
    "href": "",
    "spread": false,
    "children": [

{
    "title": "图片",
    "icon": "&#xe634;",
    "href": "page/img/images.aspx",
    "spread": false
}
    ]
},{
	"title" : "友情链接",
	"icon": "&#xe641;",
	"href": "",
	"spread": false,
	"children": [
		{
		    "title": "友情链接",
		    "icon": "&#xe64c;",
		    "href": "page/links/linksList.aspx",
		    "spread": false
		}
	]
}, {
    "title": "设置",
    "icon": "&#xe614;",
    "href": "",
    "spread": false,
    "children": [
		{
		    "title": "设置",
		    "icon": "&#xe631;",
		    "href": "404.aspx",
		    "spread": false
		}
    ]
}]