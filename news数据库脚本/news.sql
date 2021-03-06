
SET NOCOUNT ON
GO

USE master
GO
if exists (select * from sysdatabases where name='news')
		drop database News
go

DECLARE @device_directory NVARCHAR(520)
SELECT @device_directory = SUBSTRING(filename, 1, CHARINDEX(N'master.mdf', LOWER(filename)) - 1)
FROM master.dbo.sysaltfiles WHERE dbid = 1 AND fileid = 1

EXECUTE (N'CREATE DATABASE news
  ON PRIMARY (NAME = N''news'', FILENAME = N''' + @device_directory + N'news.mdf'')
  LOG ON (NAME = N''news_log'',  FILENAME = N''' + @device_directory + N'news.ldf'')')
go

exec sp_dboption 'news','trunc. log on chkpt.','true'
exec sp_dboption 'news','select into/bulkcopy','true'
GO

set quoted_identifier on
GO
USE [news]
GO
/****** Object:  Table [dbo].[users]    Script Date: 03/11/2015 09:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](10) NULL,
	[password] [nvarchar](10) NULL,
	[sex] [nvarchar](2) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](20) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (1, N'guo', N'123456', N'女', N'aa@163.com', N'87705771')
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (2, N'guojd', N'123456', N'女', N'aa@163.com', N'87705771')
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (3, N'aaa', N'aa', NULL, NULL, NULL)
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (5, N'aab', N'aabbcc', NULL, NULL, NULL)
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (6, N'bb', N'bbbb', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[type]    Script Date: 03/11/2015 09:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[type](
	[typeid] [int] IDENTITY(1,1) NOT NULL,
	[typename] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[type] ON
INSERT [dbo].[type] ([typeid], [typename]) VALUES (1, N'新闻公告')
INSERT [dbo].[type] ([typeid], [typename]) VALUES (2, N'教育咨询')
INSERT [dbo].[type] ([typeid], [typename]) VALUES (3, N'IT技术')
SET IDENTITY_INSERT [dbo].[type] OFF
/****** Object:  Table [dbo].[files]    Script Date: 03/11/2015 09:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[files]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[files](
	[fileid] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](50) NULL,
	[typeid] [int] NULL,
	[filecontent] [nvarchar](max) NULL,
	[publisher] [nvarchar](50) NULL,
	[publishdate] [datetime] NULL,
	[visitnum] [int] NULL,
 CONSTRAINT [PK_files] PRIMARY KEY CLUSTERED 
(
	[fileid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[files] ON
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (1, N'无人驾驶汽车会取代传统汽车吗？', 3, N'无人驾驶汽车是一种智能汽车，也可以称之为轮式移动机器人，主要以车内的计算机系统和雷达系统为主的智能驾驶仪来实现无人驾驶。', N'腾讯IT', CAST(0x0000A3A900000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (2, N'八种最具潜力的K12教育工具', 2, N'在过去的几年中，教育技术已经并将继续在许多方面重塑教学方式。从数字教科书到STEM学科教学平台，到可用于测评和预测学生成绩的深层数据分析工具，教育技术解决了学校教育中的许多问题。', N'腾讯教育', CAST(0x0000A3B000000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (3, N'中国互联网企业逃不出免费的囚笼', 1, N'　　对于中国网民而言，“免费”从来不是一个陌生的词语。从社交网站到杀毒软件，中国网民习惯于使用来自各个网络公司的免费服务；从上市公司到初创企业，中国的互联网公司习惯于提供免费的网络服务。“免费”从一种竞争手段被拔高到了和“互联网思维”相同的企业战略的高度。不可否认，免费的产品深入地变革了中国的互联网商业，也方便了广大中国网民的网络生活。但对于中国的互联网企业而言，长期的“免费”策略，似乎正在构成一个囚笼，而中国的网络公司则正在变成这个“免费”囚笼中的囚徒。', N'腾讯新闻', CAST(0x0000A3B100000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (4, N'智酷调查网络招聘：为什么大家恨它又离不开它', 1, N'临近年底，很多事情在这段时期集中发生。与层出不穷的年会、年终奖相似，跳槽也开始成为年底一项频繁发生的活动。', N'腾讯新闻', CAST(0x0000A3C400000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (5, N'用户最爱招聘网站调查', 1, N'<span id="Body">&nbsp;  <p><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为交流借鉴，不断提高广告设计水平，激发创新活力，培养学生创新设计意识，从而展现自我，增强自信。由国家工商总局批准、中国广告协会主办的大学生广告艺术大型活动已正式开展，此次活动的主题为&#8220;我创意我行动&#8221;。内容涵盖学术研讨、创意大赛、娱乐评选以及人才交流等方面，充分利用各方社会资源，搭建高端选拔平台，注入新鲜娱乐元素，在同类活动中独占鳌头。参赛者为艺术设计在校学生，本次竞赛旨在激发学生创新的意识，培养学生主动学习和积极创新的能力，同时加强和其他外校设计专业之间的学习和交流。</span> </p>  <p><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学院奖是中国大学生广告艺术节中的核心项目，主要内容是：动员全国高校中有广告及相关专业的学生，为中国著名企业做命题创意竞赛活动。该奖项已历经九届，在全国各高等院校中深入人心，且其影响已经从高校延伸至广告行业，成为行业遴选人才，企业获取杰出创意的重要途径。</span> </p>  <p><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中国大学生广告艺术节学院奖启动仪式于<span>2012</span>年<span>10</span>月<span>29</span>日在天津梅江国际会展中心隆重启动，参赛作品上交后，由组委会邀请业内专家组成评委会进行评审，而评审工作已于今年<span>6</span>月在天津财经大学珠江学院圆满结束。历经<span>100</span>多位来自广告公司、高校与企业评委的初评、复评两阶段的严格评定，各项大奖经过激烈角逐后终于尘埃落定。可喜可贺的是在在第十一届&#8220;中国大学生广告艺术节学院奖&#8221;中，由计算机工程系电脑艺术教研室陈少敏老师所指导的学生喜获优秀奖三项、入围奖两项。其中<span>11</span>电脑艺</span><span>术①</span><span>班林贤玉、邓玉丽、<span>11</span>电脑艺</span><span>术②</span><span>班郑馥芬三人分获优秀奖；<span>11</span>电脑艺术</span><span>①</span><span>班谢毅弘、<span>11</span>电脑艺术</span><span>②</span><span>班林少婷两人分获入围奖。颁奖典礼定于在北京中央电视台梅地亚中心隆重举行。</span> </p>  </span>  ', N'新浪新闻', CAST(0x0000A3D900000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (6, N'微信突变！腾讯将深度布局', 1, N'JS SDK 这个概念，其实微博和淘宝的开放平台很早前就有，包括手机 QQ 前段时间也推出了几个增强 API，但都未产生很大的影响。小巫之后终见大巫，这次微信开放的 SDK，站在了另一个高度，web 到底能有多强？', N'腾讯新闻', CAST(0x0000A3E100000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (8, N'被127次掌声打断的浙江大学教授郑强语录', 2, N'<div>1.日本人宁愿喜欢黑人，也不喜欢我们，因为现在的中国人没有了精神。<br />
&nbsp;&nbsp;
<p><span>任务</span><span>1 </span><span>常用在线编辑器介绍</span></p>
<p><span>任务</span><span>2 </span><span>后台管理主页面设计</span></p>
<p><span>任务</span><span>3 </span><span>插入新闻内容</span></p>
<p><span>任务</span><span>4 </span><span>更新修改新闻内容</span></p>
<p><span>任务</span><span>5 </span><span>删除新闻内容</span></p>
</div>
', N'腾讯教育', CAST(0x0000A3FB00000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (9, N'无线充电技术', 3, N'<p><font color="#000000" size="3"><strong>一、&nbsp;概述<br />
</strong>&nbsp;&nbsp;&nbsp;&nbsp; 麻省理工学院的研究团队在2007年6月7日美国《科学》杂志的网站上发表了他们的研究成果。研究小组把共振运用到电磁波的传输上而成功&#8220;抓住&#8221;了电磁波。他们利用铜制线圈作为电磁共振器，一团线圈附在传送电力方，另一团在接受电力方。当传送方送出某特定频率的电磁波后，经过电磁场扩散到接受方，电力就实现了无线传导。这项被他们称为&#8220;无线电力&#8221;的技术经过多次试验，已经能成功为一个两米外的60瓦灯泡供电。目前这项技术的最远输电距离还只能达到2.7米，但研究者相信，电源已经可以在这范围内为电池充电。而且只需要安装一个电源，就可以为整个屋里的电器供电。富士通表示这一系统可以在未来得到广泛应用，例如针对电动汽车的充电区以及针对电脑芯片的电量传输。采用这项技术研制的充电系统所需要的充电时间只有当前的一百五十分之一。<br />
<strong>二、&nbsp;无线充电技术的发展历史<br />
</strong>（一）真实故事<br />
1、19世纪30年，法拉第就发现周围磁场的变化将在电线中产生电流。<br />
2、19世纪90年代，尼古拉&#8226;特斯拉就曾提出无线电力传输的构想。<br />
3、2005年，香港城市大学许树源教授成功研制出&#8220;无线电池充电平台&#8221;，可将数个电子产品放在一充电平台上，不需外接电线，透过低频道电磁场自动充电，充电时间与传统充电器无异。<br />
4、2007年，美国麻省理工学院的马林&#8226;索尔贾希克（Marin Soljacic）等人在无线传输电力方面取得了新进展，他们用两米外的一个电源，&#8220;隔地&#8221;点亮了一盏60瓦的灯泡。<br />
</font></p>
', N'腾讯IT', CAST(0x0000A40B00000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (10, N'国学大师林语堂的英语学习要诀', 2, N'<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 林语堂是中国当代著名学者、文学家、语言学家，著有《京华烟云》等长篇小说文化著作以及英文著作。面对众说纷纭的英语学习理念，林语堂先生有他自己的一套方法，我们不妨来看看他是怎么说的。 </div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
<div align="center"><img border="0" alt="" src="/Web7/uploads/林语堂.png" width="469" height="408" /></div>
<div align="center">国学大师林语堂</div>
<div align="center">&nbsp;</div>
<div align="left"><font color="#000000" size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 作者简介：林语堂，中国当代著名学者、文学家、语言学家。早年留学(课程)国外，回国后在北京大学等著名大学任教，1966年定居台湾，一生著述颇丰，1934年创办《人间世》，出版《大荒集》。1935年创办《宇宙风》，提倡&#8220;以自我为中心，以闲适为格凋&#8221;的小品文，成为论语派主要人物。1935年后，在美国用英文写《吾国与吾民》《风声鹤唳》《孔子的智慧》《生活的艺术》， 林语堂在法国写《京华烟云》等文化著作和长篇小说。</font></div>
', N'新浪教育', CAST(0x0000A41F00000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (11, N'行走的父爱', 2, N'<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;那天，我开车去一个村庄采访，结束时已近黄昏，晚上又有朋友约着吃饭。走到一条僻静的沙石路，远远地，我看见一个矮小的身影。近了，看清是一位老人，佝偻着腰，拄一根拐杖，走起路来十分吃力。我落下车玻璃，说，大爷，你去哪儿？要不要我捎你一程？ </div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#000000" size="3">老人耳朵有些背，明白了我的心意后，满是皱纹的脸上显得很感激。我下车，扶他在后座上坐下。<br />
　 车启动，我才知道我犯了一个错误，老人要去的村子跟我并不顺路，简直就是南辕北辙。可我已经不能把他放下了，只好掉头加速前进，边走边和他拉着家常。 他说，他是去看女儿的，从昨天早晨一直走到现在，也不知怎么回事，这路走起来就这么长。昨晚，他就在一间破屋底下蹲了一夜。<br />
　&nbsp;&nbsp; 我有些惊讶，心想这雷锋还真当着了，要是寒冬腊月，还不得把老人冻死？我回头看了他一眼，大声说，大爷，您是迷路了，这样走下去，再走十天也到不了您女儿家的。<br />
　&nbsp; 老人眯缝着眼，微微地笑着，不住地说着感谢话。<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我说，您女儿家没有电话吗？怎么不叫她来接您呢？您这么大年纪，真走丢了可怎么办哪！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 这一问不打紧，老人干裂的嘴唇动了两下，眼窝里就噙满了泪水。他说女儿病了，家里的人都瞒着他。他一共有六儿一女，女儿最孝顺，每半月必定回来看他跟老伴一次。这次两个月没回来了，他生了疑，后来就偷着听孩子们说话，知道女儿查出得了那种不好的病。<br />
　　他说的不好的病我知道，就是癌症。<br />
　　他怕女儿突然死去，见不到女儿一面。所以就瞒着家人跑出来了，谁知却迷了路。<br />
　&nbsp;&nbsp; 我不由得一阵感慨，说，大爷，您这么一声不响地走了，家里人不知道该多着急呢。您知道家里的电话吗？我先跟他们说一声。<br />
　　他摇了摇头。<br />
　　一个小时后，到了老人说的那个村庄，很顺利，我找到了他的女儿家。<br />
　　他的女儿五十多岁，看上去气色还好。老人一下车，扔掉拐杖就向女儿跑过去，一把抱住她，老泪纵横。（感恩&nbsp; www.lz13.cn）女儿一边抚着他的肩膀，一边用疑惑的眼神问我怎么回事：你怎么把他送到这里的？我家里出了什么事吗？<br />
　　我把事情的原委简单解释一下，说：&#8220;你爸为了来看你，走了两天，昨晚还在一间破屋底下蹲了一夜呢。&#8221;<br />
　　女人听了，顾不上谢我，抱住老人的肩膀，失声痛哭，说：&#8220;爸爸，我没事，真的没事，我给你看病历，医生说只要动个小手术，就没事了，真的，爸爸，我没有骗你&#8230;&#8230;&#8221;<br />
　　老人不信。推开女儿，左看看，右看看，哽咽着说不出话。<br />
　　边上围过几个人，也上前劝慰老人，帮着他女儿解释。<br />
　　我悄悄发动引擎，走了。<br />
　　走出很远了，我的眼前还是闪现着刚才的一幕，我的眼睛不觉湿润了。<br />
　　我拿出手机，辞掉了跟朋友的约会，拨通了父母家的电话。<br />
　　我说，妈妈，是我，你在家等我，一会儿我回去看您跟我爸。<br />
</font></div>
', N'新浪教育', CAST(0x0000A42000000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (12, N'智能电视是未来电视发展的主要趋势', 3, N'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 智能电视 
', N'新浪IT', CAST(0x0000A48300FCC81C AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (20, N'苹果公司的发展历程', 1, N'&nbsp;
<h3><span>1</span><span>、苹果公司总的简介------</span></h3>
<p><span>苹果公司（<span> Apple Inc.</span>）是美国的一家高科技公司，<span>2007</span>年由苹果电脑公司（<span>Apple Computer, Inc.</span>）更名而来，核心业务为电子科技产品，总部位于加利福尼亚州的库比蒂诺。苹果公司由史蒂夫&#183;乔布斯、斯蒂夫&#183;沃兹尼亚克和<span>Ron Wayne</span>在<span>1976</span>年<span>4</span>月<span>1</span>日创立，在高科技企业中以创新而闻名，知名的产品有<span>Apple II</span>、<span>Macintosh</span>电脑、<span>Macbook</span>笔记本电脑、<span>iPod</span>音乐播放器、<span>iTunes</span>商店、<span>iMac</span>一体机、<span>iPhone</span>手机和<span>iPad</span>平板电脑等。它在高科技企业中以创新而闻名。</span></p>
<h3><a name="_Toc28559"></a><a name="_Toc8191"><span><span>2</span></span></a><span><span><span>、苹果<span>logo</span>的由来</span></span></span></h3>
<p><span>说法一：苹果在希腊神话中，是智慧的象征，当初亚当和夏娃就是吃了苹果才变得有思想，现在引申为科技的未知领域。苹果公司的标志是咬了一口的苹果，表明了他们勇于向科学进军，探索未知领域的理想。</span></p>
<p>&nbsp;</p>
<p><span>说法二：苹果最早的徽标是一个牛顿坐在苹果数下读书的图案，后来才改成一个被咬了一口的苹果，是由<span>Regis McKenna</span>公关公司的艺术总监<span>Rob Janov</span>设计的，<span>Janov</span>开始制作了一个苹果的黑白剪影，但是总感觉缺了些什么，&#8220;我想简化苹果的形状，并且在一侧被咬了一口（<span>taking a bite)</span>——<span>a byte</span>（一个字节），对吧，以防苹果看起来象一个西红柿，&#8221;<span>Janov</span>解释道。然后，<span>Javov</span>增加了六条彩色的、水平色条，原始设计有黑色的细线分开不同的颜色条，可以减小印刷时的压印问题，但是<span>Jobs</span>没有同意这个建议。这样就完成了我们今天所熟知的彩色苹果徽标</span></p>
<p>&nbsp;</p>
<p><span>说法三：一位加利福尼亚的小伙子为了纪念图灵，开办了一家公司，而公司的<span>Logo</span>就是图灵死时手里拿着的被咬过一口的苹果，这家公司就是现在很出名的苹果公司，而那个小伙子则是苹果的第一任<span>CEO</span>乔布斯。</span></p>
<h3><a name="_Toc29104"></a><a name="_Toc15317"><span><span>3</span></span></a><span><span><span>、苹果公司背景介绍</span></span></span></h3>
<p><span>苹果公司，原称苹果电脑公司，是全球第一大手机生产商，是全球最大的</span><span>PC</span><span>厂商，也是世界上市值最大的上市公司，其核心业务是电子科技产品。苹果的</span><span>Apple II</span><span>于</span><span>1970</span><span>年代助长了个人电脑革命，其后的</span><span>Macintosh</span><span>接力于</span><span>1980</span><span>年代持续发展。最知名的产品是其出品的</span><span>Apple II</span><span>、</span><span>Macintosh</span><span>电脑、</span><span>iPod</span><span>音乐播放器、</span><span>iTunes</span><span>商店、</span><span>iMac</span><span>一体机、</span><span>iPhone</span><span>手机和</span><span>iPad</span><span>平板电脑等。在高科技企业中以创新而闻名。</span><span>2012</span><span>年</span><span>2</span><span>月底，苹果市值在派息预期的刺激下大涨，一举突破</span><span>5000</span><span>亿美元关口。</span></p>
', N'腾讯新闻', CAST(0x0000A43E0096684C AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (21, N'人工智能的昨天今天和明天', 3, N'&nbsp;
<div><span><span><strong>（一）名字来源</strong></span></span><span><span><br />
<span>&nbsp;&nbsp; </span></span></span><span>&nbsp;</span><span>人工智能，英文单词</span><span>Artilect</span><span>，来源于</span> <span>雨果</span><span>&#183;</span><span>德</span><span>&#183;</span><span>加里斯</span> <span>的著作。</span><span>&#8220;</span><span>人工智能</span><span>&#8221;</span><span>一词最初是在</span><span>1956 </span><span>年</span><span>Dartmouth</span><span>学会上提出的。从那以后，研究者们发展了众多理论和原理，人工智能的</span><span><a href="http://baike.baidu.com/view/45333.htm" target="_blank"><span><span>概念</span></span></a></span><span>也随之扩展。</span><span><br />
</span><strong><span><span><br />
（二）基本定义</span></span></strong></div>
<div><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 著名的美国斯坦福大学人工智能研究中心尼尔逊教授对人工智能下了这样一个定义：</span><span>&#8220;</span><span>人工智能是关于知识的学科</span><span>――</span><span>怎样表示知识以及怎样获得知识并使用知识的科学。</span><span>&#8221;</span><span>而另一个美国麻省理工学院的温斯顿教授认为：</span><span>&#8220;</span><span>人工智能就是研究如何使计算机去做过去只有人才能做的智能工作。</span><span>&#8221;</span><span>这些说法反映了人工智能学科的基本思想和基本内容。即人工智能是研究人类智能活动的规律，构造具有一定智能的人工系统，研究如何让计算机去完成以往需要人的智力才能胜任的工作，也就是研究如何应用计算机的软硬件来模拟人类某些智能行为的基本理论、方法和技术。</span><span><br />
<span>&nbsp;&nbsp;&nbsp; </span></span><span>人工智能从诞生以来，理论和技术日益成熟，应用领域也不断扩大，但没有一个统一的定义。总结看来可以从两方面来概括，一方面从能力方面是指用人工的方法在机器（计算机）上实现智能，或称机械智能。另一方面从学科来看一门研究如何构造智能机器或智能系统，以模拟、延伸和扩展人类智能的学科。</span><span><br />
</span><strong><span><span><br />
（三）研究的目标</span></span></strong></div>
<p><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 人工智能是一门极富挑战性的科学，从事这项工作的人必须懂得计算机知识，心理学和哲学。人工智能是包括十分广泛的科学，它由不同的领域组成，如机器学习，计算机视觉等等，总的说来，人工智能研究的一个主要目标是使机器能够胜任一些通常需要人类智能才能完成的复杂工作。但不同的时代、不同的人对这种</span><span>&#8220;</span><span>复杂工作</span><span>&#8221;</span><span>的理解是不同的。</span><span><br />
<span>&nbsp;&nbsp;&nbsp; </span></span><span>现今能够用来研究人工智能的主要物质基础以及能够实现人工智能技术平台的机器就是计算机，人工智能的发展历史是和计算机科学技术的发展史联系在一起的。除了计算机科学以外，人工智能还涉及信息论、控制论、自动化、仿生学、生物学、心理学、数理逻辑、语言学、医学和哲学等多门学科。人工智能学科研究的主要内容包括：知识表示、自动推理和搜索方法、机器学习和知识获取、知识处理系统、自然语言理解、计算机视觉、智能机器人、自动程序设计等方面。具体概括为：</span><span><br />
</span><span>（</span><span>1</span><span>）通过视觉、听觉、触觉等感官活动，接受并理解文字、图像、声音、语言等各种外界的&#8220;自然信息&#8221;，这就是认识和理解世界环境的能力。</span><span><br />
</span><span>（</span><span>2</span><span>）通过人脑的生理与心理活动以及有关的信息处理过程，将感性知识抽象为理性知识，并能对事物运动的规律进行分析、判断和推理，这就是提出概念、建立方法，进行演绎和归纳推理、作出决策的能力。</span><span><br />
</span><span>（</span><span>3</span><span>）通过教育、训练和学习过程，日益丰富自身的知识技能，这就是学习的能力。</span><span><br />
</span><span>（</span><span>4</span><span>）对变化多端的外界环境条件，如干扰、刺激等作用能灵活地作出反应，这就是自我适应的能力。</span></p>
 ', N'腾讯新闻', CAST(0x0000A43E0097C7DC AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[files] OFF
/****** Object:  Table [dbo].[pinglun]    Script Date: 03/11/2015 09:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pinglun]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pinglun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fileid] [int] NOT NULL,
	[comment] [nvarchar](140) NULL,
	[publishdate] [datetime] NULL,
	[username] [nvarchar](10) NULL,
 CONSTRAINT [PK_pinglun] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[pinglun] ON
INSERT [dbo].[pinglun] ([id], [fileid], [comment], [publishdate], [username]) VALUES (1, 1, N'值得阅读', CAST(0x0000A1F200000000 AS DateTime), N'匿名用户')
INSERT [dbo].[pinglun] ([id], [fileid], [comment], [publishdate], [username]) VALUES (2, 1, N'一般般吧，不是很好', CAST(0x0000A1F300000000 AS DateTime), N'guo')
INSERT [dbo].[pinglun] ([id], [fileid], [comment], [publishdate], [username]) VALUES (3, 2, N'太好了，又放假了', CAST(0x0000A1F300000000 AS DateTime), N'匿名用户')
SET IDENTITY_INSERT [dbo].[pinglun] OFF
/****** Object:  ForeignKey [FK_type_type]    Script Date: 03/11/2015 09:26:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_type_type]') AND parent_object_id = OBJECT_ID(N'[dbo].[type]'))
ALTER TABLE [dbo].[type]  WITH CHECK ADD  CONSTRAINT [FK_type_type] FOREIGN KEY([typeid])
REFERENCES [dbo].[type] ([typeid])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_type_type]') AND parent_object_id = OBJECT_ID(N'[dbo].[type]'))
ALTER TABLE [dbo].[type] CHECK CONSTRAINT [FK_type_type]
GO
/****** Object:  ForeignKey [FK_type_files]    Script Date: 03/11/2015 09:26:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_type_files]') AND parent_object_id = OBJECT_ID(N'[dbo].[files]'))
ALTER TABLE [dbo].[files]  WITH CHECK ADD  CONSTRAINT [FK_type_files] FOREIGN KEY([typeid])
REFERENCES [dbo].[type] ([typeid])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_type_files]') AND parent_object_id = OBJECT_ID(N'[dbo].[files]'))
ALTER TABLE [dbo].[files] CHECK CONSTRAINT [FK_type_files]
GO
/****** Object:  ForeignKey [FK_pinglun_files]    Script Date: 03/11/2015 09:26:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pinglun_files]') AND parent_object_id = OBJECT_ID(N'[dbo].[pinglun]'))
ALTER TABLE [dbo].[pinglun]  WITH CHECK ADD  CONSTRAINT [FK_pinglun_files] FOREIGN KEY([fileid])
REFERENCES [dbo].[files] ([fileid])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pinglun_files]') AND parent_object_id = OBJECT_ID(N'[dbo].[pinglun]'))
ALTER TABLE [dbo].[pinglun] CHECK CONSTRAINT [FK_pinglun_files]
GO
