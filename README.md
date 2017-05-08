# 基于ssm的场地管理系统


--------

## 目录

[TOC]

---

## 项目介绍（需求说明）
+ 这是我的spring + springmvc + mybatis的练手项目（也是对一个毕业设计题目的实现）

+ 该《场所借用管理系统》针对的用户是校园师生和学生班级，社团等，场所主要有教室，实验室，广场，大礼堂，多功能媒体厅，相应的需求有：

1.	**能够添加，修改，删除和查询场所的信息和状态，是管理者方便有效地进行操作和管理**，这主要包括：
a)	场所信息的添加，删除，和修改
b)	按场所名称或编号进行检索
c)	对所有场所借用的情况进行统计

2.	**能够对一定数量的用户进行相应的信息存储与管理**，这其中包括：
a)	用户注册，用户信息查询和修改

3.	**能够对各场所的借用手续的进行在线办理**，（注：这四种地方借用面向的人群是不同的）这其中包括：
a)	对教室的借用手续办理（面向学生，班级，社团，学院等）
b)	对实验室的借用手续办理（面向教师）
c)	对大礼堂和学术报告厅的借用手续办理（面向学院。。）
d)	对公共广场的借用手续办理（面向社团）
e)	使用完场所后可进行归还场所

4.	**管理者后台对申请表的管理**，这主要包括：
a)	审核申请者的身份和申请信息
b)	决定是否批准申请

5.	**大礼堂和学术报告厅活动定期预告**，例如讲座，文艺汇演等活动
6.	**实现对一些活动在线预订入场劵与座位服务**，包括余票查询
7.	**对相关活动的设置有评论和交流专区**（交流专区为弹幕的形式）
8.	**能够提供一定的安全机制，提供数据信息授权访问，防止随意删改，同时提供信息备份的服务**



## 使用到的技术及插件
+ 前端：html,css,bootstrap,jquery
+ 前端插件：jquery.cropper.js（上传用户头像）、jquery.fileInput.js（上传图片）、jquery.toast.js（toast效果的通知）、jquery.barrager.js（弹幕）
+ 后端：spring,springmvc,mybatis

## 环境及使用说明
+ 环境：
    1. tomcat： 8.0.37
    2. JDK：8
	3. 数据库：mysql
+ 使用：将space_sm.sql导入数据库 --》导入eclipse --》 设置JRE，JDK，tomcat路径 --》 修改db.properties中的数据库信息后 就可以启动了
    
## 主要功能及实现思路

+ 前台用例图

<img src="image/1userCase.png"/>


## 实现结果截图

+ 主页
![此处输入图片的描述][1]

+ 活动详情页
![此处输入图片的描述][2]
![此处输入图片的描述][3]
![此处输入图片的描述][4]
![此处输入图片的描述][5]

+ 申请场地主页
![此处输入图片的描述][6]

+ 个人信息管理主页
![此处输入图片的描述][7]


  [1]: image/1.png
  [2]: image/2.png
  [3]: image/3.png
  [4]: image/4.png
  [5]: image/5.png
  [6]: image/7.png
  [7]: image/6.png