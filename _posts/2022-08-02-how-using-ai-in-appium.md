---
layout: post
title: "How using AI in Appium"
date: 2022-08-02
categories: [Quality Assurance, AI & Machine Learning]
tags: [appium, ai, mobile-testing, test-automation, machine-learning]
---

# Appium + Test.ai for Appium AI testing
通过与Test.ai的团队合作，Appium项目开发了一个AI驱动的元素查找插件[Appium Classifier Plugin](https://github.com/testdotai/appium-classifier-plugin)，专门用于Appium.

在Appium的最新版本中，为第三方开发人员添加了为Appium创建“插件”的能力。借助这种能力，开发了上述插件Appium Classifier Plugin，这插件可以使用Appium驱动程序以及其自己的独特功能来查找元素。正如下面脚本示例所展示的，用户可以通过在其Appium目录中将插件作为NPM模块安装，然后使用customFindModules功能向Appium服务器注册插件来访问这些插件。

Appium Classifier Plugin是结合了**Test.ai的机器学习模型**，用于对应用程序图标进行分类，完成移动应用App界面的新元素查找。这个机器学习模型的训练数据是开源的，它可以告诉我们，给定图标的输入，图标代表什么样的东西（例如，购物车按钮或后退箭头按钮）。我们可以使用此插件根据其外观在屏幕上查找图标，即通过视觉外观查找元素，因此它仅适用于显示单个图标的元素。幸运的是，这些元素在移动应用程序中非常常见。

在许多情况下，**这种方法比现有定位器策略（如可访问性ID或图像）更灵活**，**因为AI模型经过训练以识别图标而无需任何上下文**，并且不要求进行图像样式的精确匹配，这意味着使用插件查找“购物车”图标可以跨应用程序和跨平台工作，而无需担心细微差别

让我们来看一个具体的例子，展示最简单的用例。如果启动iOS模拟器，则可以访问App程序Photos，其外观如下所示
![Appium launch iOS APP](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FdaibD31h2CBSw679F1pbsT77ZZfNnRca1Kpd0cBwNtwB9qrICuMicARvsPrlu5xibK6wQlia90kibYvGA/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

注意顶部附近的搜索小图片图标，点击后会打开一个搜索栏：
![Appium Search icon](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FdaibD31h2CBSw679F1pbsT7sv7LssKbLRwrCyrCmiblgyBw4xRjfhRNaKDBLs1PMaGSpVeulPAL7gQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
下面，就让我们编写一个使用新插件查找并单击该图标的测试。首先，我们需要遵循插件自述文件中的设置说明，以确保一切正常。然后，我们可以设置我们的Desired Capabilities以针对App Photos进行测试：
~~~
DesiredCapabilities caps = new DesiredCapabilities（）;
caps.setCapability（“platformName”，“iOS”）;
caps.setCapability（“platformVersion”，“11.4”）;
caps.setCapability（“deviceName”，“iPhone 6”）;
caps.setCapability（“bundleId”，“com.apple.mobileslideshow”）;
~~~
现在我们需要添加一些新功能：**customFindModules（告诉Appium我们想要使用的AI插件）**和**shouldUseCompactResponses（在插件设置说明中要求设置此功能）**：
~~~
HashMap <String，String> customFindModules = new HashMap <>（）;
customFindModules.put（“ai”，“test-ai-classifier”）;
caps.setCapability（“customFindModules”，customFindModules）;
caps.setCapability（“shouldUseCompactResponses”，false）;
~~~
在这里，可以看到**customFindModules是一种具有一些内部结构的功能**：在这种情况下，“ai”是在测试中可以内部使用的插件的快捷方式名称，“test-ai-classifier”是完全限定的引用，当我们用它请求元素时，Appium需要能够找到并使用该插件。
一旦我们完成了所有这些，找到元素非常简单：
~~~
driver.findElement（MobileBy.custom（ “ai:search”））;
~~~
在这里，**我们使用新的自定义定位器策略，以便Appium知道我们需要一个插件，而不是其支持的定位器策略之一**。然后，我们在选择器前面加上ai：让Appium知道我们要为这个请求特别使用哪个插件（因为可能有多个）。当然，因为我们实际上只使用一个插件进行此测试，所以我们可以取消前缀：
~~~
driver.findElementByCustom（ “search”）;
~~~
**注意**：要在Java客户端代码中获取这些命令，需要使用未发布的客户端新版本，请参阅Appium Pro build.gradle以了解如何执行此操作
目前**该技术在当前具有一些显着的局限性**，例如**只能可靠地找到作为模型已被训练检测的图标之一的元素**。最重要的是，**这个过程相当慢**，无论是在插件代码中（因为它必须检索屏幕上的每个元素以便将信息发送到模型中），以及模型本身。然而，所有这些领域将来会有所改善。即使这个特定的插件对你的日常工作没有价值，它也证明了AI在测试空间中的具体应用不仅是可能的，而且是实际的！

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
