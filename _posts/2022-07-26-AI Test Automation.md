# AI Test Automation
## [Eggplant-HMI 自动化测试软件](https://www.eggplantsoftware.com/products/test-automation-intelligence)
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

## AI to analysis historical test bug patterns

## [FEDOT](https://github.com/nccr-itmo/FEDOT)
FEDOT - an open-source framework for automated modeling and machine learning (AutoML). It can build custom modeling pipelines for different real-world processes in an automated way using an evolutionary approach. FEDOT supports classification (binary and multiclass), regression, clustering, and time series prediction tasks.

The framework is not limited to specific AutoML tasks (such as pre-processing of input data, feature selection, or optimization of model hyperparameters), but allows you to solve a more general structural learning problem - for a given data set, a solution is built in the form of a graph (DAG), the nodes of which are represented by ML models, pre-processing procedures, and data transformation.

## [AWS-Serveless Machine Learning Pipeline](https://github.com/dylan-tong-aws/aws-serverless-ml-pipeline)
A serverless framework for continuous machine learning pipeline automation

## [Qaviton](https://github.com/qaviton/qaviton)
The first open source project to facilitate a unified testing automation framework for Web, Mobile & IoT with Machine Learning, AI and much more: https://www.qaviton.com
Inspired by Appium & Selenium, Qaviton is a play on words for Graviton. In theories of quantum gravity, the graviton is the hypothetical elementary particle that mediates the force of gravity. Qaviton is like the Graviton in the sense that if it exists, it will be the solution to a fundamental problem in its field.
Qaviton offers an easy framework to automate tests that can run against any driver or any testing scenario, and is meant to be like the React Native of software testing.

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
