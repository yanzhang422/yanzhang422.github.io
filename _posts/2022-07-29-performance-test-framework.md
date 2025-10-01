---
layout: post
title: "Performance Test Framework"
date: 2022-07-29
categories: [Quality Assurance, Performance Testing]
tags: [performance-testing, jmeter, cucumber, testng, load-testing]
---

# Automation Performance Test Framework
## Cucumber+JMeter+TestNG
 picking an HTTP sampler request for REST API test, and how we can use it by transforming in different variety of execution starting from **JMeter Tool to Cucumber JVM execution using IDE**.
 
### Step by Step
1. JMeter Pre-requisites & Setup
a. Download JMeter from [here](https://jmeter.apache.org/download_jmeter.cgi)
![Jmeter file](https://automationcalling.files.wordpress.com/2019/04/001_jmeter_image.png?w=760)
b. Click on Zip folder for Windows installer
c. Copy the zip folder in a specific folder location and unzip it.
d. Set Environment variable for JMeter Downloaded location and Add Path variable as mentioned below snapshots
![setup Jmeter env](https://automationcalling.files.wordpress.com/2019/04/002_jmeter_home-1.png)
e. Open command prompt and supply command “jmeter –version” to verify current version gets installed.
2. How to run an HTTP sampler performance test using JMeter Tool
a. Open “jmeter.bat” under bin folder where you extracted JMeter Zip.
b. Right-click on Test Plan -> Add->Thread (Users)->Thread Group
c. Right click on Thread Group->Sampler->HTTP Request
d. Add https in protocol (In case https otherwise leave default)
e. Enter Host or ip address in Server Name or IP field
f. Select Request type, add Rest of resource path in Path field like below snapshot
![Add Thread](https://automationcalling.files.wordpress.com/2019/04/005_http_sampler-1.png?w=760)
g. Right click on “HTTP Request”->Add->Listeners->View Results Tree
h. Right click on “HTTP Request”->Add->Listeners->Summary Report
i. Save Test Plan (The extension of JMeter file is JMX
j. Set Through group value as mentioned in the below snapshot
   - For each second 2 users hit the endpoint in parallel that complete executing 10 users in 5 secs which repeat 2 times, so overall 20 users hit this endpoint in 10 seconds.
![Set Group Value](https://automationcalling.files.wordpress.com/2019/04/007_thread_group.png?w=760)   
k. Click on Run button
l. After a run, we can see the following results in JMeter
![Jmemter run result](https://automationcalling.files.wordpress.com/2019/04/008_view_result_tree.png?w=760)
![Run result](https://automationcalling.files.wordpress.com/2019/04/009_summary_report.png?w=760)
3. How to run an HTTP sampler performance test using NON-GUI Mode
Using same JMX file which used in the previous section. Then disable all listeners (View Result Tree and Summary Report) and generate remote using NON-GUI Mode.
a. Go to JMX File stored location in command prompt.
![command for JMX file](https://automationcalling.files.wordpress.com/2019/04/010_generate_report.png?w=760)
b. Supply the following command
   - jmeter -n -t HTTP_Non_GUI_Mode.jmx -l 
   D:\JMeter\JMeter_Examples\test_result\jtlresult.jtl -e -o 
   D:\JMeter\JMeter_Examples\test_result\report
     - -n  : This specifies JMeter is to run in non-gui mode
     - -t   : name of JMX file that contains the Test Plan
     - -l   : name of JTL file to log sample results to
     - -e: generate report dashboard after load test
     - -o: output folder for report dashboard

    c. After running the test, go to a specific folder where reports get generated successfully.
    ![New generated report](https://automationcalling.files.wordpress.com/2019/04/011_report_jtl.png)
    ![report detials](https://automationcalling.files.wordpress.com/2019/04/012_jtl_results.png?w=760)
    ![statistics json](https://automationcalling.files.wordpress.com/2019/04/013_generated_report.png)
    ![statistics report details](https://automationcalling.files.wordpress.com/2019/04/014_report_dashboard.png?w=760)
4. How to run an HTTP sampler performance test using Maven
Use the same JMX file in the previous section by saving as a test plan, modify the following parameters and save it.
![JMX parameters](https://automationcalling.files.wordpress.com/2019/04/015_runtimevalue.png?w=760)
__P is for property value which is allowed during runtime for eg., command line execution.
**Supply the following command by assigning runtime value for the variables**
jmeter -n -t HTTP_Non_GUI_Mode_Runtime.jmx -Jusers=10 -Jrampup=5 -Jloop=2 -l D:\JMeter\JMeter_Examples\test_result\results.jtl
![Jmeter result](https://automationcalling.files.wordpress.com/2019/04/016_runtime_threadgroup.png?w=760)
-J: [prop_name]=[value]defines a local JMeter property.
5. How to run an HTTP sampler performance test using JMeter API (Java Code)
**Pre-requisites:**
   - Please make sure to download Maven standalone zip file, add environment variable and path.

   JMeter can be integrated with [Apache Maven](http://maven.apache.org/) via the [JMeter Maven Plugin](http://wiki.apache.org/jmeter/JMeterMavenPlugin).  In this section, I’m going to explain how to run existing JMX file using Maven Integration.
   In order to understand by Maven plugin, the Maven project structure must be created in the following format.
   ![Maven plugin](https://automationcalling.files.wordpress.com/2019/04/017_jmx_maven_format.png)
   the jmeter folder must exist under test folder, all JMX files can be copied under jmeter folder or its subfolder.
   To demonstrate further, I’m going to create Maven project in Intellij and add the following details in **pom.xml**
   ~~~
   <build>
    <plugins>
        <plugin>
            <groupId>com.lazerycode.jmeter</groupId>
            <artifactId>jmeter-maven-plugin</artifactId>
            <version>2.5.1</version>
            <executions>
                <execution>
                    <id>jmeter-tests</id>
                    <phase>verify</phase>
                    <goals>
                        <goal>jmeter</goal>
                    </goals>
                </execution>
            </executions>
            <configuration>
                <jMeterProcessJVMSettings>
                    <xms>1024</xms>
                    <xmx>1024</xmx>
                    <arguments>
                        <argument>-Xprof</argument>
                        <argument>-Xfuture</argument>
                    </arguments>
                </jMeterProcessJVMSettings>
                <propertiesUser>
                    <users>${users}</users>
                    <rampup>${rampup}</rampup>
                    <loop>${loop}</loop>
                </propertiesUser>
                <testFilesIncluded>
                    <jMeterTestFile>${jMeterTestFile}</jMeterTestFile>
                </testFilesIncluded>
                <testResultsTimestamp>false</testResultsTimestamp>
            </configuration>
        </plugin>
        <plugin>
            <groupId>de.codecentric</groupId>
            <artifactId>jmeter-graph-maven-plugin</artifactId>
            <version>0.1.0</version>
            <configuration>
                <inputFile>${project.build.directory}/jmeter/results/jmetereg_HTTP_Non_GUI_Mode_Runtime.jtl</inputFile>
                <graphs>
                    <graph>
                        <pluginType>ResponseTimesOverTime</pluginType>
                        <width>800</width>
                        <height>600</height>
                        <outputFile>${project.build.directory}/jmeter/results/jmetereg_HTTP_Non_GUI_Mode_Runtime.png</outputFile>
                    </graph>
                </graphs>
            </configuration>
        </plugin>
    </plugins>
    </build>
    ~~~
    In our previous example, we kept the following parameters as a runtime variable. Hence I use the same format to show you how to run this in maven command
    ![Run Maven Command](https://automationcalling.files.wordpress.com/2019/04/015_runtimevalue.png?w=760)
    mvn clean verify -Dusers=10 -Drampup=5 -Dloop=2 -DjMeterTestFile=jmetereg/HTTP_Non_GUI_Mode_Runtime.jmx
    Performance test gets succeeded and you can see the results under the following location
      - **[Maven_Project]/target/jmeter/results**
    
    After a successful result, supply the following command to generate a graph
   ~~~
   mvn jmeter-graph:create-graph
   ~~~
   The JPG file gets generated in the same results folder
     - [Maven_Project]/target/jmeter/results

   ![Jmeter graph](https://automationcalling.files.wordpress.com/2019/04/018_generated_report.png?w=760)
6. How to run an HTTP sampler performance test using Cucumber JVM
Mainly focused on how to run a performance test using pure java code and **execute existing JMX file using Java code**.
![JMX File details](https://automationcalling.files.wordpress.com/2019/04/019_jmx_configuration_analysis.png?w=760)
Above snapshot taken from JMX file. <hashTree>  is associated with Test Plan and Test Plan elements. So, the same logic used to implement in Java API.
To run JMeter using Java API, here are the following or minimum test plan elements/controller required.
   - StandardJMeterEngine – This the **main class** which actually helps you to **configure your test plan and execute**.
   - HashTree – **Holds Test Plan element** for eg., Test Plan, Thread Group, Http Sampler, Loop Controller

   **Test Plan Elements**
   - TestPlan – This must be mandatory which exists top in JMeter, in fact by default Test Plan exists by default if you open in JMeter
   **Example Code:**
   ~~~
   public static void initializeTestPlan(String testPlanName) {
    testPlan = new TestPlan(testPlanName);
    testPlan.setProperty(TestElement.TEST_CLASS, TestPlan.class.getName());
    testPlan.setProperty(TestElement.GUI_CLASS, TestPlanGui.class.getName());
    testPlan.setUserDefinedVariables((Arguments) new ArgumentsPanel().createTestElement());
   }
   ~~~
    - [LoopController](https://jmeter.apache.org/api/org/apache/jmeter/control/LoopController.html) – Since you must have at least one loop, it’s essential to have a Loop Controller instance set as the main Sampler controller for a Thread Group.
   **Example Code:**
   ~~~
   public static void setLoopController(int loopCount) {
    loopController = new LoopController();
    loopController.setLoops(loopCount);
    loopController.setFirst(true);
    loopController.setProperty(TestElement.TEST_CLASS, LoopController.class.getName());
    loopController.setProperty(TestElement.GUI_CLASS, LoopControlPanel.class.getName());
    loopController.initialize();
    LOG.info("Initalized Loop Controller");
   }
   ~~~
   - [ThreadGroup](https://jmeter.apache.org/api/org/apache/jmeter/threads/ThreadGroup.html) – At least one thread group must be present in Test Plan which needs to be configured no of  users, Ramp-up period and loop count.
   **Example Code:**
   ~~~
   public static void setThreadGroup(int noOfThreads, int setRamupNo) {
    threadGroup = new ThreadGroup();
    threadGroup.setName("Thread Group");
    threadGroup.setNumThreads(noOfThreads);
    threadGroup.setRampUp(setRamupNo);
    threadGroup.setSamplerController(loopController);
    LOG.info("Initialized Thread Group");
    threadGroup.setProperty(TestElement.TEST_CLASS, ThreadGroup.class.getName());
    threadGroup.setProperty(TestElement.GUI_CLASS, ThreadGroupGui.class.getName());
   }
   ~~~
   - A [Sampler](https://jmeter.apache.org/api/org/apache/jmeter/samplers/Sampler.html) do the actual work for eg., http sampler, ftp request, jdbc request
   **Example Code:**
   ~~~
   public static void setHttpSampler(String protocolType, String setDomainName, int setPort, String setPath, String requestType) {
    httpSamplerProxy = new HTTPSamplerProxy();
    httpSamplerProxy.setDomain(setDomainName);
    httpSamplerProxy.setPort(setPort);
    httpSamplerProxy.setPath(setPath);
    httpSamplerProxy.setMethod(requestType);
    httpSamplerProxy.setProtocol(protocolType);
    httpSamplerProxy.setName("Http Sampler");
    LOG.info("Initalized Http Sampler");
    httpSamplerProxy.setProperty(TestElement.TEST_CLASS, HTTPSamplerProxy.class.getName());
    httpSamplerProxy.setProperty(TestElement.GUI_CLASS, HttpTestSampleGui.class.getName());
   }
   ~~~
   
   **To configure Test Plan and Test Plan Element in HashTree:**
   **Example Code:**
   ~~~
   public static HashTree configureTestPlan() {
    testplanTree.add("TestPlan", testPlan);
    testplanTree.add("loopController", loopController);
    testplanTree.add("ThreadGroup", threadGroup);
    testplanTree.add("HTTPSamplerProxy", httpSamplerProxy);
    return testplanTree;
   }
   ~~~
   After all initialization and configuration, it’s time to **run JMeter Performance test using StandardJMeterEngine**. The below lines are important code to run a performance test in Java
   ~~~
   static {
        jMeterEngine = new StandardJMeterEngine();
   }
    jMeterEngine.configure(testplanTree); 
    jMeterEngine.run();
   ~~~
   To look on final code, please go visit bitbucket repository ([JMeterPerformanceFramework](https://github.com/automationcalling/jmeterperformancecode)) where JMeterUtil package under src/main/java.

   
   Build a simple cucumber framework that helps you to configure all runtime properties in the feature file and run more robust as well as more flexible performance test.
   ![Cucumber and JMeter](https://automationcalling.files.wordpress.com/2019/04/020_using-cucumberjvm.png)
   ![Using Gherkin](https://automationcalling.files.wordpress.com/2019/04/021_feature_file.png?w=760)
   6a. Run an HTTP sampler Performance test using JMeter API by Cucumber JVM
   **First Scenario**
   - It’s pure Java code (JMeter Util implemented in Step Definition).
   - Configuring runtime properties like Threads, Rampuptime and Loop Controller
   - Execute test and generate a report in the target folder.
   
   6b. Run an HTTP sampler Performance test using JMX file by Cucumber JVM 
   **Second Scenario**
   - The second scenario, I use the same JMeterUtil code but the only difference is, not configured all test plan element in scratch using Java, instead, I use pre-configured JMX file.
   - Configuring runtime properties like Threads, Rampuptime and Loop Controller – Used XML util to update the value in JMX file.
   - Execute test and generate a report in the target folder.
      
To play with Cucumber Performance Test Framework, please visit my GitHub page:[JMeterPerformanceFramework](https://github.com/automationcalling/jmeterperformancecode)


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
