# postman使用介绍
## 用途
* API-Client  
 Quickly and easily send [REST](#1rest),[SOAP](#2soap) and GraphQL requests directly within Postman
* Automated Testing
 Automate manual tests and integrate them into your CI/CD pipeline to ensure that
 any code changes won't break the API in production.
* Design & Mock 
Communicate the expected behavior of an API by simulating endpoints and their reponses
 without having to set up a backend server.
* Documentation
Generate and publish beautiful, machine-readable documentation to make your API easier
 to consume.
* Monitors
Stary up-to-date on the health of your API bu checking performance and reponse  
thies at scheduled intervals.
* Workspaces
Provide a shared context for building and consuming APIs, nad collaborate in real-time
with  built-in version.



##### 附录
###### [1]:REST  
[表现层状态转换](https://zh.wikipedia.org/wiki/%E8%A1%A8%E7%8E%B0%E5%B1%82%E7%8A%B6%E6%80%81%E8%BD%AC%E6%8D%A2)（英语：Representational State Transfer，缩写：REST）是Roy Thomas Fielding博
士于2000年在他的博士论文中提出来的一种万维网软件架构风格，目的是便于不同软件/程序在
网络（例如互联网）中互相传递信息。表现层状态转换是根基于超文本传输协议(HTTP)之上而确定
的一组约束和属性，是一种设计提供万维网络服务的软件构建风格。符合或兼容于这种架构风格
(简称为 REST 或 RESTful)的网络服务，允许客户端发出以统一资源标识符访问和操作网络资源
的请求，而与预先定义好的无状态操作集一致化。因此表现层状态转换提供了在互联网络的计算
系统之间，彼此资源可交互使用的协作性质(interoperability)。相对于其它种类的网络服务，
例如 SOAP服务则是以本身所定义的操作集，来访问网络上的资源。
当前在三种主流的Web服务实现方案中，因为REST模式与复杂的SOAP和XML-RPC相比更加简洁，越来越多的web服务开始采用REST风格设计和实现。例如，Amazon.com提供接近REST风格的Web服务运行图书查询；雅虎提供的Web服务也是REST风格的
###### [2]:SOAP    
SOAP（原为Simple Object Access Protocol的首字母缩写，即简单对象访问协议）是交换数据
的一种协议规范，使用在计算机网络Web服务（web service）中，交换带结构信息。SOAP为了简
化网页服务器（Web Server）从XML数据库中提取数据时，节省去格式化页面时间，以及不同应用
程序之间按照HTTP通信协议，遵从XML格式执行资料互换，使其抽象于语言实现、平台和硬件。
此标准由IBM、Microsoft、UserLand和DevelopMentor在1998年共同提出，并得到IBM，莲花（Lotus）
，康柏（Compaq）等公司的支持，于2000年提交给万维网联盟（World Wide Web Consortium；W3C）
，目前SOAP 1.1版是业界共同的标准，属于第二代的XML协定（第一代具主要代表性的技术为XML-RPC
以及WDDX）
