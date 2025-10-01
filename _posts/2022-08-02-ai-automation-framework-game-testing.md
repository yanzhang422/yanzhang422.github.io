---
layout: post
title: "AI Automation Framework for Game Testing"
date: 2022-08-02
categories: [Quality Assurance, AI & Machine Learning]
tags: [game-testing, ai, automation, computer-vision, image-recognition]
---

# Game Test AI Automation Framework
## Game AI SDK
游戏的自动化测试是最难实现自动化测试的应用，没有“之一”，所以之前主要靠玩家、众测。在AI时代，游戏测试也是最早去采用AI技术为测试服务的，几年前就有介绍，之后网易也开源了[Airtest project](https://airtest.netease.com/)，今天我们了解一下腾讯互娱 **Turing Lab**在这方面做的工作。 

### 概述
**在自动化测试领域，针对游戏场景的自动化是一个难点**，目前还没有通用的技术方案。这是由于游戏是高度个性化的产品，不同品类游戏玩法差异极大。每款游戏通常都是独立设计开发，游戏开发商也不对外暴露统一的接口，这也意味着传统的基于 API 接口进行自动化的方案在游戏领域并不通用。此外，期待游戏开发商对外提供统一的自动化接口，也是件不现实的事情。

**为了支持游戏场景的自动化，基于图像识别和游戏AI等方面技术**，腾讯 Turing Lab 开发了**基于游戏图像的 AI 自动化框架——Game AI SDK** 。整个方案不依赖游戏开发商提供任何 API 接口，**以游戏图像作为输入，以触屏操作为输出**，类似于我们人类玩游戏的过程。如图1所示：
![Turing Lab](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7mZyhaEoOlTTpllSSAHghibubwShHbNew8fibRFEdKCgrKI8VcgHiaMDBbw/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
目前 Game AI SDK 已经在多个品类多款游戏的自动化测试上进行了验证和应用，并取得了良好的效果。一个典型的 AI SDK 应用如图2所示：
![Game AI SDK](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7mQYI7OJ13wqL3gZHTFHXLOrcKh4ZhtzibrvrMa8ssbPm63ThdSTg4FAg/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
- 左侧为游戏终端设备，运行待自动化测试的游戏
- 右侧为游戏自动化框架AI SDK, 根据输入图像决策游戏操作
- AI Client连接了游戏终端设备和AI SDK，从终端设备上实时获取游戏图像，并将AI SDK决策的游戏操作转换为触屏操作

### AI SDK架构介绍
**技术架构**
AI SDK 整体技术框架如下图3所示，主要包含 IO Service 、Manager Center 、UI 自动化、游戏场景识别、AI 自动化等几个模块：
![AI SDK Architecture](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbcOIHmXdScCELghyzdfsRtsfy78yEwLYPqTUZ226Adx9aTiaVAuXMveicdkfjo464Om5DR1aRibDvUKw/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
各模块的核心功能如下：
- **IO Service**
负责AI SDK的输入输出控制，输入为游戏图像，输出为点击、滑动等游戏操作。同时还负责AI SDK内部服务状态的上报
- **Manager Center**
从IO Service接收输入图像，分发给UI自动化模块或AI自动化模块，并转发UI自动化和AI自动化的游戏动作输出；同时还负责AI SDK服务状态的异常监控等
- **UI自动化**
- 通过图像识别算法，识别游戏图像中用户配置的UI按钮或弹窗，并根据用户配置的UI操作，决策出该如何进行UI自动化流程，并最终进入游戏场景中。
- 游戏场景识别
根据用户定义的场景识别配置文件，识别游戏场景内的游戏元素（敌人、血条、技能状态、数字等）。**场景识别的各项游戏元素的结果将作为特诊数据数据给AI自动化模块**，具体需要识别哪些游戏元素，根据AI需求自行定义。
- AI自动化
根据场景识别后得到的特征数据，进行AI决策，输出游戏操作，游戏操作通常为点击某个像素、在某像素区间滑动。

### 数据流程
**AI SDK 自动化流程可分为游戏 UI 自动化和游戏场景自动化两个阶段**，UI 自动化根据用户配置定义进入特定游戏场景，游戏场景自动化则在游戏场景中进行战斗、驾驶、升级等各项游戏自动化操作。两个阶段可以不断循环重复，每个阶段的数据流程如图所示：
![AI SDK data flow](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7m2IrWEia7urGPgsAjkfPnNC32mvVsOtBTlTUXJ73RzTkicF1ZLYL23r9A/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
1. 游戏 UI 自动化阶段：
- AI Client 从手机端获取游戏图像后，经过1、2、3步骤将图像发送给UI自动化模块
- AI自动化模块识别UI界面中的按钮或弹窗，决策出需要进行的UI操作，并经过4、5、6步骤将UI动作输出至AI Client
- 经过若干次UI自动化操作后，游戏从UI场景进入到游戏场景，进入游戏场景自动化阶段
2) 游戏场景自动化阶段：
- AI Client从手机端获取游戏图像，经过1、2、7步骤将图像发送给游戏场景识别模块，并识别出游戏场景中各项游戏元素
- AI自动化模块经步骤8获取到识别结果后，根据游戏AI算法或特定逻辑规则决策出AI动作，经9、10、11步骤将AI动作输出至AI Client
经过一段时间的游戏场景自动化操作，游戏场景结束，又返回到UI自动化阶段。

### 游戏场景自动化
由于游戏品类比较多，从格斗游戏、赛车游到 FPS 射击游戏，不同游戏场景的游戏玩法差异极大；游戏画面中的元素包括敌人、道具、怪物甚至卡牌，不同游戏画面中需要识别的游戏元素也存在极大差异。能够适用于多种游戏场景的自动化是 AI SDK 的核心功能，下面主要介绍 AI SDK 针对游戏场景的自动化方案。
1. 游戏场景识别
**游戏场景识别模块中提供了模板匹配、梯度模板匹配、特征点匹配、目标检测、深度神经网络等多种算法**，识别游戏场景中的游戏元素，并对外输出图像识别结果。具体识别哪些元素，用户由场景识别配置文件自行定义。在 AI SDK 的场景识别中，主要将游戏中需要识别的元素分为以下几类：
- 固定物体目标
主要采用各种模板匹配算法检测游戏场景中的固定目标物，如游戏中的按钮、图标、技能状态等。该方法会返回场景中检测到的目标物以及像素坐标。
![AI SDK 固定物体检测](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7mBWhxkw57KqINTI1b0jFHymdPFnmHqpUFVyoDI9bSicicPbjeCAJh1twQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
- 形变物体目标
主要采用卷积神经网络检测游戏场景中的图像形状易发生变化的目标物，如游戏角色、建筑物、车辆、怪物等。该方法会返回场景中目标物的位置及类别。
![AI SDK 变形物体](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7mKDaT3NWB7hmfzrqZRgWfOEPH7E3rsgTXxywuZ4vnXo8UV7iciaS1ibKxQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
- 像素目标
检测出游戏图像监测区域内满足特定条件的像素点，该方法会返回符合条件的所有像素点集合。
![AI SDK for RGB pixel](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7m1pw7PUkD1Cx3mIeKGIdZdhmO77ylTQicDs18zvGIUQUVziczc8qF6qvw/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
- 数字
该方法会返回游戏场景中监测区域内的数字和其所在的像素位置等信息
![AI SDK for numbers](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7m485jKzywzl7SA4bj6LmdNAia8x1puEb9kMwicwsFsTp9Gbum4Q8Pw1tQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
- 血条
该方法会返回游戏场景中检测区域内的血量百分比和血条位置等信息
![AI SDK for 血条](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7mFxEJY8KrnClYyKr0IQQiapVBTRztdKAibH0J7e3giag3ibYMBib7O0K04Lw/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
在实际应用中，通常我们将一个目标物和几个同类别的目标物定义为一个 task 任务，一个复杂的游戏场景可能包含几十个需要识别的 task 任务。要完成一次场景识别，需要所有 task 任务都完成。游戏场景识别模块的技术架构如下图
![AI SDK for image pattern](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbcOIHmXdScCELghyzdfsRtsp1QApcDlS7YLWEJ3w4OVNHWCCknSr6gOsV20Iiac6ibQLLddNIFtthpg/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
1. 为了降低任务检测的时间消耗（如果场景识别耗费太多时间，那么场景识别之后进行的 AI 决策就会存在很高的时延，严重制约AI自动化的表现），**采用了多检测任务并行运行的方式，充分利用多核 CPU 资源**。
2. 对于采用深度网络模型进行检测的可形变目标物，任务耗时往往比较长，会严重影响每一次场景识别的性能。这里**对深度网络模型进行了裁剪优化，减少卷积核数目、减少全连接层神经元个数，在保证识别准确率的情况下，尽量降低深度网络模型的性能开销**。
3. 针对游戏场景的图像特点，如游戏图像中存在很多的“半透明”的情况。即在识别目标物的时候，会受到背景图像的严重干扰，如下面图例所示。在游戏场景中，除了前置的图标不变外，图标的背景会不断发生变化。直接使用常见的模板匹配方法检测这些**“半透明”目标物**都不够理想，针对此类问题，**场景识别模块的算法也做了专门的优化**。如图所示：
![AI SDK for transparent img](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbcOIHmXdScCELghyzdfsRtsy8sQg9nKxeBV6DicHW2tcqSLzOISRfDd6GFKq9dr8tGmG2hxaOIoaOQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

### 游戏AI自动化
游戏AI自动化模块主要从场景识别模块得到识别结果，进行 AI 决策，并输出游戏操作（游戏操作通常为点击、滑动某个像素坐标点或区域）。**游戏 AI 是一个复杂的问题，从简单的硬编码规则、状态机、行为树 AI ，到模仿学习、强化学习等基于深度学习的 AI ，再到蒙特卡洛搜索树 AI ，不同类型游戏的 AI 决策往往需要不同的 AI 方法，或者多种 AI 方法来解决**。为了便于扩展和支持不同类型游戏的 AI 算法，**AI 自动化模块被设计为插件运行模式**，不同的AI算法以插件的形式实现，并由 AI 自动化模块加载运行。

**包含两种插件，分别是 Env 插件和 AI 插件**。Env插件主要是获取场景识别的结果，并转化为特定的数据特征，数据特征可以是图像像素值，也可以是其它类型的结构化数据，或者两者的合集。AI 插件主要是游戏 AI 算法的实现，根据 Env 插件转化后的数据特征，进行游戏动作决策。Env 插件和 AI 插件的运行示意图如图所示：
每一次游戏场景自动化过程中，Env插件和AI插件的运行过程如下：
- 进入游戏场景时，出发AI插件的OnEnter接口调用
- Env插件的IsStart接口根据场景识别结果，判断游戏场景开始执行时，出发AI插件的OnEnter接口调用
- 之后进入AI主循环，AI插件调用Env插件的GetState接口获取场景识别结果特征数据，进行AI决策，输出游戏动作Action，然后调用Env插件的DoAction接口执行游戏动作
- Env插件的IsOver接口根据场景识别结果，判断游戏场景结束时，触发AI插件的OnOver接口调用
- 离开游戏场景时，触发AI插件的OnLeave接口调用
如果需要扩展新的游戏 AI 自动化功能，按照要求实现 Env 插件和 AI 插件接口即可。为了便于实现插件，**AI SDK 中提供了两组 API 接口，分别是 Action API 和 Agent API** 。其中 Action API 对游戏中常见的各种动作进行封装，直接调用其中接口就可以输出各种游戏动作；Agent API 用于获取游戏场景识别的各项结果，可以方便地获取游戏中各种目标物或按钮、图标状态。值得注意的是，Env 插件和 AI 插件并不是一一对应的关系，如果不同游戏的 AI 算法是一样的，只有特征数据的解析方式存在不一致，那么AI 插件就可以对应不同的 Env 插件。AI 自动化模块的技术架构如图所示
![AI SDK Plugin](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7m12uHt292YU61UDWQhREZjdFs6msNvibM69piafcMB1eqXsuQd4dUiatkQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
 除了提供插件系统及其运行框架外，**AI SDK 中还内置了强化学习、模仿学习的 AI 插件和 Env 插件**，用户可以直接使用，不需要做任何改动。此外还提供了常见游戏类型的AI自动化算法框架，其中已经实现了 AI 插件和 Env 插件的诸多功能。用户可基于这些常见游戏类型的算法框架，再结合自身的特殊自动化需求，实现 Env 插件和 AI 插件。
在实际的游戏场景自动化中，有以下几点需要注意：
- 单纯的一个 AI 算法很难满足实际自动化需求，往往需要在 AI 算法之上附加一定的规则，如**采样模仿学习 AI+ 少量规则的方式**来实现；
- 为了在游戏场景自动化过程中覆盖更多的情况，可以在**特定 AI 算法之上附加一定的随机性，让 AI 能探索更多的场景**；
- 游戏场景识别的结果不能达到百分之百准确无误，针对识别结果**做一些简单的过滤或处理，能很好的提升 AI 自动化的鲁棒性**；
- 由于所有的游戏动作最终以模拟触屏的方式执行，**控制好游戏动作中触屏的时长、滑动的像素距离都能提升我们 AI 的表现**。

### 应用举例
目前 AI SDK 已经在竞速类、赛车类、FPS 类、MOBA 类、MMO 类等多种类型的游戏场景中进行了自动化验证，取得了不错的应用效果。能够针对多种游戏场景进行自动化测试，切不需要游戏端提供任何接口。
 **从运行方式上，AI SDK 可在本地部署运行，进行单独的游戏 AI 自动化测试**；如果**要进行批量大规模自动化测试，也可以部署在云端，提供线上游戏AI自动化测试服务**，如图所示:
 ![AI SDK for container cloud](https://mmbiz.qpic.cn/mmbiz_png/VfNZ75GWRbezLWJmMckmpOAOTK7bCg7mBIUvoDEbnKQ4kHnianfSNY4n5DuavHMGpflPtYS26eJ65FR1TNELicwg/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
 
### 总结和展望
**基于图像的游戏场景自动化框架，框架的优点是不依赖游戏端提供接口或数据，方案通用性强，可适用于绝大多数游戏场景的自动化测试**。且**游戏场景自动化插件完成后，随着游戏版本的迭代更新，只要游戏的玩法不改变，已经实现的自动化过程一般不需要做修改**，自动化过程维护的成本比较低，不需要随着游戏内部实现的改变而修改。
同时 **AI SDK 目前也存在一些问题，尤其在易用性方面，如何让使用者更容易的使用是下一步要解决的问题**。虽然 AI SDK 内置了常用游戏 AI 算法，提供了常见游戏类型的 AI 自动化框架模板，可以有效的降低接入新游戏进行游戏场景自动化的成本，但对使用者也有一定能力要求。我们也在尝试将一些简单且通用性强的AI自动化过程来通过工具配置的方式让用户来完成，让一些普通用户也能够完成一些场景的 AI 自动化。其次，在场景识别模块，提升目标物识别准确率，对实现 AI 自动化有诸多好处。而在提升识别准确率的同时降低性能开销，也是需要持续优化的问题。

Source code on [Github](https://github.com/justmd5/tencent-ai)
Source code on [Gitee](https://gitee.com/khs1994-php/tencent-ai)

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

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
