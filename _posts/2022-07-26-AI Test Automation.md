# AI Test Automation
人工智能（AI）的定义
通俗点定义，AI就是让机器实现原来只有人类才能完成的任务
目前最广泛的AI的四种测试类型：
- 机器学习项目的测试
- 推荐系统项目的测试
- 图像识别项目的测试
- 自然语言处理项目的测试

要明确项目具体要测试什么？要进行什么样的类型测试。
![AI 测试类型](https://img-blog.csdnimg.cn/20210118103714352.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l0eV8zMTE=,size_16,color_FFFFFF,t_70)
1. 模型评估测试
**模型评估主要是测试模型对未知新数据的预测能力**，即泛化能力，泛化那能力越强，模型的与测试能力就越好，**衡量模型泛化能力的评价指标是性能度量**，**性能度量一般有错误率、准确率、精确率、召回率等**
2. 稳定性测试
主要测试算法多次运行的稳定性，以及算法在输入值发生较小变化时的输出变化，若是输入小产生巨大的输出变化，则说明算法是不稳定的
3. 系统测试
将整个基于算法模型的代码作为一个整体，通过与系统的需求定义作比较，发现软件与系统定义不符合或与之矛盾的地方。系统测试主要是三个方面：
   - 项目的整体业务流程
   - 真实用户的使用场景
   - 数据的流动与正确
4. 接口及测试
接口测试是测试系统组件间接口的一种测试。接口测试主要用于检测外部系统与系统之间以及内部各个子系统之间的交互点。**测试的重点是要检查数据的交换，传递和控制管理过程，以及系统间的相互逻辑依赖关系等**。
5. 文档测试
文档测试是检验用户文档的完整性、正确性、一致性、易理解性、易浏览性。在项目的整个生命周期中，会得到很多文档，在各个阶段中都以文档作为前段工作成果的体现和后阶段工作的依据。为避免在测试的过程中发现的缺陷是由于对文档的理解不准确，理解差异或是文档变更等原因引起的，文档测试也需要有足够的重视。
6. 功能测试
7. 性能测试
8. 压力测试
9. 白盒测试-代码静态检查
10. 竞品对比测试
11. 安全测试

**AI 测试方法**
![AI 测试方法](https://img-blog.csdnimg.cn/20210118105840470.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l0eV8zMTE=,size_16,color_FFFFFF,t_70)

**AI 安全威胁风险**
参考自腾讯AI实验室文档，文字前的小饼图代表该方法的成熟度，绿色越多代表方法越成熟
![AI 安全威胁风险](https://img-blog.csdnimg.cn/20210118112441771.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3l0eV8zMTE=,size_16,color_FFFFFF,t_70)

**AI在软件测试中的演进**
在过去20年里，软件测试有了很大的进步，从手工测试到自动化测试，Selenium被认为是最好的测试自动化工具之一，测试的发展历程令人鼓舞。然而，在当今快节奏的IT世界中，软件测试领域也必须在方法方面进行创新，提出经过充分研究并行之有效的、新的测试方法和技术。

AI算法可以完全模拟人类智能，机器学习允许计算机在没有任何人工干预的情况下自主学习。人工智能和机器学习都涉及到特定的算法，这些算法可以访问数据，通过提取模型从数据中学习，从而做出决策，并用于软件测试。

不少公司争相开发能够利用AI和ML算法有效测试软件产品的工具。我们还看到，企业从基于AI的测试中受益良多，因为它将支持更快和持续的测试，完全自动化，无需任何人工干预，还可以改善产品的ROI（投资回报率）。

**软件测试中采用AI的好处**
1. **视觉验证**
**AI具有模式识别和图像识别能力**，可以对应用程序的界面进行视觉测试、检测视觉方面的缺陷。这有助于确保所有的视觉元素都是引人入胜的，并能正常发挥作用。不管控件的大小、形状如何，利用AI都可以识别动态UI控件，并在像素水平上对它们进行分析。

2. **更准确的测试结果**
手工测试中出现人为错误的几率很高，特别是在执行重复性任务的情况下。自动化测试有助于消除这些人为错误。但是，随着AI在自动化测试中的出现，可以更有效的处理重复的任务，更准确地记录测试结果。因此，AI有助于消除微小的错误机会，并提高测试的整体准确性。

3. **更高的测试覆盖率**
测试中的AI有助于提高测试覆盖率，因为它可以无缝地检查文件内容、数据表、内存和内部程序状态。它还有助于确定程序是否按预期工作并保证有效的测试覆盖率。

4. **节省时间、金钱和精力**
每当源代码发生变更时，都需要重复执行测试。如果采用手工测试，会非常耗时，并且需要测试人员付出大量精力。在AI驱动的测试中，重复的测试任务可以被正确、快速和有效地执行。

5. **更快的产品上市时间**
AI驱动的测试支持持续测试，因此产品发布速度更快，可以更早进入市场。

6. **更少的产品缺陷**
软件测试中的AI有助于在研发早期快速发现缺陷，从而减少缺陷，提高产品的可靠性。

**AI测试中的四项关键技术**
- **差异测试**：对软件版本之间的差异进行分类并比较。

- **视觉测试**：视觉测试是一种软件测试技术，通过基于图像的学习和界面比较来测试UI和进行用户体验测试。

- **声明性测试**：它的目的是用一种自然的或特定领域的语言来定义测试的意图，由测试系统来决定如何进行测试。

- **自我修复**：当软件的UI更改时，会在测试执行过程中自动更正页面元素的选择。

**AI测试工具分类**
- **差分测试工具（Differential Tools）**
利用AI和ML算法来识别代码相关问题、安全漏洞、回归等，是通过代码扫描、单元测试自动化等实现的。
这一类工具包括:
    - **Launchable**：基于ML算法，根据历史测试结果和软件源代码的变更预测每个测试用例失败的可能性。该工具允许用户记录测试套件，先运行可能会失败的测试。人们可以用这个工具动态选择有失败可能性的测试用例集合，从而让测试在几分钟内快速完成。
    - **谷歌OSS-Fuzz**：是一个模糊测试工具，旨在使通用开源软件更加安全、稳定和可靠。**这个工具结合了现代模糊技术和可伸缩的分布式执行**，支持C/ c++、Rust、Go和Python代码
- **视觉测试工具（Visual Tools）**
随着各种屏幕大小和配置的平台数量的不断增加，如何有效地进行UI测试已经成为测试工程师和开发人员的一项乏味的任务。此外，为了提供更好的用户体验，产品的UI层会不断变更，迫切需要视觉AI测试工具有效地测试UI的所有变体。
这一类的工具包括:
    - **Applitools**：是一个**AI驱动的视觉测试和监控平台**，被定义为一个由视觉AI赋能的下一代自动化测试平台，主要功能包括Applitools Eyes，有助于提高测试覆盖率和减少测试维护成本。超快网格有助于跨浏览器和跨设备的测试，并将功能和视觉测试速度提高了30倍。这个Applitools平台**可以集成目前所有的现代测试框架**，并与许多现有的测试工具（**如Selenium、Appium、Cypress等**）协同工作。
    - **Percy**：BrowserStack公司的Percy是一个一体化的**视觉审查平台**，具有惊人的功能，如**像素-像素之间的差异**检查，**响应时间**的差异查，**快照（snapshot）稳定性**检查。该工具允许跨浏览器渲染、高速渲染，**并具有并行测试的功能**。Percy帮助团队进行自动化视觉测试。它可以捕获屏幕截图，并将其与基准截图进行比较，显示视觉方面的差异。它增加了视觉测试的覆盖率，增强团队发布代码变更的信心。
- **声明式测试工具（Declarative Tools）**
这类工具旨在提高测试自动化的效率和稳定性，利用AI和ML，并具备基于机器人过程自动化(RPA)、自然语言处理(NLP)、基于模型的测试自动化(MBTA)和自主测试方法(Autonomous Testing Methods，AT)等方法的各项功能。这些方法的主要目的是通过智能的自动化来消除繁琐、容易出错、重复的任务。
这一类的工具包括:
    - **Tricentis**: AI驱动的下一代自动化测试工具，允许敏捷和DevOps团队快速实现测试自动化目标和基于AI的持续测试。这个工具对软件应用进行端到端的自动化测试，支持测试用例设计、测试自动化、测试数据设计和创建，以及测试分析等多个方面，从业务角度进行UI和API测试。
    - **UiPath Test Suite**：用于测试自动化和测试过程的集成，帮助启动弹性机器人（resilient robots），并确保测试自动化的质量。UiPath Test Suite由UiPath Studio Pro、UiPath Test Managers，和UiPath Orchestrator三部分组成。UiPath Studio Pro通过拖放界面开发自动化脚本；UiPath Test Manager用来管理测试任务；UiPath Orchestrator用来执行测试任务。UiPath Test Suite全方位的提供测试支持，并帮助RPA开发人员开发更多的测试自动化，更好的执行测试任务，而且无需修复测试脚本。
- **自我修复测试工具（Self-healing Tools）**
在自动化测试中，测试的稳定性、可靠性和脚本维护的问题一直存在，这也是在测试自动化中引入AI和ML的主要原因之一。为了解决这些问题，有些公司已经开发出基于录制-回放机制的自我修复工具，ML引擎用于被录制脚本的自我修复。
这一类的工具包括：
    - **Mabl**：是**为CI/CD（持续集成/持续交付）构建的领先的智能测试自动化平台**。Mabl抓取应用程序屏幕，并开始运行大多数应用程序常见的默认测试。它还使用ML算法来改进测试执行和缺陷检测。
    - **Testim**：使用AI和ML算法来实现测试的自动化。AI被用来加快测试脚本编写、执行和维护的速度。Testim基于ML实现自动化测试脚本的自主维护，能够快速编写稳定性高的测试脚本。

**AI的测试数据**
不管是[机器学习](https://so.csdn.net/so/search?q=%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0&spm=1001.2101.3001.7020)，推荐系统，图像识别还是自然语言处理，都需要有一定量的测试数据来进行运行测试。算法测试的核心是对学习器的泛化误差进行评估。为此是使用测试集来测试学习器对新样本的差别能力。然后以测试集上的测试误差作为泛化误差的近似。测试人员使用的测试集，只能尽可能的覆盖正式环境用户产生的数据情况。正式环境复杂多样的数据情况，需要根据上线后，持续跟进外网数据。算法模型的适用性一定程度上取决于用户数据量，当用户量出现大幅增长，可能模型会随着数据的演化而性能下降，这时模型需要用新数据来做重新训练。上线只是完成了一半测试，并不像APP或者WEB网站测试一样，测试通过后，发布到正式环境，测试工作就完成了。测试集如何选取很关键，一般遵循两个原则：
1. 测试集独立同分布
不能使用训练数据来做为测试数据，此为独立。测试数据需要和训练数据是同一个分布下的数据，此为分布。举个例子，训练数据中正样本和负样本的分布为7：3，测试数据的分布也需要为7：3，或者接近这个分布，比较合理。
2. 测试数据的数量和训练数据的比例合理
当数据量比较小时，可以使用 7 ：3 训练数据和测试数据 (西瓜书中描述 常见的做法是将大约 2/3 ~ 4/5 的样本数据用于训练，剩余样本用于测试） 或者 6： 2 : 2 训练数据，验证数据和测试数据。如果只有100条，1000条或者1万条数据，那么上述比例划分是非常合理的。如果数据量是百万级别，那么验证集和测试集占数据总量的比例会趋向于变得更小。如果拥有百万数据，我们只需要1000条数据，便足以评估单个分类器，并且准确评估该分类器的性能。假设我们有100万条数据，其中1万条作为验证集，1万条作为测试集，100万里取1万，比例是1%，即：训练集占98%，验证集和测试集各占1%。对于数据量过百万的应用，训练集可以占到99.5%，验证和测试集各占0.25%，或者验证集占0.4%，测试集占0.1%。
一般算法工程师会将整个数据集，自己划分为训练集、验证集、测试集。或者训练集、验证集等等。（这里的测试集是算法工程师的测试数据）
算法工程师提测时，写明自测时的准确率或其他指标。测试人员另外收集自己的测试集。
测试数据可以测试人员自己收集。或者公司的数据标注人员整理提供。或者爬虫。外部购买。
测试人员可以先用算法工程师的测试集进行运行测试查看结果。再通过自己的测试集测试进行指标对比。

**[AI和测试自动化的真相](https://simpleprogrammer.com/ai-test-automation/)**
Software testing has gradually evolved in the past few decades. In the past, teams were accustomed to the waterfall methodology: Everything was sequential, from requirements to product deployment.
软件测试在过去几十年中逐渐发展。 在过去，团队习惯于瀑布方法：从需求到产品部署，一切都是顺序的。

Only after the development phase was completed did the testers got their hands on the product. Historically, testers would find a number of bugs in this phase, and it would take a lot of redesign and rework to fix them. This resulted in a lot of wastage, from time to effort and cost, plus team morale.
只有在开发阶段完成后，测试人员才能获得产品。从历史上看，测试人员会在此阶段发现许多错误，需要进行大量的重新设计和返工才能修复它们。 这导致了大量的浪费，从时间到精力和成本，再加上团队士气。

But in the current state of testing, most companies are following **Agile processes**, such as XP, Scrum, Kanban, or some variation of these. **The main goal is to find bugs fast, fix them quickly, and release software faster**.
但在当前的测试状态下，大多数公司都在遵从敏捷流程，例如XP，Scrum，看板或其中的一些变体。主要目标是快速发现缺陷，快速修复缺陷并更快地发布软件。

In order to achieve this goal, there is a huge need to complement the already existing manual testing process with **automated testing**. This is a vital component of Continuous Integration (CI), Continuous Delivery (CD), and DevOps, which most teams are now following to make their Software Development Life Cycle (SDLC) process more lean and effective.
为了实现这一目标，通过自动化测试来补充现有的手动测试过程，这是十分必要的。这是持续集成（CI），持续交付（CD）和DevOps的重要组成部分，大多数团队正在遵循这些，使其软件开发生命周期（SDLC）流程更加精简和有效。

Various tools and frameworks have evolved in the past decade to help with automated testing, but one approach worth talking about is the use of Artificial Intelligence (AI) in test automation.
在过去十年中，各种工具和框架已经发展，以帮助进行自动化测试，但值得讨论的一种方法是在测试自动化中人工智能（AI）的使用。
![AI test automation](https://simpleprogrammer.com/wp-content/uploads/2018/09/image4.png)

**De-Mystifying Artificial Intelligence** 去神秘化的人工智能
Let’s first take a step back and de-mystify AI. At its most basic level, AI is a technology that can comprehend, sense, and learn, and use computers to solve problems typically requiring human intelligence and understanding.
让我们先退后一步，让AI去神秘化。在最基本的层面上，AI是一种能够理解，感知和学习的技术，并且使用计算机来解决通常需要人类智能和理解的问题。

Another way of looking at it is, AI applies human skills and tendencies to inanimate objects or ideas. Much like automation, AI makes it possible for technology to complete real human tasks.
另一种看待它的方式是，AI将人类技能和倾向应用于无生命的物体或想法。 与自动化非常相似，AI使技术可以完成真正的人工任务。

Contrary to popular opinion, AI is neither a distant reality nor a concept based on the plots of science fiction; instead, it has infiltrated the technology scene and is fueling the innovations that touch our daily lives. From chat bots posing as customer service representatives to search results and traffic predictions, on any given day, AI is all around us.

与流行观点相反，人工智能既不是遥远的现实，也不是基于科幻小说的概念; 相反，它渗透了技术领域，并推动了触及我们日常生活的创新。 从作为客户服务代表的聊天机器人到搜索结果和流量预测，在任何一天，人工智能就在我们身边。

Here are some mind blowing statistics about AI adoption: 以下是关于AI使用的一些令人兴奋的统计数据
- According to a recent study by Narrative Science, 61% of businesses implemented AI in some way in 2017. The adoption rate is only growing in 2018.  根据Narrative Science最近的一项研究，61％的企业在2017年以某种方式实施了人工智能。这个使用率是仅在2018年的增长。
- Another study from Juniper Research has found that global retailer spending on AI will reach $7.3 billion per annum by 2022, up from an estimated $2 billion in 2018. Juniper Research的另一项研究发现，到2022年，全球零售商在人工智能的支出将达到每年73亿美元，高于2018年估计的20亿美元。
- A CMO article claims that by 2035, AI will help to improve labor productivity by 40% and enable people to make efficient use of their time. 一篇CMO文章称，到2035年，人工智能将帮助提高40％的劳动生产率，并使人们能够有效利用他们的时间。

**Influence of AI in Test Automation** AI在测试自动化中的影响
AI has already started influencing [test automation](https://simpleprogrammer.com/ultimate-automation-testing-guide/) in various ways, resulting in a considerable amount of time saved in authoring and executing tests, creating more stable tests, finding bugs fast, and releasing software much faster to meet customer demands. Here are some of the ways this is happening.

AI已经开始以各种方式影响测试自动化，从而在设计和执行测试中节省了大量时间，创建了更稳定的测试，快速发现缺陷，以及更快地发布软件以满足客户需求。 以下是正在发生的一些方面。

Faster and More Stable UI Tests 更快，更稳定的UI测试
**As part of the continuous testing process, software development teams have unit tests, service/API level tests, and user interface (UI) tests**. The common problem with UI tests specifically is that they are slow and brittle and involve high maintenance. AI can avoid this with the use of Dynamic Locators.
作为持续测试过程的一部分，软件开发团队有单元测试，服务/ API级别测试和用户界面（UI）测试。 UI测试的常见问题是它们缓慢而脆弱，并且涉及大量维护。 AI可以通过使用动态定位器来避免这种情况。

This is a strategy by which the AI parses multiple attributes of each and every element the user interacts with in the application and creates a list of location strategies, in real time. So, even if an attribute of an element changes, the tests do not fail; instead the AI detects this problem and goes to the next best location strategy to successfully identify the element in the page.
这是一种策略，通过该策略，AI解析用户在应用程序中与之交互的每个元素的多个属性，并实时创建位置策略列表。 因此，即使元素的属性发生变化，测试也不会失败; 相反，AI会检测到此问题并转到下一个最佳位置策略，以成功识别页面中的元素。

In this way, the tests are more stable, and as a result, the [authoring and execution of tests](https://blog.testim.io/bringing-simplicity-to-authoring-and-execution-of-automated-tests/) is really fast as well.
通过这种方式，测试更加稳定，因此，测试的设计和执行也非常快。
![testim test cases](https://simpleprogrammer.com/wp-content/uploads/2018/09/image7.gif)

**Reducing Maintenance and Eliminating Flaky Tests** 减少维护和消除不稳定测试
One of the most common problems with test automation is maintenance.
测试自动化最常见的问题之一是维护。

For example, say we have 100 automated tests running on a daily basis to ensure the main functionalities of the application are still stable; What if the next day we come back to work and find that half of the tests have failed? We would need to spend considerable amounts of time to troubleshoot the failures and investigate what actually happened. This involves figuring out ways to fix the failures and implement the fixes. Then, we re-run the automated tests to ensure everything passes. Does this ring a bell?
例如，假设我们每天运行100次自动化测试，以确保应用程序的主要功能仍然稳定; 如果第二天我们重新开始工作并发现一半的测试失败了怎么办？ 我们需要花费大量时间来排除缺陷并调查实际发生的情况。 这涉及找出修复缺陷和实施修复。 然后，我们重新运行自动化测试以确保一切都通过。 这会响铃告警吗？

**AI can avoid issues like this due to its self-healing mechanism**. It can start detecting problems in the tests before they even occur, thus proactively fixing tests instead of us reacting to them.
由于其自我修复机制，AI可以避免这样的问题。它可以在测试发生之前就开始检测测试中的问题，从而主动修复测试而不是我们对它们做出反应。

Based on the number of times the tests have run, the AI can figure out which tests are stable or flaky. As a result, it can give us data on what tests need to be modified to ensure test runs are stable.
根据测试运行的次数，AI可以确定哪些测试是稳定的还是不稳定的。因此，它可以为我们提供有关哪些测试需要被修改的数据，以确保测试运行稳定。

Finally, based on large numbers of test runs, AI can optimize the wait times used in tests to wait for the pages to load and also can handle tests running on different resolutions. All of this adds up to a considerable decrease in the time spent on maintenance of tests and helps to solve one of the biggest bottlenecks of continuous testing.
最后，基于大量的测试运行，AI可以优化测试中等待页面加载的等待时间，还可以处理在不同分辨率下运行的测试。 所有这些都大大减少了维护测试所花费的时间，并有助于解决连续测试的最大瓶颈之一。
![AI automatic correction](https://simpleprogrammer.com/wp-content/uploads/2018/09/image6.png)

**Continuous Learning from Production Data** 从生产数据中不断学习
In this fast-paced environment where customer is king, it is important to observe and learn how customers use our product. This is true whether you have a web, mobile, or desktop application.
在客户为王的快节奏环境中，观察和了解客户如何使用我们的产品非常重要。 无论您拥有网络，移动设备还是桌面应用程序，都是如此。

With autonomous testing, we now have a way for AI to start observing and learning how our customers are using the product. Based on this, it can start creating tests based on real user data.
通过自主测试，我们现在可以让AI开始观察和了解客户如何使用该产品。 基于此，它可以开始基于真实的用户数据创建测试。

It is smart enough to identify commonly used actions such as logging in/out of the application and cluster them into reusable components. Then it injects these newly created reusable components into our tests as well. Now, all of a sudden we already have actual tests written by the AI based on real data, along with reusable components that can be used within other tests as well.
它足够聪明，可以识别常用的操作，例如登录/注销应用程序，并将它们集中到可重用的组件中。然后它将这些新创建的可重用组件注入我们的测试中。 现在，突然间我们已经有了基于AI编写的，基于真实数据的实际测试，以及可以在其他测试中使用的可重用组件。
![AI self learning](https://simpleprogrammer.com/wp-content/uploads/2018/09/image3.png)

This reminds me of a quote from the great Steve Jobs: “Start with the customer experience and work backwards.”
这让我想起了伟大的史蒂夫乔布斯的一句话：“从客户体验开始，向后工作。”

**Removing Dependencies** 删除依赖项
Another challenge of test automation is writing tests for a system that may have dependencies on other modules that may or may not have been implemented yet. Usually during these times, we mock responses from a server or database. Now AI can help to do this for us.
测试自动化的另一个挑战是为一个系统写测试，这个系统依赖于已经或尚未实现的其他模块。通常在这些时间，我们mock来自服务器或数据库的响应。 现在AI可以帮助我们做到这一点。

Once we have authored some tests and have run them consistently for a period of time, the AI can start recording all the server responses. The next time we run the tests, instead of talking to a server or database, the test will access the stored responses (which was facilitated with the help of AI) and will continue to run without any obstacles.
一旦我们编写了一些测试，并且持续运行它们一段时间，AI就可以开始记录所有服务器响应。下次我们运行测试，不再与服务器或数据库通信，测试将访问存储的响应（在AI的帮助下），并将继续运行没有任何障碍。

As a result, the tests run much faster, since the delay in waiting for a response is eliminated and the need to rely on a physical database or server has completely been erased.
因此，测试运行得更快，因为等待响应的延迟被消除了，并且依赖于物理数据库或服务器的需求已经完全被删除。
![AI Create Mock Server](https://simpleprogrammer.com/wp-content/uploads/2018/09/image5.png)

**Ease of Authoring and Executing Tests**
Some of the biggest obstacles keeping companies from moving forward with automation is the amount of time and effort it takes to author and execute tests with the chosen tool or framework and the availability of skilled resources to do this task.
阻止公司实现自动化的最大的一些障碍是使用所选工具或框架创建和执行测试所需的时间和精力，以及完成此任务所需的技能资源。

Even when companies decide to move forward with automated testing, teams have to spend considerable amounts of time authoring and executing tests due to complexity of the application, tools available, and the programming language used.
即使公司决定推进自动化测试，由于应用程序的复杂性，可用的工具以及所使用的编程语言，团队也必须花费大量时间来编写和执行测试。

Now, there are **AI-based** tools that help to mitigate these problems. Tests that used to take one week to author and execute can now be done in a matter of hours using AI. This is possible with the use of **Dynamic Locators** and the ability to easily create reusable components, do data-driven testing, author and execute tests quickly, and integrate CI/CD systems easily with public and private grids. As a result, we are able to have reliable tests, more test coverage, less maintenance, and faster release cycles.
现在，有一些基于AI的工具可以帮助缓解这些问题。 过去需要一周时间来设计和执行的测试，现在可以在几个小时内使用AI完成。 这可以通过使用动态定位器以及轻松创建可重用组件，快速执行数据驱动测试，设计和执行测试以及轻松地将CI / CD系统与公共和专用网格集成。 因此，我们能够进行可靠的测试，更多的测试覆盖，更少的维护和更快的发布周期。

Also, this has opened up a new era in test automation where nontechnical people can get involved in test automation as well. This helps to increase collaboration within teams and encourages everyone to own the test automation effort. AI is now bringing [a whole-team approach](https://www.infoq.com/articles/quick-guide-atdd) to test automation.
此外，这开辟了测试自动化的新纪元，非技术人员也可以参与测试自动化。 这有助于增加团队内的协作，并鼓励每个人拥有测试自动化工作。 AI现在正在为测试自动化带来整个团队的方法。
![AI for a whole team approach](https://simpleprogrammer.com/wp-content/uploads/2018/09/image2.png)

**Releasing at the Speed of Development** 加快研发速度
With AI powering the transition to autonomous testing, reducing the maintenance to a minimum, and creating more reliable tests, the ability for teams to release faster is better than ever.
通过AI过渡到自主测试，将维护降至最低，并创建更可靠的测试，团队更快发布的能力比以往任何时候都更好。

With AI and autonomous testing, quality assurance (QA) can focus on exploratory tests, while a big portion of the tests are continuously created and updated automatically. Now, your release frequency is only limited by how quickly your developers can code. It is also easier for QA to maximize user coverage by connecting authoring of tests with production apps mapping to real user flows.
通过AI和自主测试，质量保证（QA）可以专注于探索性测试，而大部分测试可以自动创建和更新。现在，您的发布频率仅受开发人员编码速度的限制。 通过将测试设计与映射到实际用户流的生产应用程序连接起来，QA也可以更轻松地实现最大化用户覆盖。

Now, we have the ability to take a risk-based approach and base our decisions on real data. Most of all, we are ahead of the game by proactively fixing issues instead of reacting to them, because of the self-healing mechanism of the AI.
现在，我们有能力采用基于风险的方法，并根据实际数据做出决策。最重要的是，由于人工智能的自我修复机制，我们通过主动解决问题而不是对它们作出反应，来处于领先地位。

Also, we are now able to create more user scenarios in short period of time. This means you can find bugs fast and release faster. The future of testing has only become brighter with AI.
此外，我们现在能够在短时间内创建更多用户场景。 这意味着您可以快速找到缺陷并快速发布。 因为AI，测试前景变得更加光明。

If you have experienced or heard of other ways to implement AI in test automation, please share your thoughts below in the comments section.
如果您已经体验或听说过在测试自动化中实现AI的其他方法，请在评论部分分享您的想法。

About the author
Raj Subramanian is a former developer who moved to testing to focus on his passion. Raj currently works as a Developer Evangelist for Testim.io, that provides stable self-healing AI based test automation to enterprises such as Netapp, Swisscom,Wix and Autodesk. He also provides mobile training and consulting for different clients. He actively contributes to the testing community by speaking at conferences, writing articles, blogging, making videos on his youtube channel and being directly involved in various testing-related activities. He currently resides in Chicago and can be reached at raj@testim.io and on twitter at @epsilon11. He actively blogs on www.testim.io and his website [www.rajsubra.com](https://www.rajsubra.com/). His videos on testing, leadership and productivity can be found here.

# Top 9 AI Testing Tools
## 1. [Applitools Eyes](https://applitools.com/products-eyes/?r=prd-aita)
3年前介绍Applitools时，侧重介绍其**自适应算法的可视化测试（或者说 “视觉验证” ）**，即可以**在JUnit + Selenium 测试脚本中嵌入视觉插件Eyes()**，然后就可以调用这种视觉验证能力。
![Applitools Eyes plugs](https://www.testwo.com/attachments/17128/1628231798043.png)
今天 Applitools在拥有这种Visual AI能力的基础之上，推出了Ultrafast Test Cloud （超快的测试云），并且它被定义为下一代测试自动化平台。经过三年的发展，Applitools的客户明显增多，包括全球前十大软件公司和美国前十大商业银行中的五家（占了一半），今年6月该公司还宣布其在金融服务领域的年经常性收入同比增长超过200%，也初显AI测试工具的威力，不再是玩具或试验性工具。2020年11月24日，Applitools获得了“2020 Red Herring Top 100 North America Award”，这个奖 “Red Herring Award” 是表彰某个洲最激动人心和最具创新精神的私营科技公司。

今天Applitools Visual AI的 号称突破了10亿张图像分析的里程碑，实现了99.9999%的准确率，其测试能力渗透到软件功能测试的各个方面，包括AI自动维护和智能辅助、可视化AI驱动的A/B测试等，在移动UI/UX测试、跨浏览器测试、跨设备测试等方面体现了其显著的优势，而且提供了非常丰富的SDK，无需创建新的测试或学习新的框架，可以和主流的测试工具（如Selenium、Cypress、WebdriverIO、Selenium IDE、Testcafe、grandor等）实现无缝集成，只要增加一段代码，Applitools Eyes()就能捕捉并分析应用程序的整个屏幕。Applitools还宣布与GitHub Actions和微软的Visual Studio应用程序中心的集成，允许开发人员在每个构建和拉取请求中添加基于Visual AI的测试。
![Applitools Docs](https://www.testwo.com/attachments/17128/1628231799127.png)
![Applitools Eyes](https://www.testwo.com/attachments/17128/1628231800527.png)
![Applitools Eyes](https://www.testwo.com/attachments/17128/1628231801395.png)
**Applitools Ultrafast Grid**（即前面说的Ultrafast Cloud）**通过将屏幕截图作业分布到云中数百个浏览器的网格中进行并行操作**——完成界面操作，可以支持不同类型的浏览器类型、不同尺寸的屏幕、模拟或真实设备及其组合的操作。Applitools 的**这种操作不是屏幕截图**（screenshots），**而是借助Applitools SDK实现DOM快照**（Snapshots），**这种快照包含呈现页面所需的所有资源（HTML等）**，而数据量比屏幕截图小得多，因此上载速度要快得多。
![Applitools Snapshots](https://www.testwo.com/attachments/17128/1628231801896.png)
![Applitools Dom](https://www.testwo.com/attachments/17128/1628231802665.png)
DOM快照会上传到Applitools Ultrafast网格，而Applitools Ultrafast网格使用容器技术，这样在不同的浏览器上能以更快、更可靠的方式呈现网页。Applitools Ultrafast Grid还采用了缓存技术，这样无需为每个页面上传快照。如果一个页面的资源没有改变，UltrafastGrid不会再次上传它们。由于大多数页面资源不会从一个测试运行更改到另一个测试运行，因此传输的时间更少，上传时间以毫秒为单位。
![Applitools with other test framework](https://www.testwo.com/attachments/17128/1628231795819.png)

## 2. [Appvance](https://www.appvance.ai/)
这个工具是基于人工智能技术概念的基础上创建基于实际最终用户输入的测试用例。由于它能识别最微小缺陷的强大功能主要是用于生产系统。测试人员在AI的帮助下能在较短的时间内执行大量的脚本的全面测试,。该工具的主要特点如下：
1. 生产系统的人工智能脚本。
2. 优秀的测试集设计。
3. 统一测试。
[Approvance IQ](https://www.appvance.com/appvance-iq/ai-scripting)
3年前，在介绍Appvance IQ时，主要展现了它的两种能力：
1.**由机器学习引擎创建应用程序蓝图**：它封装了对被测应用程序的操作流程的理解，随后蓝图还能集成真实用户如何浏览应用程序的大数据分析，即能进行用户活动分析；

2.**自动生成脚本**：使用应用程序蓝图作为被测应用程序中可能的指导，以及服务器日志作为实际用户活动的大数据源，完成脚本的生成。 
今天，Appvance IQ 强调自己是一个AI驱动的**无代码测试创建**、自主测试、持续测试的系统，实现统一的功能测试、性能测试和安全测试，给测试创建和执行两个方面都带来了革命性的效能提升。
![Approvance IQ](https://www.testwo.com/attachments/17128/1628231804444.png)
喜欢 “无代码测试创建、自主测试、持续测试” 这三大特性，去年特地写了一篇文章：2020年软件测试趋势报道：无代码化的测试自动化 ，今年一月还发布了：《持续测试白皮书》。做到自主测试，非常重要，是“持续测试”的基础或必要条件。有了自主测试能力，和CI和发布流水线集成起来，强有力支持 “持续交付（CD）”，很完美，所以有必要讨论 “**自主（autonomous）测试**” 这个特性。

自主测试是说Appvance IQ 系统可以自行生成脚本、运行测试并发现bug，而**无需任何人工干预，也就是说将人工减少到接近零，并获得接近100%的代码、页面和操作覆盖率，比手动测试或传统脚本更快地发现更多错误**。估计你看到这里不相信，我都有点不相信，但其官方网站（https://www.appvance.com/appvance-iq/ai-scripting）就是这么写的。网站宣称：AIQ能为任何应用程序自动生成一组全面的用户流，无论是新的或旧的应用程序，也无论是Web的还是移动的app，其机器学习过程不需要应用程序加载项或日志来操作，但可以选择从中学习，以获得与真实用户流更强的相关性。

AIQ在AUT（Application under test，被测应用）上聚集了一大群机器学习机器人（bots），每次测试会激活100多个异常聪明的机器人，这些机器人协同工作，在AUT中探索每一条可识别的路径，边探索边创建用例。当得出一条完整的业务操作路径时，结束这次探索，重新激活一批新机器人，从头开始，探索不同的路线，直到每个用例都被映射，一批测试用例得到创建。机器人超人的智慧是由**超过六种专利的数学和数学方法所驱动的**（大家有时间可以搜索一下他们的专利）。

## 3. Eggplant
在过去三年，Eggplant已启动了一个新的、基于AI的软件测试云平台——**Eggplant Digital Automation Intelligence（DAI）——数字自动化智能**，整套工具使用AI和深度学习来从界面上寻找缺陷，能够自动生成测试用例，大幅度提高测试效率和覆盖率，具有以下特点：
1. **基于Cloud的端到端自动化**：可扩展的融合引擎可在云中为任何应用程序或网站提供流畅、高效的、并行的和持续的端到端测试。
2. **UX洞察力**：高级用户体验（UX）数据点和指标的添加，能让用户帮助完成其应用程序的UX测试，并将测试结果（对UX的见解）添加到UX行为中，有助于改善SEO。
3. **来自真实用户的交互式洞察**：提供对数据洞察的访问，包括反弹、转换、访问者统计、持续时间、加载时间、页面图像、输入和会话分析。新的报告包括增强的可视化和过滤功能
4. **全自动的自我修复测试资产**：随着被测底层应用程序的运行下去，使用AI自动添加新的图像变量并进一步识别所需的测试，并在完全用户控制下自动构建和运行这些测试。这些测试是自我修复的，并随着被测系统的发展而自动适应。
![Eggplant architecture](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJn2xl976fFTXhC3qd0IOzjz2zc4ibdaibVn6ibHnlWBLiaN7jFldicQCrrJQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

### Manager server、agent和Functional客户端
![Eggplant Server, Agent and Client port](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJaiaUMooxQDKlP625CuzmeO3bqW9qeHFV1l85aWibDcibKm4QwlVo6NdoQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

### Agent设置
![Eggplant Setup](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJMFTS7b6xUMoUQOtOYJBArjxbGy1shfLOvLQvFop0wQJibba24k2NthQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
![Eggplant Desinger](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJMeYIVB6hgJyuctSJFcGmnlt87Ou6ib8eeHB818btFCsQLKLvjIqGPGw/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
- **Model**：模型类似于一个流程图，但在功能上更像一个路线图。用户旅程可在任意方向上往返于所定义的状态和操作之间。
- **Suites**：查看通过代理窗口的“Manage Suites”上传的测试集。
- **Snippets**:：编辑与活动模型相关联的脚本，而不需要打开EggPlant Studio。
- **Capture**：之前没有在Modeler中创建模型的经验，通过录制从头开始创建模型。
- **RCI**：使用Eggplant Real Customer Insights导入真实用户旅程。从而可以了解网站在转化率、跳出率、用户参与度和收入方面的表现。在收集用户度量之后，RCI平台会自动生成包含7天用户旅程数据的数据文件，这些数据文件可以用来生成用Eggplant DAI表示用户旅程的测试用例。
![Eggplant principle](https://mmbiz.qpic.cn/mmbiz_jpg/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJEEhmvgFvSErIGd2qoNm9OV2ibSziavO0FHr7TUfSJfaoZibTeoaVGbbBg/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1)
![Eggplant page details](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJTmvpYX7Z4FFChCF843QUvnhzeibeY03rb9qefytOibPuk3xeJEcIxXVg/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
More details can see in [reference](https://docs.eggplantsoftware.com/dai/)

Eggplant的AI驱动的测试方法创建了系统和用户旅程的模型，并自动生成测试用例，提供对用户体验以及系统性能、功能的强大覆盖。通过自动反馈循环，可以快速识别和解决问题。
AI驱动测试的其他功能包括：
- **回归测试**：定义在产品发布之前必须通过的关键任务——端到端测试。借助AI和机器学习（ML）可以从这些固定测试中收集到的信息，以识别其他测试用例，构建特定的回归测试集。
- **缺陷搜索**：先进的ML可以关联共同因素和历史缺陷的属性，以确定新的属性，从而进最大可能发现新缺陷。
- **覆盖率分析**：分析在模型中的历史位置，并提供一个平衡的视图，以达到尽可能高的测试覆盖率。
![Eggplant AI Driven](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJrweZ33xfJ7lL7n0K8Qra5I1lAyiaRVQIh3MKAjThdFXdm4jLHSurmkQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

[Eggplant-HMI 自动化测试软件](https://www.eggplantsoftware.com/products/test-automation-intelligence)
传统的 HMI（人机交互系统）测试方法是纯手工测试，依靠人眼判断测试结果和手工记录，效率低下。摄像头 + 机械手也是常见手段，输入测试用例过程繁琐，机械手执行动作耗时，摄像头图片记录精度不高。

**Eggplant 是英国 TestPlant 公司推出的创新性自动化测试工具**。通过 VNC 或 RDP 通讯技术远程桌面连接被测对象，**基于图像和文字识别算法进行对象定位**，进而驱动和确认被测 HMI 设备的响应，能够实现自动化的 HMI 操作测试，较大提高 HMI 的功能测试效率。对于车机车辆网、T-BOX 等功能，将面对大量 web 网页测试、手机 APP 测试、手机 - 车机功能一致性测试等任务，采用 Eggplant 可更高效方便地开展测试工作。

### 功能特点
- Eggplant AI 通过先进的寻找错误算法，可预测缺陷最可能出现的位置，并自动生成测试用
![Eggplant graphic](https://oscimg.oschina.net/oscnet/up-fc26138e786c3281187ebd00b589b58c72a.jpg)
- 更准确的图像识别算法，高精度图片捕获和图片对比
- Capture 模式捕获界面中将被操作的图形对象
- 允许不同精度的图片捕获：Tolerant、Precise、Pulsing 等
- 脚本自动录制 - 回放，录制界面操作流程，自动生成测试脚本
- **集成强大的 OCR (光学字符识别) 引擎**，识别中、英、俄、日、韩等 200 多种语言
- 测试脚本语言 “Sense Talk”，易学习掌握，使用方便
- 支持自动 / 手动开发测试脚本，同步执行脚本于被测设备、即时更新界面
- 测试脚本灵活易编辑，提供图片集合功能，同一套测试脚本可复用于多个项目
- 支持测试脚本的运行、暂停、单步执行、断点调试等
- 自动生成测试结果：Excel、TXT、XML
![Eggplant framework](https://oscimg.oschina.net/oscnet/up-beb28c5b44a0fd73bc319b0a0ff28d509ef.jpg)
- 开放自由的对外接口支持与第三方工具集成：Vector CANoe、IBM Rational RQM、DOORS、HP QC
![Eggplant with devices connect](https://oscimg.oschina.net/oscnet/up-d2bb9d0e1b137836f357d64eb42a8a92665.png)
- 无需认知被测设备软件程序或底层语言，不依赖其它技术，只需获得 VNC 发送的图形像素信息
- 支持跨平台测试，包括 Android，iOS，Linux，WinCE，QNX，Windows，Unix
- 双系统测试架构，基于图片搜索定位，测试用例为系统级事件，对被测软件不构成影响，实现黑盒测试
- 支持多台设备同步测试，可应用于车载信息娱乐系统、车载仪表、手机、Web 在内的多款 HMI 设备测试

### 测试内容
- 图像显示测试：坐标、尺寸、颜色
- 跳转逻辑测试
- 功能测试
- 压力测试

### UI 测试智能建模
SAP (企业管理解决方案) 系统, 面对其错综复杂的前端页面，测试人员可能经常感觉力不从心，无从下手。如果用传统 UI 自动化测试技术对 SAP 系统进行测试效率提升, 那么维护成本可能是非常巨大的。
**Eggplant 的解决方案**:
- 首先，根据 SAP 中的页面来对整个系统进行图形建模。下图中每个大方框代表不同的页面，小的方框则表示用户可以与之交互的任何操作
![Eggplant create a module](https://p1-jj.byteimg.com/tos-cn-i-t2oaga2asx/gold-user-assets/2020/6/11/172a1cac0d1f28d3~tplv-t2oaga2asx-zoom-in-crop-mark:3024:0:0:0.awebp)
- 在与图像和动态文本交互的测试过程中，通过光学字符识别技术进行辅助定位, 在每个操作中, 都有一段自动生成的代码驱动整个测试系统。
- 接着，**通过机器学习算法**， 根据要测试的路径**做出智能决策以优化覆盖范围**，最终完成整个基于图形建模的 UI 测试。
！[Eggplant using machine learning algorithm](https://p1-jj.byteimg.com/tos-cn-i-t2oaga2asx/gold-user-assets/2020/6/11/172a1cade33457f0~tplv-t2oaga2asx-zoom-in-crop-mark:3024:0:0:0.awebp)

## 4. [Mabl](https://www.mabl.com/?r=prd-aita)
从mabl官方网站看，过去三年有了很大进展，产品逐渐成熟，覆盖了接口测试、移动app测试等，特别突出的特性是低代码测试能力和自愈测试自动化，和上面介绍的EggPlant有些类似。
![Mabl Features](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJTRyTsY3ibVHuE7fnSqKq4bSzBCAGCvZuRuT1U6bFBKcticGLia87cYR5A/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

**低代码自动化测试**，慢慢成为AI测试工具的标配，包括前面介绍的几个工具都有类似的功能，即能够录制用户操作或测试人员的操作过程，形成业务流图或形成DSL这样的自动化测试脚本。
![Mabl record script](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJcsN5CuzSx7X4Ym4dSgYND3ROf22e77bDahjzGg7QLLic7bLVafFjpFQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
![Mabl automated generate script](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJI9MoCXGjTmTkKQchpd8Tmjr7DWGbicKL9KXYPXocjjQfXp8WOBTBTIQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
**自愈测试自动化**能够自动解决测试脚本演化过程中出现的问题，当应用程序的用户界面更改之后，原来用户设置的测试参数、对象定位方式等细节出错时，工具可以依赖AI 和ML 来检测这些更改，并自动更新测试。
![Mabl Self healing Function](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJyKGCtAPu6cib3Wib4iaF4hZ9icXiaViaFWIMNcM2qlecaPYG0KADKwGAD95w/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
![Mabl Execution result](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJK5U3p77FF9ntJ0HBib7jiaqYzHNAG5JUelFfMGBLTVgTCU2JSrjeDcAA/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

**智能元素定位器**可以自动调整识别方法、识别应用程序的变化，并支持React、Angular和VueJs等框架
![Mabl execution logs](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJ4ufoCfBVlvLyTiaJkJwlAftX87bCY4wgpJPkoNMuXbtGLtYxDl64YEA/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
另一个进步，Mabl帮助测试如何更好融入DevOps，并和CI/CD的流水线集成起来，使整个研发效率提升一倍.

## 5. [ReTest](https://retest.de/)
Retest 在2019那年（为何说“2019那年”、不说“三年来”，因为看了网站消息，2020年之后就没什么动静），形成一个云服务的框架，重点打造的产品是recheck-web工具，它不仅检测功能差异，还能检测视觉差异，特别适合回归测试，它也是Chrome浏览器的一个插件，基于cloud平台可以进一步改进recheck-web，毕竟机器学习需要数据，而cloud平台可以帮忙收集此类数据。
![ReTest Test Framework](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJApPib8qqRWkhpOvRqbXgBgmtpEQbJ3fdWsFYqzbRJSlGcVxTWg10kyg/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
![ReTest Test Framework](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJA9DNUWhur5z7wU5IEmvmsTZ7IN5mDkaofMQuvJxpiaPQAvA3ICfafUA/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

Recheck-web目前只有Java/Selenium或Chrome扩展，能针对输入进行比较分析，也可以定义自己的过滤器，还能和rehub集成
![Recheck web](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJYbPnhJksRj7sicdTica2Sbd1FaXlqpEMGtWoAvjXwpqr8GtmKiagJjNbQ/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

自动进行全面细致的比较，让测试人员了解哪些元素的内容或CSS属性做了哪些改动
![Recheck difference statistic](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FcRKJbQxGia9bo9UhicDYJiaSJadMNM1cHLw4lyAtmePcG5xuYnqibAuBJ2w8bKDEHsbJSwugBNAVLJibg/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

**专利技术**：一键机制快速高效地维护测试
Original source code in [Github](https://github.com/retest/recheck-web)

## 6. [Sauce Labs](https://docs.saucelabs.com/overview/)

## 7. Sealights
3年前介绍Sealights时，它已是一个基于云的测试平台，能够利用机器学习技术分析SUT的代码以及与之对应的测试，覆盖单元测试、系统的业务测试和性能测试等，并能呈现完整的质量Dashboard。今天，Sealights更是秉持DevOps思想，将贯穿软件研发生命周期的质量工作做到底，已经不用 “测试平台” ，而是 “软件质量治理平台（The Software Quality Governance Platform）”
![Sealights Governance Platform](https://www.testwo.com/attachments/17128/1628390198782.png)
正如去年QECon上海站的领导者致辞所说，今天我们面临三大挑战：**复杂性、不确定性和速度（持续交付）**：
- 难以确定测试应该关注的正确领域 43%
- 不能在适当的级别上应用测试自动化 50%
- 需要更好的控制和测试活动的透明度和覆盖率 63%
![Sealights solution architecture](https://www.testwo.com/attachments/17128/1628390199075.png)
Sealights的产品没有单独强调AI，而是将AI溶于产品之中，但主要体现在质量风险分析、质量洞察上
![Sealight auto coding](https://www.testwo.com/attachments/17128/1628390199433.png)
软件质量治理可以助力数字化转型，这个过程更关注于 “**质量风险**”这个概念，帮助我们尽早、尽快揭示影响用户的更严重的缺陷。
![Sealights for Quality Risk](https://www.testwo.com/attachments/17128/1628390200174.png)
Sealights 质量治理主要包含四个方面：策略、质量门禁、可行动的洞察和质量风险控制
- 策略：组织的领导必须意识到质量的重要性并重视质量，做好变更管理和明确合规性涉及哪些方面，确定可接受的风险级别、定义每个软件治理策略的确切范围等；
- 质量门禁：允许管理层在整个组织中实施其质量策略的运行机制，一定能够识别可能影响生产系统的pull请求或部署请求，识别哪些策略与软件组件相关，并基于标准化的质量度量和计算风险评分强制执行 “go-no-go（是否发布）” 的决策；
- 可行动的洞察：软件变更、变更复杂性、测试活动和所有软件组件的底层质量的丰富数据为软件研发洞察提供支持，并使用AI和大数据技术进行分析，可以洞察质量问题，如将测试和质量度量、业务需求以及跨组织策略联系起来。
- 质量风险控制：在开发人员、团队的级别上提供粒度质量指标（如开发团队的**变更历史**、**代码复杂性**和**代码质量**指标；测试团队的所有测试级别的测试覆盖率、测试质量和测试周期），以支持数据驱动的质量决策，可以用来预测未来质量风险的缺陷和错误。

## 8. [Test.ai](https://www.test.ai/?r=prd-aita)
3年前，介绍Test.AI时，它只是Selenium和Appium的一个插件，动态识别屏幕和元素并驱动应用程序的测试自动执行，虽然可以用一种类似于Cucumber的BDD语法的简单格式定义测试。
今天强调代替Selenium，超越传统软件测试自动化工具，使用test.ai进行测试，可以消除了冗长的测试脚本创建和维护的周期，**节省大约75%的测试时间**。
- 构建：AI-bots（机器人）无需编写代码或脚本就能构建测试。
- 维护：AI-bots自动维护测试；
- 规模：AI-bots可以将测试扩展到任何平台、任何应用程序类型；
- 加速：AI-bots加速测试到DevOps的速度。
似乎没有新的东西，但是仔细研究，发现其功能强大，**包含三大部分：AI Test Creator、AI Test Execution 和 AI Visual Reporting**。在创建测试时，**交互式能力比较强**，在运行导航应用程序、收集和标记数据以及实时构建测试时，可以灵活控制UI元素或创建过程，具有良好的无代码创建能力。看看它的架构和工具界面，比3年前要成熟多了。
![Test AI infrastructure](https://www.testwo.com/attachments/17128/1628390201203.png)
![Test AI Architecture](https://www.testwo.com/attachments/17128/1628390201738.png)
![Test AI no code interface](https://www.testwo.com/attachments/17128/1628390202163.png)

## 9. [Testim.io](https://www.testim.io/?r=prd-aita)
3年前介绍Testim时，特别提到它致力于减少不稳定的测试（flaky tests）和测试维护，试图利用机器学习来加快开发、执行和维护自动化测试。

今天，它的能力明显增强，成为久经沙场的AI工具，测试创建与执行更快、更灵活和更稳定，可以录制业务工作流、自动识别并锁定元素、自定义代码等，像微软、Salesforce、JFrog等这样的公司都是它的客户，值得试用。
![Testim clients](https://www.testwo.com/attachments/17128/1628390202508.png)
在录制业务操作流程时，具有高度的准确性和一致性，不仅能捕获简单的操作，如单击和文本输入，还可以捕获更复杂的操作，如拖放、iframe交互，甚至多选项卡用例。**Testim能够分析web应用程序的整个DOM**，以理解唯一标识每个元素的属性和关系，而且拥有智能定位器自动锁定元素，无需用户干预，以简化和加快创作过程。
![Testim page](https://www.testwo.com/attachments/17128/1628390202963.png)
Testim复用能力强，而且在可视化的编辑器中修改已录制的测试，如创建条件来规定测试步骤何时运行，删除、添加或重新排序步骤，配置文本、pdf、电子邮件等的验证。最后，**可以将测试导出为代码并在IDE中编辑，也可以将自定义JavaScript插入任何步骤以执行前端或服务器端操作，实现自定义代码**。
![Testim edit element](https://www.testwo.com/attachments/17128/1628390203324.png)
在测试的流程中进行分组、插入新的测试等
![Testim auto code generate](https://www.testwo.com/attachments/17128/1628390203693.png)
在测试某个步骤自定义代码
![Testim execution in different stage](https://www.testwo.com/attachments/17128/1628390204295.png)

机器学习的概念被这个工具用于测试集的自动化。它侧重于在功能级别上测试最终用户端场景，还测试应用程序中涉及的接口。UI测试使用testim.io是有效的，并减少时间花费高达90%。它使用JavaScript，也接受html语言。该工具的主要特点如下：
1. 与像Jenkins这样的CI工具集成。
2. 与CD工具如Jira, Github和Visual studio合作。
3. 支持不同的浏览器Edge, IE, Safari,Internet Explorer等。

除了所介绍的以上9个AI工具之外，**像Functionize 、Kobiton、Katalon Studio和 Tricentis Tosca等工具也具有良好的智能特性**：
- 基于视觉线索的自动化测试，独立于底层平台或技术；
- 自愈测试，借助重大技术变革和升级。
- AI 驱动的自动化
- 自定义的识别控制，通过视觉AI训练实现

## [Functionize](https://www.functionize.com/end-to-end-testing)
它也使用了机器学习，是第一个基于云的测试平台工具，它对敏捷测试的测试能力使它成为客户最广泛使用的工具，它可以在几分钟内执行上千个测试集，速度非常快。该工具的主要特点如下。
1. 使用记录器创建测试用例，不需要脚本。
2. 它的维护成本可以忽略不计，因为它的学习和自适应方法帮助它使用根本原因分析引擎来解决问题。
3. 优秀的分析报告。

## Katalon Studio
**Katalon Studio**是无代码化的测试工具里面最值得关注的，它是2015年推出的一个自动化测试框架，**目前在国外各类机构的Top自动化测试工具排行榜中都排名靠前**。另外，**它的开源属性**（也有收费版本）也大大促进了该工具的普及和发展，不过目前还没有中文版本。
![Katalon Studio](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FdAozd33l9IS9yicuEs56oFKvMkRRt3I8ricicH6h0fa57bicFexG2QMMtLPnX1UtZEiclw7fkXXpHTWiaw/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
**Katalon Studio使用Selenium和Appium作为底层框架，支持Web和Android、iOS移动应用的UI自动化测试，支持多种主流浏览器。也支持Restful和Soap协议的API接口自动化测试**。作为无代码的测试工具，既支持有编程经验的测试人员使用Groovy语言开发测试脚本，同时也支持没有编程经验的测试人员开发测试用例。

在UI自动化测试方面，它提供录制-回放功能，Web recorder utility接收应用程序上的所有动作，转化成测试用例。也提供object spy功能在界面上捕获元素对象来支持用户自己编写测试用例。

在最新的7.6版本中，**Katalon Studio提供了UI测试用例自愈（self-healing）功能**：在测试用例运行时，**当使用缺省的定位方法（比如XPath）定位不到这个元素时，工具会自动尝试其它的定位方式进行元素定位（比如CSS）**，让测试得以运行，并在随后的测试中也使用新的定位方式。测试结束后会建议更新测试用例：用新的定位方式代替不工作的定位方式。但使用这个功能需要企业版的License。至于这个功能是不是通过AI技术实现的，在Katalon Studio的官方指南中并没有强调。

当然，作为一个优秀的测试工具的标配，**Katalon Studio提供多种plug-in支持和Jira、Git、Jenkins、Jmeter、Sauce Labs等多款工具的集成**，实现和测试管理、缺陷管理和持续集成管理的集成。

Source code in [Github](https://github.com/katalon-studio)

## TestCraft
**TestCraft是一款商业软件**，以SaaS的模式为Web应用提供自动化测试服务，用户通过账号登录Web管理界面，因此也是一款云化的测试工具。底层也是基于Selenium框架。**TestCraft通过两种方式生成测试用例**：**一种是通过图形界面建模生成**、调整测试步骤，等功能实现后再为每个测试步骤添加控件元素。因此，**这也可以说是一款模型化（MBT）测试工具**——在需求分析阶段就创建测试步骤，有助于团队内部沟通澄清需求。**另一种是在软件功能实现以后通过录制—回放生成测试用例**。
![TestCraft MBT](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FdAozd33l9IS9yicuEs56oFKwSIQT60P9FeNoh9heXoDMFVn8FyHawkCqVibAPtFBsv2vWhpKCFG9lg/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
TestCraft也支持所有主流的浏览器，可以同时在多个浏览器上运行测试；为一个测试用例创建多个测试数据集；有定时执行和测试结果通知功能，为一个测试用例创多个测试数据集；也支持和CI/CD管理工具像Jenkins的集成，以及和Jira集成。
TestCraft也提供了控件的动态重新绑定机制——“on-the-fly rebinding”，在测试执行过程中修复元素定位。
优点：
- 为每一个测试用例创建一个模型，直观的展示测试执行的路径，适合设计复杂的测试场景。 提供“智能绑定”式定位器的推荐和自我修复。
- 缺点：只能使用专有的框架，无法导入/导出测试脚本。

## Perfecto
Perfecto是一款商业软件，提供云化的测试自动化解决方案，用于Web和移动应用的测试。它远程提供多款手机及平板真机，支持在远程iOS和Android设备上进行手工或自动化测试，可以在多台设备上并行运行自动化测试。基于录制-回放的无代码化测试用例开发是Perfecto提供的功能之一，如下图所示，实时捕捉界面上的操作在左边生成和调整测试步骤。
![Perfecto](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FdAozd33l9IS9yicuEs56oFKLB6pm8gqjiafjn5KiaBZYm018g2RkYUld6PlwKqRp7Mnvk20ibjd9tI9w/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)
大家有兴趣可以到其官网上看一下[demo](https://www.perfecto.io/codeless-automation)。 基于AI的自愈功能让测试脚本能够连续运行，自我完善。另外它还提供基于AI技术的测试分析和缺陷分类,帮助快速定位缺陷。总之，值得大家去深入学习它所提供的这些智能化的功能。

## TestingWhiz
TestingWhiz也可以支持Web及移动端的UI自动化测试，以及Web Service的API测试。基于关键字和数据驱动测试用例。它提供的Visual Recorder可以支持桌面应用、flash应用的元素识别和web UI测试。TestingWhiz提供recorder功能可以录制和存储web应用控件，桌面应用控件，以及移动应用的控件。
![TestingWhiz interface](https://mmbiz.qpic.cn/mmbiz_png/CMOUUEcN8FdAozd33l9IS9yicuEs56oFKv49AhCOkC8bYkWiawextpLqwFedGn2SpMOFcOzAx5rDmxY4IGZJ7uQw/640?wx_fmt=png&wxfrom=5&wx_lazy=1&wx_co=1)

## [Arextest](https://github.com/arextest)
It is a “Differential Testing” and “Record and Replay Testing” Tool. It is free software
- Test restful API by record, replay and stub request/response.
- Differential testing known as differential fuzzing, is a popular software testing technique that attempts to detect bugs, by providing the same input to a series of similar applications and observing differences in their execution

Source code on [Github](https://github.com/arextest/deployments)

## [Parasoft SOAtest](https://www.parasoft.com/products/parasoft-soatest/?r=prd-a)

## AI to analysis historical test bug patterns

## [FEDOT](https://github.com/nccr-itmo/FEDOT)
FEDOT - an open-source framework for automated modeling and machine learning (AutoML). It can build custom modeling pipelines for different real-world processes in an automated way using an evolutionary approach. FEDOT supports classification (binary and multiclass), regression, clustering, and time series prediction tasks.

The framework is not limited to specific AutoML tasks (such as pre-processing of input data, feature selection, or optimization of model hyperparameters), but allows you to solve a more general structural learning problem - for a given data set, a solution is built in the form of a graph (DAG), the nodes of which are represented by ML models, pre-processing procedures, and data transformation.

## [AWS-Serveless Machine Learning Pipeline](https://github.com/dylan-tong-aws/aws-serverless-ml-pipeline)
A serverless framework for continuous machine learning pipeline automation

## [Qaviton](https://github.com/qaviton/qaviton)
The first open source project to facilitate a unified testing automation framework for Web, Mobile & IoT with Machine Learning, AI and much [more](https://www.qaviton.com).
Inspired by Appium & Selenium, Qaviton is a play on words for Graviton. In theories of quantum gravity, the graviton is the hypothetical elementary particle that mediates the force of gravity. Qaviton is like the Graviton in the sense that if it exists, it will be the solution to a fundamental problem in its field.
Qaviton offers an easy framework to automate tests that can run against any driver or any testing scenario, and is meant to be like the React Native of software testing.

其实，基于录制-回放技术的UI自动化测试工具很早就有，当时主要针对桌面应用，也可以认为它们是“无代码化”测试工具的前身。在国际敏捷联盟网站整理的“Agile Practices Timeline”（敏捷实践编年史）也有这类工具的相关记载：
- 1990:
Testingdiscipline dominated by “black box” techniques, in particular in the form of“capture and replay” testing tools （1990年：黑盒（black box）测试技术在测试学科中占据了主导地位，尤其是“捕获与回放”类型的测试工具。）
- 1988-1990:
The rise of event-driven GUI software and their specific testingchallenges create an opportunity for “capture and replay” test automation toolsprovided by companies such as Segue or Mercury; this type of tool dominates themarket for the next decade.（1988年-1990年：事件驱动的GUI软件的兴起及其特定的测试方面的挑战为“捕获和回放”类测试自动化工具创造了机会。这类工具由Segue、Mercury等公司开发，并在今后10年间占据了市场主导地位。）
- 1997:
The testing tool JUnit is written by Beck and Gamma, inspired byBeck’s earlier work on SUnit; its growing popularity over the next few yearsmarks the end of the “capture and replay” era.（1997年：Beck和Gamma合作开发了测试工具JUnit，灵感来自Beck早期开发的工具SUnit。JUnit在未来几年日益流行，标志着测试工具“捕获和回放”时代的落幕。）

这样看起来无代码化也不是一个新生事物，让人不得不感慨软件测试也经历了一次轮回。想起20年前使用Silk Test做桌面应用的UI自动化测试的痛苦经历：几乎每个操作系统上的测试脚本都需要重新适配，有了新的软件版本也经常不得不重新调试测试脚本，尝试了一年终于放弃……。**传统的录制-回放测试工具代码结构化差，不支持数据驱动，对测试用例组织和维护方面做得差**。整个测试生态当然也不如现在，现在很多工具都支持和其它工具的集成，自己不具备的功能可以通过plug-in和其它工具进行集成。

另外，功能好不好用关键还在于实现的细节。这里简单对比一下Selenium IDE和Katalon Studio的录制-回放功能。
| |**Selenium**|**Katalon Studio**|
| ------ |-------|-------|
|支持类型|**Web browser**: Chrome, Firefox|**Web Browser**: Chrome, Firefox, IE, Edge Chromium **Mobile**: Andriod, iOS **Windows桌面应用|
|Web browser录制功能|先安装所支持的web browser，添加对应的Selenium IDE plug-in|不需要事先安装web browser，录制测试脚本时在Katalon Studio界面上选择一种web browser|
|录制|实时生成每一个测试步骤|实时生成每一个测试步骤，并在浏览器上同时捕获操作的界面元素，录制完成后存储到object repository中供编辑和重用|
|脚本编辑|可以对测试步骤和输入数据增加、删除、修改|可以对测试步骤和输入数据增加、删除、修改。支持的关键字比较多，也支持多种丰富脚本逻辑的statement，比如if,else, for, while等|
|测试脚本执行|只能在录制脚本的web browser运行|可以选择任一的web browser，目前支持5种，而且无需安装。**收费版有脚本自愈功能**.|
|支持的代码|支持export成多种语言|只支持Groovy|
|代码查看|需要其它工具编辑、查看|界面上可以直接切换显示测试脚本和测试代码并进行编辑|
|数据驱动|需要编辑export出的测试代码以支持数据驱动|支持在界面上创建、编辑、导入数据文件|

无代码化的测试工具的兴起从加快软件交付方面来说肯定是很有价值，但从人的角度来说，对于测试人员的职业发展其实会带来冲击，有不少测试人员说：“好不容易培养起来的一点儿编程能力这下也用不上了，真不知道将来我的核心竞争力是什么”。懂业务的测试人员当然也很有价值，但往往不受重视。留给大家的时间也许真的不多了，需要思考一下未来。

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
