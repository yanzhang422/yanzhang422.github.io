---
layout: post
title: "Test Automation Q&A"
date: 2022-07-28
categories: [Quality Assurance, Test Automation]
tags: [qa, test-automation, selenium, interview-questions, testing-fundamentals]
---

# Test Automation Question and Answer
## Selenium
1. 什么是自动化测试、自动化测试的优势是什么？
通过工具或脚本代替手工测试执行过程的测试都叫自动化测试。
- 自动化测试的优势：
a. 减少回归测试成本
b. 减少兼容性测试成本
c. 提高测试反馈速度
d. 提高测试覆盖率
e. 让测试工程师做更有意义的测试

2. 什么样的项目比较适合做自动化测试，什么样的不适合做自动化测试？
- 适合做的项目：
a.项目周期长且相对稳定
b.需要做频繁的冒烟测试
c.需要经常做回归测试
d.需要进行大数据量的数据驱动测试
- 不适合做的项目：
a.项目周期短用例不会多次重复执行
b.被测项目不稳定变化太频繁

3. 说一下开展自动化工作的主要流程是怎样的？
a.选择合适的测试工具
b.定义自动化测试覆盖的范围
c.制定测试计划
d.自动化测试环境搭建
e.脚本开发
f.测试执行
g.测试脚本维护

4. 在制定自动化测试计划的时候一般要考虑哪些点?
a. 选择适合的测试工具或分析当前的工具是否适合新项目
b. 选择合适的自动化测试框架
c. 确定要做自动化测试的范围和不做自动化测试的范围
d. 测试环境的准备与搭建
e. 制定一个粗略的脚本开发的时间表
f. 制定脚本执行的一些策略，如冒烟测试的频率，回归测试的时间点及频率等
g. 定义自动化测试的输出，比如脚本，测试数据，发现的缺陷，测试报告等

5. 编写自动化脚本时的一些规范
a. 统一的命名约定，如用例名，方法名等
b. 良好的脚本注释
c. 遵循代码规范，使用适当的缩进
d. 对异常进行处理

6. 你一般一天能编写多少个自动化脚本?
这个取决于测试用例场景的复杂度，一般一天能写2~5个左右，复杂的话一天只能写一个

7. 做自动化测试时关注的一些指标？
a. 自动化测试用例的覆盖率=自动化测试用例数/所用用例总数，这个比例越高测试反馈越快，成本节约越多
b. 节省的时间成本=手工测试所花的时间-自动化测试所花的时间
c. 自动化测试的投入=开发脚本的投入+脚本维护的投入+工具价格
d. 自动化测试发现的缺陷数，每次回归测试时自动化测试发现的缺陷数及漏测数，反应了自动化用例的有效性
e. 自动化测试投入产出比
ROI=（手工测试的成本-自动化测试成本）/自动化测试成本
ROI如果是负值说明自动化测试的成本未收回，ROI为正值说明自动化测试成本已回收，且值越大说明回报越好

8. 自动化测试可以达到100%的覆盖率吗？
比较难，因为有些用例场景无法被自动化，一些验证易用性友好性的用例不适合做自动化，有些边缘的用例很少被重复执行，从投入产出比来说也不适合做自动化

9. 你们公司开展自动化测试遇到一些什么问题？
a. 项目流程不规范，**项目变动频繁导致自动化用例维护成本高**，解决：深入理解用户需求，规范开发流程，自动化用例先覆盖已经稳定的功能
b. 对自动化期望太高，自动化也是一个逐步完善的过程，不可能一下子完全代替手工
c. 有些自动化工程师的技术能力偏弱，提升编程能力，提升自动化工具使用能力，对新人进行培训等

10. Selenium驱动浏览器使用的协议是什么？
JsonWireProtocol 是通过使用 webdriver 与 remote server 进行通信的 **web service** 协议。通过 http 请求，完成和 remote server 的交互。

11. Selenium工具都包含哪些组件？
a. Selenium WebDriver
If you want to create robust, **browser-based** regression automation suits and tests, scale and distribute scripts across many environments, then you want to use Selenium WebDriver, a collection of language specific bindings to driver a browser
b. Selenium IDE
If you want to create quick bug reproduction scripts, **create scripts** to aid in automation-aided exploratory testing, then you want to use Selenium IDE, a Chrome, Firefox and Edge add-on that will do simple record-and-playback of intractions with the browser
c. Selenium Grid
If you want to scale by distributing and running **tests on several machines** and **manage multiple environments** from a central point, making it easy to run the tests against a vast combination of browser/OS, then you want to use Selenium Grid.

12. Selenium中定位网页元素的**八种方式**？
![Elements](https://img.bosszhipin.com/beijin/cms/9141d4dfc64e045c178efdbf280ffc3d.png)

13. webdriver启动常见的浏览器语句？
    ~~~
    #!/usr/bin/env python
    # -*- coding:utf-8 -*-
    from selenium import webdriver

    driver = webdriver.Chrome()
    driver = webdriver.Firefox()
    driver = webdriver.Ie()
    ~~~

14. 如何选中下拉列表中的下拉选项？
       ~~~
       #!/usr/bin/env python
       # -*- coding:utf-8 -*-
    
       # 通过选项的顺序，第一个为0
       select_by_index(index)
       # 通过value属性
       select_by_value(value)
       # 通过选项可见文本
       select_by_visible_text(text)
       ~~~

15. 如何取消选中下拉列表中的下拉选项？
    ~~~
    #!/usr/bin/env python
    # -*- coding:utf-8 -*-
    
    deselect_by_index(index)
    deselect_by_value(value)
    deselect_by_visible_text(text)
    deselect_all()
    ~~~

16. Selenium如何处理弹窗？
    ~~~
    #!/usr/bin/env python
    # -*- coding:utf-8 -*-
    
    # 确认
    driver.switch_to.alert.accept()
    # 取消
    driver.switch_to.alert.dismiss()
    # 在弹出框输入内容
    driver.switch_to.alert.send_keys("输入数据")
    ~~~

17. Selenium可以处理Windows弹窗吗？
Selenium本身是不可以处理Windows弹窗的，但是Selenium可以借助Autolt小工具来完成对Windows弹窗的操作。

18. 如何判断一个元素在页面上是显示出来的？
webelement类中的is_displayed()方法
本身这个函数用于判断某个元素是否存在页面上（**这里的存在不是肉眼看到的存在，而是html代码的存在**。某些情况元素的visibility为hidden或者display属性为none，我们在页面看不到但是实际是存在页面的一些元素。）

19. Selenium中如何判断元素是否存在？
    ~~~
    #!/usr/bin/env python
    # -*- coding:utf-8 -*-
    
    from selenium.common.exceptions import NoSuchElementException
    
    # 判断元素是否存在
    def isElementPresent(self, by, value):
    try:
    element =self.driver.find_element(by=by, value=value)
    except NoSuchElementException as e:
    # 发生了NoSuchElementException异常，说明页面中未找到该元素，返回False
    return False
    else:
    # 没有发生异常，表示在页面中找到了该元素，返回True
    return True
    ~~~

20. driver.quit()和driver.close()的区别？
driver.close() **仅关闭当前用户正在操作的页面**
driver.quit() **关闭整个浏览器，关闭所有的页面**

21. 自动化测试用例从哪里来？
a. 手工用例中抽取
b. 参考自动化用例的执行策略

22. 常见的自动化测试框架有哪些？
线性脚本框架、基于模块化的框架、库结构框架、数据驱动框架、关键字驱动框架、混合框架等

23. 什么是POM？
POM，中文字母意思是，**页面对象模型**，POM是一种最近几年非常流行的自动化测试模型，或者思想，POM不是一个框架，是一个解决问题的思想。采用POM的目的是为了**解决前端中UI变化频繁**，从而造成测试自动化脚本维护的成本越来越大。
POM主要有以下优点：
a. 把web ui对象仓库从测试脚本分离，业务代码和测试脚本分离。
b. 每一个页面对应一个页面类，页面的元素写到这个页面类中。
c. 页面类主要包括该页面的元素定位，和这些元素相关的业务操作代码封装的方法。
d. 代码复用，从而减少测试脚本代码量。
e. 层次清晰，同时支持多个编写自动化脚本开发，例如每个人写哪几个页面，不影响他人。
d. 建议页面类和业务逻辑方法都给一个有意义的名称，方便他人快速编写脚本和维护脚本。

24. Selenium中如何保证操作元素的成功率？也就是说如何保证我点击的元素一定是可以点击的？
a. 添加元素智能等待时间driver.implicitly_wait(30)
b. try 方式进行 id,name,class,xPath,css selector 不同方式进行定位，如果第一种失败可以自动尝试第二种
c. Selenium 保证元素成功率是通过元素的定位，当然它的定位方法很多，一定能有合适的。但是在自动化工程的实施过程中，高质量的自动化测试不是只有测试人员保证的，**需要开发人员规范开发习惯，如给页面元素加上唯一的 name,id 等**，这样就能大大地提高元素定位的准确性。当然如果开发人员开发不规范，我们在定位元素的时候尽量使用相对地址定位，这样能减少元素定位受页面变化的影响。只要我们元素定位准确，就能保证每一个操作符合预期结果。

25. 如何提高Selenium脚本的执行速度？
**Selenium脚本的执行速度受多方面因素的影响**，**如网速，操作步骤的繁琐程度，页面加载的速度，以及我们在脚本中设置的等待时间，运行脚本的线程数等**。所以不能单方面追求运行速度的，要确保稳定性，能**稳定地实现回归测试才是关键**。
我们可以从以下几个方面来提高速度：
a. 减少操作步骤，如经过三四步才能打开我们要测试的页面的话，我们就可以直接通过网址来打开，减少不必要的操作。
b. 中断页面加载，如果页面加载的内容过多，我们可以查看一下加载慢的原因，如果加载的内容不影响我们测试，就设置超时时间，中断页面加载。
c. 在设置等待时间的时候，可以sleep固定的时间，也可以检测某个元素出现后中断等待也可以提高速度。
d. 配置实现多线程，在编写测试用例的时候，一定要实现松耦合，然后在服务器允许的情况下，尽量设置多线程运行，提高执行速度。

26. 你的自动化用例的执行策略是什么？
自动化测试用例的执行策略是要看自动化测试的目的，通常有如下几种策略：
a. 自动化测试用例是用来监控的，在此目的下，我们就把自动化测试用例设置成定时执行的，比如每五分钟或是一个小时执行一次，在 Jenkins 上创建一个定时任务即可。
b. 必须回归的用例，有些测试用例在产品变动上线之前都需要回归执行，那我们就把测试用例设置成触发式执行，在 Jenkins 上将我们的自动化测试任务绑定到开发的build任务上，当开发人员在测试环境上部署代码的时候，我们的自动化测试用例就会被触发执行。
c. **不需要经常执行的测试用例**，像全量测试用例，我们没有必要一直回归执行，必竟还是有时间消耗的，有些**非主要业务线也不需要时时回归**，这类测试用例我们就**采用人工执行**，在 Jenkins 上创建一个任务，需要执行的时候人工去构建即可。

27. 什么是持续集成？
持续集成源于极限编程(XP)，是一种软件实践，软件开发过程中集成步骤是一个漫长并且无法预测的过程。集成过程中可能会爆发大量的问题，因此集成过程需要尽可能小而多，实际上持续集成讲的是不断的去做软件的集成工作。**持续集成，最简单的形式是包括一个监控版本控制（SVN、Git等）变化的工具，当变化被发觉时，这个工具可以自动的编译并测试你的应用**。

## 接口测试面试题
1. 什么是接口？
接口就是 API，意思是应用程序编程接口。
接口本质上是程序开发的函数和方法，提供参数和返回值。

2. 什么是接口测试？
接口测试是测试系统组件间接口的一种测试，接口测试主要用于检测外部系统和内部系统之间以及各个子系统之间的交互点。**测试的重点是检查数据的交换、传递和控制管理的过程，以及系统间的相互逻辑依赖关系等**。

3. 接口组成的要素有哪些？
接口访问的地址、请求的方法、参数、返回值
a. 接口访问的地址 协议://IP 地址或域名:端口号/应用名/功能名
b. 请求的方法 get、post 等
c. 参数 用户使用接口时，需要向接口提供的数据。
d. 返回值 接口给用户的反馈结果。

4. Python 的 requests 包是干什么的？
requests 是一个 HTTP 库，作用是发送 HTTP 请求，获得响应，往往使用在网络爬虫，接口自动化测试中。

5. 如何使用 Python 的 requests 包？
a. 安装 Python
b. 安装 requests 模块
c. 创建.py 文件
d. 导入 requests 模块
e. 编写 Python 代码
f. 调用 requests 方法

6. 为什么开展接口测试？
**接口测试属于集成测试、测试接入越早，就越能在项目早期发现问题，修复问题成本降低**。
接口测试非常快速，UI 自动化执行一个测试用例 10s 左右，接口用例执行一般毫秒级。

7. 为什么要写接口测试用例？
a. 理清思路，避免漏测和重复测试。
b. 提高测试效率、跟进测试进度、告诉领导做过、跟进重复性工作。
c. 更好的记录问题、发现问题、复现问题、同时这也是接口测试流程中的一个产物。

8. 接口测试用例设计主要考虑哪些？
a. 功能是否正常。
b. 功能是否按照接口文档实现、是否依赖业务、异常情况（参数异常、数据异常）、安全测试等。

9. 接口测试用例包含哪些内容？
用例名称、接口地址、请求方式、前置条件、描述、请求头部、请求参数、状态码、预期返回结果

10. 接口测试如何设计用例？
接口测试一般考虑入参形式的变化和接口的业务逻辑。
一般设计接口测试用例采用等价类、边界值、场景法居多。
接口测试用例设计思路：
a. 接口业务逻辑测试，接口逻辑测试是指根据业务逻辑，输入参数，输出值的描述，对正常输入情况下所得输出值是否正确的测试，也就是测试对外提供的接口服务是否正常。
b. 模块接口测试，模块接口测试是为了保证数据的安全及程序在异常情况下的逻辑正确性而进行的测试模块，接口测试主要包括以下几个方面
    - 鉴权码 token 异常（为空、没有、错误、过期）
    - 其他参数的异常，必填项的检查，参数的长度、类型、格式异常。常规的参数有数字，字符串，日期；参数长度，位数、身份证、电话的长度；参数的类型，数字精度，字母，中文，带空格的参数，特殊字符；日期格式，日期年月日，年月日时分秒，日期格式（包含/-:等）
    - 错误码异常覆盖

11. 通用接口用例设计？
a. 通过性验证：首先肯定要保证这个接口功能是好使的，也就是正常的通过性测试，按照接口文档上的参数，正常传入，是否可以返回正确的结果。
b. 参数组合：现在有一个操作商品的接口，有个字段 type，传 1 的时候代表修改商品，商品 id、商品名称、价格有一个是必传的，type 传 2 的时候是删除商品，商品 id 是必传的，这样就要测参数组合了，type 传 1 的时候，只传商品名称能不能修改成功，id、名称、价格都传的时候能不能修改成功。
c. 接口安全：绕过验证，比如说购买了一个商品，它的价格是 300 元，那我在提交订单时候，我把这个商品的价格改成 3 元，后端有没有做验证，更狠点，我把钱改成-3，是不是我的余额还要增加？绕过身份授权，比如说修改商品信息接口，那必须得是卖家才能修改，那我传一个普通用户，能不能修改成功，我传一个其他的卖家能不能修改成功。参数是否加密，比如说我登陆的接口，用户名和密码是不是加密，如果不加密的话，别人拦截到你的请求，就能获取到你的信息了，加密规则是否容易破解。密码安全规则，密码的复杂程度校验。
d. 异常验证：所谓异常验证，也就是我不按照你接口文档上的要求输入参数，来验证接口对异常情况的校验。比如说必填的参数不填，输入整数类型的，传入字符串类型，长度是 10 的，传 11，总之就是你说怎么来，我就不怎么来，其实也就这三种，必传非必传、参数类型、入参长度。

12. 接口测试报告包含哪些内容？
系统接口概况、测试目的与范围、测试工具与资源、测试记录及结果分析（单场景接口、混合场景接口）、测试结论

13. 测试指标范围包含哪些？
a. 被测接口接收请求和返回报文。
b. 被测接口返回状态、被测接口对应业务逻辑处理、涉及数据沉淀的处理、复杂场景下多个接口串联交互。

14. 做接口测试运用过哪些测试工具？
a. Postman
b. JMeter
c. SoapUI
d.Python + requests
e. Java + HttpClient
f. Java + OkHttp

15. 抓包工具用过哪些？
a. Fiddler
b. Charles
c. Wireshark

16. 为什么进行抓包测试？
有些时候公司没有标准的接口文档，测试人员只能抓包来获取接口信息。
抓包可以迅速找到请求，通过抓包可以查看整个请求过程，以及响应过程，可以通过抓包来分辨前台还是后台 bug。通过抓包，可以查看是否有敏感信息泄露，比如用户密码和个人账号信息等数据。通过抓包进行测试，拦截请求，修改请求数据，查看对应响应结果，抓包本身就是接口测试的一部分。

17. TCP/IP 参考模型有哪几层？
应用层、传输层、网络层、网络接口层

18. 常用协议的端口号？
a. 21/tcp FTP 文件传输协议
b. 22/tcp SSH 安全登录、文件传送（SCP）和端口重定向
c. 23/tcp Telnet 不安全的文本传送
d. 25/tcp SMTP Simple Mail Transfer Protocol（E-mail）
e. 69/udp TFTP Trivial File Transfer Protocol（微型文件传输协议）
f. 80/tcp HTTP 超文本传送协议（WWW）
g. 110/tcp POP3 Post Office Protocol（E-mail）
h. 443/tcp HTTPS used for securely transferring web pages
i. 3389/tcp 远程访问 5631/tcp
j. 5632/udp pcanywhere 端口号
k. 1433 SqlServer 服务端口号
l. 1521 Oracle 服务端口号
m. 3306 Mysql 服务端口号
n. 8080 Tomcat 默认服务端口号

19. 常见的状态码有哪些？
a. 1XX 信息提示，用于指定客户端相应的某些动作。
b. 2XX 成功，用于表示请求成功。
c. 3XX 重定向，用于移动的文件并且常被包含在定位头信息中制定的新的地址信息。
d. 4XX 客户端错误，用于指出客户端的错误。. 
e. 5XX 服务器错误，用于指出服务器的错误。

20. 你们公司的接口测试流程是怎样的？
a. 从开发中取得接口文档，了解接口业务，主要包括接口地址、请求方式、入参、出参、返回格式等信息。
b. 使用 Jmeter 进行接口测试，创建一个线程组，然后建立一个 http 请求默认值，再新建很多 http 请求，一个请求是一个用例，输入相应接口路径、访问方式、参数等，创建断言和察看结果树。
c. 最后调用并执行测试用例，编写测试报告。
d. 在做接口测试的时候遇到过很多问题，都是自己独立解决的，比如返回值乱码（修改 Jmeter 的配置文件为 UTF-8）。

21. 请详细阐述接口测试和 UI 测试在测试活动中是如何协同测试的？
接口测试和 UI 测试这两块其实是有一部分是重叠的，**UI测试是通过前端写的界面来调用接口**，而**接口测试是直接调接口**。所以排除前端的处理的逻辑和调用的正确性，在理论上接口测试是可以覆盖所有的 UI 测试。但实际过程中，如果只是在接口层覆盖所有的业务流，在 UI 上只测试前端的逻辑，最终的结果可能会是忽视很多原有的功能点，导致了 UI 测试的不充分。所以存在多人分工且时间充分的时候可以尝试接口去做业务流的全覆盖，否则不要轻易尝试。

22. 接口测试注意事项？
a. 改变请求参数，看响应结果是否和接口文档一致。
b. 查看参数是否有敏感信息（比如个人账户信息，资金信息）。
c. 查看是否对关键参数进行加密处理（密码信息）。
d. 所有列表页接口必须考虑排序值。
e. 接口返回的图片地址能否打开，图片尺寸是否符合需求.
f. 接口有翻页时，页码与页数的异常值测试。
g. 当输出参数有联动性时，需要校验返回两参数的实际结果是否都符合需求每个接口入参的默认值、异常类型、非空校验。
10. 入参支持多个值时，要考虑传的值的个数多的情况下，接口会不会报错。

23. 接口测试执行中对比数据库吗？
肯定要对比，因为接口返回值的数据来源于数据库，接口对数据的操作还要进行深层次的数据库检查。

24. 请简述一下 cookie、session 以及 token 的区别？
**cookie 数据存放在客户的浏览器上**、**session 数据放在服务器上**、**token 是接口测试时鉴权码**，一般情况下登陆后才可以获取到 token，然后在每次请求接口时需要带上 token 参数。
**cookie 不安全**，别人可以分析存在本地的 cookie 并进行 cookie 欺骗，**考虑到安全应当使用 session 可以将登录信息等重要信息存放为 session**，其他信息可以保存在 cookie。

25. 谈谈你对 HTTP 协议的了解？
超文本传输协议，端口为 80，是由请求和响应两部分组成的。
请求是由请求头，请求行，请求正文组成；响应是由响应头、响应行、响应正文组成。
面向安全的话使用 https。

26. 你对 http 请求跟 webservice 请求的了解？
a. **http api 接口**：是**走 http 协议**，通过路径来区分调用的方法，**请求报文都是 key-value 形式**的，**返回报文一般都是 json 串**，**有 get 和 post 等方法**，这也是最常用的两种请求方式。**可以使用的工具有 postman、RESTClient、jmeter、loadrunner 等**。
b. **webservice 接口**：是**走 soap 协议通过 http 传输**，**请求报文和返回报文都是 xml 格式的**，都是通过工具才能进行调用与测试。**可以使用的工具有 SoapUI、jmeter、loadrunner 等**。

27. 在接口测试中关联是什么含义？如何使用 Postman 设置关联？
**关联就是把上一个接口返回值的部分截取出来，作为下一个接口的参数，能让接口串联运行**。
在 Postman 中设置关联的步骤如下：
a. 通过正则表达式提取的方式或 json 取值的方式把下一个接口需要的信息从上一个接口截取出来。
b. 使用设置全局变量的代码把取出来的值保存到全局变量里。
c. 在下一个接口中，使用(全局变量)代替要替换的静态值。

28. 接口自动化测试框架一般分为几层？
**自动化测试框架一般分为 5 层（配置层，脚本层，数据层，测试报告层，驱动层）**
接口项目工程规划大致可分为几类，首先是测试结果类，比如说叫 test_rusult，里面存放一些比如日志文件，测试报告。然后是测试用例 testcase，里面分模块存放测试用例。接下来是公共方法类，比如说叫 public，或者是 tools，里面存放一些，读取 excel 数据的方法，发送 http 请求的方法，收集 log 日志的方法，发送邮件，操作数据库等方法。还有就是配置文件类，比如说叫 config，里面存放一些指定运行部分用例的配置文件，连接数据库的配置文件。最后是写一个 run 方法，运行所有的用例。

29. 测试框架里如何做到数据和代码分离？
第一种：写在 excel 表格里，像这种主要是读取 excel 数据有点麻烦，常用的用来读取 excel 的第三方库有 openpyxl，xlrd 等。当然**读取 excel 数据最好用的还是用来做数据分析的 pandas 模块，不用写那么多 for 循环**。
第二种：数据存放到 yaml 文件里，一个模块或者是一个功能写一个 yaml 文件，最后写个读取 yaml 文件的公共方法就行了。yaml 格式的文件比较简单。
第三种：存放在数据库里面。
第四种：数据存放在 json 文件里。

## 性能测试面试题
具体可以点击[Link](https://youle.zhipin.com/articles/ff2f678c7cdf78eaqxB53to~.html/?fromPage=%2Fsearch%2F%3Aid%3F)

## 接口测试面试题
具体可以点击[Link](https://youle.zhipin.com/articles/027c6b60bc03d82eqxB539o~.html)

## 6大常见的测试用例设计面试题
具体可以点击[Link](https://youle.zhipin.com/articles/2c6cba60fc630770qxB-2tg~.html)

## linux 测试相关面试题
具体可以点击[Link](https://youle.zhipin.com/articles/aabc33241dc99ca4qxB_3ts~.html)

## APP 测试高频面试题
具体可以点击[Link](https://youle.zhipin.com/articles/da9070b065b166f1qxB-2N8~.html)

## 11 道功能测试高频面试题
具体可以点击[Link](https://youle.zhipin.com/articles/42843dfa0b990964qxB42tU~.html)

## 68 道测试面试题：含测试理论、服务端测试、自动化……
具体可以点击[Link](https://youle.zhipin.com/articles/c662f701806a66deqxBz29Q~.html)

## 10 道测试理论常问面试题，你都掌握了吗？
具体可以点击[Link](https://youle.zhipin.com/articles/2e501310bbef61d3qxB-39U~.html)

## 测试常问面试题，你会几个？
具体可以点击[Link](https://youle.zhipin.com/articles/efbab283af2b6fccqxB82Ng~.html)

## 测试面试题集-网络基础
具体可以点击[Link](https://youle.zhipin.com/articles/80a115330c3b0435qxB_2to~.html)

## 道测试高频面试题：含测试用例、测试方法、缺陷优先级原则
具体可以点击[Link](https://youle.zhipin.com/articles/41c5a816f608e0caqxB7094~.html)

## 测试面试题集-生活物品测试：杯子、伞、钢笔、桌子
具体可以点击[Link](https://youle.zhipin.com/articles/542abee434d22a24qxB929o~.html)

## 测试面试题集：如何回答逻辑推理类面试题？
具体可以点击[Link](https://youle.zhipin.com/articles/a364b99f9c040abeqxB93ds~.html)

## 软件测试面试题之基础理论
具体可以点击[Link](https://youle.zhipin.com/articles/ed79566cfa06c088qxB739W0.html)

   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
