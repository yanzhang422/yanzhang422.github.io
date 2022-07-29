#Function/Regression Test Automation Framework: Cucumber, Selenium and Jira Xray

## Agile Testing Process Requirements
The roadmap to achieving these two end results involved:
- Creating the QA documentation from scratch.
- Deciding upon and setting up a process to maintain test plans and test execution across different environments.
- Integration of Cucumber and Selenium test automation inside the Xray system.
- Setting up the tests that needed to be executed fron Xray.

A further requirement was that an introduction to the system and not a QA background should be all that was necessary. Product owners or Feature owners had to be able to create a testing plan using existing test cases.

## Cucumber
Cucumber is a software testing apprach that uses the Gherkin language to simply explain the behaviour of a given application in standard English. It is a framework for behavior-driven development (BDD), where the test specicifation is done in a natural language, while the implemenation of each specification's phrase (i.e.step) is done in code (e.g. Java, Ruby or some other language).

(Test) Scenarios derived from Cucumber are executable specifications; their statements will have a corresponding code implementation. These test scenarios are feature and more business oriented; they're not unit/integration tests.

Your specification is made using **Gherkin (i.e. Given, When, That) statements** in Scenario(s) or Scenario Outline(s), eventually complemented with a Background. Implementation of each Gherkin statement (i.e. "step") is done in code; the Cucumber framework finds the code based on regular or cucumber expressions.

### Usage scenarios
Cucumber is used in diverse scenarios. Next you may find some usage patterns, even though Cucumber usage is mostly recommended only if you are adopting BDD.

- Teams adopting BDD, start by defining a user story and clarify it using Cucumber Scenario(s); usualy, **Cucumber Scenario(s)/Scenario Outline(s) are specified directly in Jira, using Xray**
- Teams adopting BDD but that favour a more Git based approach (e.g. GitOps). In this case, **stories would be defined in Jira but Cucumber .feature files would be specified using some IDE and would be stored in Git, for example**
- Teams not adopting BDD but still **using Cucumber, more as an automation framework**. Sometimes focused on regression testing; sometimes, for non-regression testing. In this case, cucumber would be used...
a.With a user story or some sort of "requirement" described in Jira
b.Without any story/"requirement" described in Jira

**Example: Using Cucumber framework to implement in a Java calss**
**src/main/java/com/xray/tutorials/Calculator.java**
~~~
package com.xray.tutorials;
public class Calculator
{
// Square function
public static int Square(int num)
{
    return num*num;
}
// Add two integers and returns the sum
public static int Add(int num1, int num2 )
{
    return num1 + num2;
}
// Add two integers and returns the sum
public static double Add(double num1, double num2 )
{
    return num1 + num2;
}
// Multiply two integers and retuns the result... this code is buggy on purpose
public static int Multiply(int num1, int num2 )
{
    if (num1==0) {
        return num2;
    } else if (num2==0) {
        return num1;
    } else {
        return num1 * num2;
    }
}
public static int Divide(int num1, int num2 )
{
    return num1 / num2;
}
// Subtracts small number from big number
public static int Subtract(int num1, int num2 )
{
    if ( num1 > num2 )
    {
    return num1 - num2;
    }
    return num2 - num1;
    }
}
~~~

**This tutorial, has the following requirements:**
- Java
- Add the dependency of cucumber-jvm (i.e. [cucumber-java](https://cucumber.io/docs/installation/java/)) to your maven "pom.xml" file

In case you need to interact with Xray REST API at low-level using scripts (e.g. Bash/shell scripts), this tutorial uses an auxiliary file with the credentials (more info in [Global Settings: API Keys](https://docs.getxray.app/display/XRAYCLOUD/Global+Settings%3A+API+Keys)).

**Example of cloud_auth.json used in this tutorial**
~~~
{ "client_id": "215FFD69FE4644728C72180000000000","client_secret": "1c00f8f22f56a8684d7c18cd6147ce2787d95e4da9f3bfb0af8f020000000000" }
~~~

## Selenium & Selenium Webdriver
Selenium is the most popular automation testing framework in the world. Selenium Webdriver is a browser automation tool primarily used for test automation of web-based applications. It can also be used to automate web-based administration tasks.

## Maven
Maven is a powerful project management tool that is based on POM (project object model). It is used for projects build, dependency and documentation. It simplifies the build process like ANT. But it is too much advanced than ANT.
In short terms we can tell maven is a tool that can be used for building and managing any Java-based project. maven make the day-to-day work of Java developers easier and generally help with the comprehension of any Java-based project.

Maven does a lot of helpful task like
- We can easily build a project using maven.
- We can add jars and other dependencies of the project easily using the help of maven.
- Maven provides project information (log document, dependency list, unit test reports etc.)
- Maven is very helpful for a project while updating central repository of JARs and other dependencies.
- With the help of Maven we can build any number of projects into output types like the JAR, WAR etc without doing any scripting.
- Using maven we can easily integrate our project with source control system (such as Subversion or Git).

![How Maven works](https://media.geeksforgeeks.org/wp-content/uploads/How-Maven-Works.jpg)

### Maven Project Set up (Build and Execute Selenium Projects)
#### Building a Selenium project
- Java: Java or JDK needs to be installed as we are using Java to build a Selenium project. 
[Click here to download & Install Java](https://www.guru99.com/install-java.html)
- Maven: Maven needs to be installed as we are using a Maven project to build a Selenium project. 
[Click here to Download & Install Maven](https://mkyong.com/maven/how-to-install-maven-in-windows/)
- Eclipse: Eclipse is an IDE (Integrated Development Environment) that needs to be installed. One can even download eclipse packages and use them. Using an IDE helps create, execute and maintain tests or projects efficiently. If you are not comfortable with Eclipse you can use some other IDE as well. 
[Click here to Download Eclipse]( https://www.eclipse.org/downloads/)

#### Configuring Selenium using a Java Project
1. Creating a Java Project
![Create a Java project](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/SelectProject-700x407.png)
![Create a Java project](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/2.png)
2. Once the Java project is created, download the necessary **Selenium jars** as well as a **unit testing framework** such as "**TestNG**"jars manually. Go to [Selenium downloads page](https://www.selenium.dev/downloads/) and click on “Latest Stable Version”.
![Selenium driven](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/5-700x255.png)
3. Then download “**TestNG**” Jars [Click Here to download TestNG Jar](https://mvnrepository.com/artifact/org.testng/testng/6.14.3)
![TestNG](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/TestNG.png)
4.Once the [Selenium server standalone jar](https://www.browserstack.com/guide/difference-between-selenium-standalone-server-and-selenium-server) is downloaded, add it to the Selenium project. Right-click on the project created. Hover the mouse on “Build Path” and click on “Configure Build Path…”
**Remark**: The Selenium server standalone JAR contains the remote Selenium server and the client-side bindings which let you perform the testing without the need for any specific jar files.
![Build Path](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/6.png)
5.Click on “Add External JARs…” This will add the downloaded jar to the Selenium project, Select the download jar “selenium-server-standalone” and “TestNG” and click on Open.
![Add Selenium and TestNG Jar](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/SelectDownloadJar-700x440.png)
6.Verify that the “selenium-server-standalone” and “TestNG” jars are added to the java build path. Then click on Apply and Close.
![Verify Jars under java duild path](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/verifyBuildPathJar-700x503.png)
7.Verify that the downloaded jar is added under “Referenced Libraries”
![Verify Jars under reference libraries](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/Verifyjar.png)
8.Right-click on “src” and create a “package”. Once a package is created, create a java “class” under that package.
![Create a package](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/Package_and_Class.png)
9.Validate the Java project is successfully configured with Selenium
![Simple test Selenium project using Java project](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/Sample_Java_Project.png)
**Explanation of Code**
**Code Line-13 to 15**: It verifies the title of the website by navigating to the website and getting the actual website title. Then it compares the actual title with the expected title.

#### Configuring Selenium using a Maven Project
Apache Maven is a software project management and comprehension tool. It is built on the concept of the Project Object Model (POM). Maven can manage a project’s build and reporting from a central piece of information. 
1. Create a maven project by clicking on “File” in the Eclipse navigation menu. Click on “Others” and click on “Project”
![Create a maven project](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/Select_Other.png)
2.Expand the “Maven” module. Select “Maven Project” and click on “Next”, Click on “Next”, Select “maven-archetype-quickstart” and click on “Next”. Maven archetypes are project templates which can be generated for users by Maven.
![New maven project](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/Archetype-700x639.png)
3,Enter "Group Id" and "Artifact Id" and click on "Finish".
**Group Id:** Will identify your project uniquely among all project. It must follow the package name rules. This means it must contain, at least, the **domain name**.
**Artifact Id:** It is the name of the jar without a version. If you create the jar then you can choose whatever name you want with **lowercase letters**.
![New Maven Project](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/GroupID_ArtifactID.png)
4.Verify that the **“Maven Project”** is created successfully with the name **“Building_a_selenium_project”**
5.Define Maven pom.xml file
POM is stated or defined as a Project Object Model. The pom.xml file contains information related to the project such as configuration information for Maven to build the project. This includes dependencies, build directory, source directory, etc. Maven reads the pom.xml file, then executes the tests.

| Element | Description |
| ------ | ------ |
| packaging | Describes packaging type such as jar |
| name | Describes name of the maven project |
|URL	| Describes URL of the project |
|dependencies	|Describes dependencies for this project|
|dependency	|Describes a dependency. It is used inside dependencies|
|Scope	|Describes scope for this maven project|
6. Configure the Maven project with Selenium, navigate to **"www.mvnrepository.com"** and search for **"selenium server"**. Click on **Search**.
![Configure Maven Project with Selenium](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/SeleniumServerSearch-700x221.png)
7.Click on **"Selenium Server"** and select the latest stable version
![Selenium Server](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/SeleniumVersion-700x342.png)
8.Copy the dependency into pom.xml file under the dependency node
![Copy selenium dependency into pom.xml](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/SeleniumDependency-700x122.png)
9.Overview the structure of POM.xml
![POM.xml](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/POM_XML.png)
10.Verify all the required Selenium dependencies are added into Maven project.
![Maven dependencies](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/VerifyDependencies.png)
11.Create a simple program to validate that our project is successfully configured with Selenium
![Simple Selenium Project using Maven Project](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/SampleMavenProject.png)
**Explanation of Code**
**Code Line-11 to 13:** It verifies the title of the website by navigating to the website and getting the actual website title. Then, it compares the actual title with the expected title.

## Jira
Jira is a tool primarily used for bug and issue tracking. It also supports project management features for all kinds of use cases, from requirements and test case management to Agile software development.

## Integrate Jira with Selenium
### How to Create API Token in Jira
1.Create API Token in Jira through got to Jira website, then log on and click on **Profile and Settings**, then click on **Account Settings**, then click on **Security**, then click on **Create and manage API tokens**
![Create and manage API tokens](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/2-1-1536x843.png)
2.In the API Tokens section click on **Create API token**
![Create API tokens](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/3-1.png)
3.Enter the **Label** and click on **Create**
4.After creating the API token don’t forget to **copy and save the token in the text editor**. The token is not accessible once the pop-up disappears. The token can be used to call Jira REST API endpoints inside someone’s Selenium Jira integration sections.
### [How to connect Selenium with Jira and log defects in Jira using Selenium](https://www.browserstack.com/guide/how-to-integrate-jira-with-selenium)
1.Install the Eclipse IDE
2.Setup basic Maven Project 
3.Add required dependencies in pom.xml
4.Create basic tests using Selenium and Java, the tests are created under the package **com.demo.project**
![Test java](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/6-1.png)

**Source Code: HomePageTest.java**
```sh
// HomePageTest.java
package com.demo.project;
import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;
import java.io.File;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import com.demo.utility.JiraCreateIssue;
public class HomePageTest {
    private WebDriver driver;
    private String baseUrl;
    @BeforeClass(alwaysRun = true)
    public void setUp() throws Exception {
        File chromedriverExecutable = new File("driver/chromedriver.exe");
        System.setProperty("webdriver.chrome.driver", chromedriverExecutable.getAbsolutePath());
        driver = new ChromeDriver();
        baseUrl = "https://www.browserstack.com/";
        driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
    }
//Custom annotation explained in following sections
    @JiraCreateIssue(isCreateIssue=true) 
    @Test
    public void verifyHomepageHeaderText() throws Exception {
        driver.get(baseUrl);
        WebElement el = driver.findElement(By.xpath("//h1[1]"));
        assertEquals(el.getText(), "Browser Testing Made Easy","Wrong header text displayed in Home page");
    }
    @JiraCreateIssue(isCreateIssue=true)
    @Test
    public void verifyHomePageLogo() throws Exception {
        driver.get(baseUrl);
        WebElement el = driver.findElement(By.id("logo"));
        assertTrue(el.isDisplayed(),"The browserstack logo not displaying in home page");
    }
    @AfterClass(alwaysRun = true)
    public void tearDown() throws Exception {
        driver.quit();
    }
}
```
![Sample screen](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/7-1.png)
5.Create a utility to handle Jira issue
Let’s create a package inside the main folder **com.demo.utility**, which will contain two classes
- JiraServiceProvider: This class will have a method to create a Jira issue.
- JiraCreateIssue: This contains custom annotation code.
![Create utility](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/8-1.png)

**Source Code: JiraServiceProvider.java**
~~~
// JiraServiceProvider.java
package com.demo.utility;
import net.rcarz.Jiraclient.BasicCredentials;
import net.rcarz.Jiraclient.Field;
import net.rcarz.Jiraclient.Issue;
import net.rcarz.Jiraclient.Issue.FluentCreate;
import net.rcarz.Jiraclient.JiraClient;
import net.rcarz.Jiraclient.JiraException;
public class JiraServiceProvider {
     private JiraClient Jira;
     private String project;
     private String JiraUrl;
     public JiraServiceProvider(String JiraUrl, String username, String password, String project) {
         this.JiraUrl=JiraUrl;
         // create basic authentication object
         BasicCredentials creds = new BasicCredentials(username, password);
         // initialize the Jira client with the url and the credentials
         Jira = new JiraClient(JiraUrl, creds);
         this.project = project;
     }
    public void createJiraIssue(String issueType, String summary, String description, String reporterName) {
        try {
            //Avoid Creating Duplicate Issue
            Issue.SearchResult sr = Jira.searchIssues("summary ~ \""+summary+"\"");
            if(sr.total!=0) {
                System.out.println("Same Issue Already Exists on Jira");
                return;
            }
            //Create issue if not exists
            FluentCreate fleuntCreate = Jira.createIssue(project, issueType);
            fleuntCreate.field(Field.SUMMARY, summary);
            fleuntCreate.field(Field.DESCRIPTION, description);
            Issue newIssue = fleuntCreate.execute();
            System.out.println("********************************************");
            System.out.println("New issue created in Jira with ID: " + newIssue);
            System.out.println("New issue URL is :"+JiraUrl+"/browse/"+newIssue);
            System.out.println("*******************************************");
        } catch (JiraException e) {
            e.printStackTrace();
        }
    }
}
~~~
**Important Points to remember when creating a JiraServiceProvider object:**
- JiraUrl: This should be a company Jira URL. If someone is using the Jira cloud it will be something like: https://xyz.atlassian.net 
- username: This parameter is the login name (typically email) but depends on the configuration (ex: xyz@gmail.com)
- password: If using the Jira cloud, one must pass the API Token as a password. Using one’s login password might not work (example API token: lorelimpusm12uijk)
- project: This is the **project Key**, often named with two letters (ex: BS). Using the full project name like BrowserStack Project might not work, so always use the short version. 

**How to get project key In Jira**
- Navigate to Jira URL (https://example.atlassian.net)
- Click on Projects Menu 
- Click on View All Projects
- Choose the Desired Project 
- On Project Page, Click on Project Settings
- Look for the field Key. This is the short project Key
- Just copy and use it as a project key

**Source Code: JiraCreateIssue.java**
~~~
// JiraCreateIssue.java
package com.demo.utility;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Retention;
Retention(RetentionPolicy.RUNTIME)
public @interface JiraCreateIssue {
    boolean isCreateIssue();
}
~~~
6.Create Listener to notify test failures
Create a listener so that each time a test fails, it should automatically create the Jira issue method. This listener keeps track of test failures and executes specified code.
This example names the listener as **TestListener.java**, created inside package **com.demo.listener**.
![Test Listener](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/9-1.png)
**Source Code: TestListener.java**
~~~
//TestListener.java
package com.demo.listener;
import org.apache.commons.lang.exception.ExceptionUtils;
import org.testng.ITestContext;
import org.testng.ITestListener;
import org.testng.ITestResult;
import com.demo.utility.JiraCreateIssue;
import com.demo.utility.JiraServiceProvider;
public class TestListener implements ITestListener {
    @Override
    public void onTestFailure(ITestResult result) {
        boolean islogIssue = result.getMethod().getConstructorOrMethod().getMethod().getAnnotation(JiraCreateIssue.class).isCreateIssue();
        if (islogIssue) {
//Provide proper Jira project URL ex: https://browsertack.atlassian.net 
//Jira User name ex: browserstack@gmail.com
//API token copy from Jira dashboard ex: lorelimpusm12uijk
//Project key should be, Short name ex: BS
            JiraServiceProvider JiraServiceProvider = new JiraServiceProvider("https://example.atlassian.net",
                    "example@gmail.com", "lorelimpusm12uijk", "BS");
            String issueDescription = "Failure Reason from Automation Testing\n\n" + result.getThrowable().getMessage()
                    + "\n";
            issueDescription.concat(ExceptionUtils.getFullStackTrace(result.getThrowable()));
            String issueSummary = result.getMethod().getConstructorOrMethod().getMethod().getName()
                    + " Failed in Automation Testing";
            JiraServiceProvider.createJiraIssue("Bug", issueSummary, issueDescription, "Automated Testing");
        }
    }
    @Override
    public void onTestSkipped(ITestResult result) {
        // TODO Auto-generated method stub
    }
    @Override
    public void onTestFailedButWithinSuccessPercentage(ITestResult result) {
        // TODO Auto-generated method stub
    }
    @Override
    public void onStart(ITestContext context) {
        // TODO Auto-generated method stub
    }
    @Override
    public void onFinish(ITestContext context) {
        // TODO Auto-generated method stub
    }
    @Override
    public void onTestStart(ITestResult result) {
        // TODO Auto-generated method stub
    }
    @Override
    public void onTestSuccess(ITestResult result) {
        // TODO Auto-generated method stub
    }
}
~~~
After completion of above steps, the project looks as below:
![Finish configuration](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/10-1.png)
7.Configuration the testing.xml file
Once we have all the required set up, we need to have a testng.xml file configured to run our tests. Our sample xml file looks like below. (You can use your existing testng.xml file to run your tests).
**Source Code: Sample testng.xml file**
~~~
<?xml version="1.0" encoding="UTF-8"?>
<suite name="Default suite" parallel="methods" verbose="3">
     <listeners>
        <listener class-name="com.demo.listener.TestListener" />
    </listeners>
     <test name=" First test" skipfailedinvocationcounts="false">
         <classes>
             <class name="com.demo.project.HomePageTest">             
             </class>
         </classes>
     </test>
</suite>
~~~
8.Execute your tests
Once setup is complete, execute the tests. Once tests are executed, any failures should automatically create a Jira ticket. After execution, view the result in the console. The console will return as output – Ticket ID/Issue ID (ex: 32 in below image). It will also offer the URL to navigate to that particular issue.
![Issue in console](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/11-1.png)
9.Ensure ticket created in Jira
Let’s navigate to the Jira dashboard to check whether an issue has been created or not. In the Jira dashboard, click on the project dashboard to see if a new issue has been created, as shown below:
![Issue in Jira](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2021/08/12-1-1536x758.png)

Bear in mind [Selenium WebDriver](https://www.browserstack.com/guide/selenium-webdriver-tutorial) tests must be executed on real devices and browsers. Remember that [device fragmentation](https://www.browserstack.com/blog/understanding-browser-os-and-device-fragmentation/) is a major concern for every developer and tester. Every website has to work seamlessly on multiple device-browser-OS combinations. With [9000+ distinct devices](https://www.browserstack.com/blog/understanding-browser-os-and-device-fragmentation/) being used to access the internet globally, all software has to be optimized for different configurations, viewports, and screen resolutions.

## Xray for Jira
Xray for Jira is a Jira plugin for test management. It is designed to manage the entirety of the testing cycle from test planning to design, execution and test reporting. It uses a special type of Jira issue so any professional used to using the software will quickly feel at ease with the system.

Xray allows user to manager the creation of test plans for upcoming spints. Xray includes native cucumber test type support and an integrated automation steps library to combination of Cucumber+Selenium and Jira+Xray.

Xray supports the entire testing life cycle: test planning, test design, test execution and test reporting.

From the primary Gherkin keywords, Xray supports:
- Given
- When
- Then
- And
- But
- Feature
- Scenario
- Scenario Outline
- Examples
- Background

Besides this, Xray also supports:
- """ (Doc Strings)
- | (Data Tables)
- @ (Tags), during the .feature export process based on the labels assigned to Test issues (e.g. Scenarios/Scenario Outlines) or during the import process
- # (Comments) 

## Integration with Jenkins

![Cucumber migration workflow](https://docs.getxray.app/download/attachments/31622264/cucumber_tests_legacy_workflow.png?version=2&modificationDate=1600508372476&api=v2)

Xray enables easy integration with Jenkins through the "Xray for JIRA Jenkins Plugin", providing the means for successful Continuous Integration by allowing users to report automated testing results. 
![Release Notes](https://docs.getxray.app/display/XRAY500/Integration+with+Jenkins)
1.Install Xray for JIRA Jenkins Plungin
2.Configure the Xray for Jenkins through settings configuration page  **Manage Jenkins > Configure System > Xray for Jira configuration**.
![Xray for JIRA configuration](https://docs.getxray.app/download/attachments/68410704/configuration.png?version=3&modificationDate=1640102614456&api=v2&effects=border-simple,shadow-kn)
3.Creating a new Xray project,e.g. create a Freestyle project
![Create a Xray project](https://docs.getxray.app/download/attachments/68410704/Project.PNG?version=3&modificationDate=1640102601815&api=v2&effects=border-simple,shadow-kn)
4.Build Steps, e.g. Xray:Cucumber Features Import Task
![Build Steps](https://docs.getxray.app/download/attachments/68410704/bash_builld_var.png?version=3&modificationDate=1640102587745&api=v2)
5.Pipeline projects support
Xray for Jenkins provides support for pipelines projects, allowing you to use Xray specific tasks.
![]Pipeline projects](https://docs.getxray.app/download/attachments/68410704/pipeline%20project%20creation.jpg?version=3&modificationDate=1640102592220&api=v2&effects=border-simple,shadow-kn)
**Recommendations**
You can automatically generate your step scripts using the **Jenkins Snippet Generator**.
![Jenkins Snippet Generator](https://docs.getxray.app/download/attachments/68410704/snippet%201.jpg?version=3&modificationDate=1640102591400&api=v2&effects=border-simple,shadow-kn)
![Jenkins Snippet Generator](https://docs.getxray.app/download/attachments/68410704/snippet%202.jpg?version=3&modificationDate=1640102590592&api=v2&effects=border-simple,shadow-kn)
**Another way to configure Jira and Jenkins**
If you use a containerized version of Jenkins, or simply want to avoid creating the Jira configurations manually (using the Jenkins UI), you can use the following script in the Jenkins Script Console.
To use the script below, you just need to modify the contents of the instances and deleteOldInstances variables.
**Create new Jira instances in Xray global configuration**
```sh
import jenkins.model.Jenkins
import net.sf.json.JSONArray
import net.sf.json.JSONObject
import com.xpandit.plugins.xrayjenkins.model.HostingType
import com.xpandit.plugins.xrayjenkins.model.XrayInstance
import com.xpandit.plugins.xrayjenkins.model.ServerConfiguration
 
// true, if you want the old Jira instances removed, false otherwise.
boolean deleteOldInstances = false
 
/* Represents the Jira instances to be added to the Global Jenkins configuration.
 * - name: the name of the Jira instance to be displayed to the users.
 * - hostingType: must be one of two values. 'SERVER' for Server or Data Center instances OR 'CLOUD' for cloud instances.
 * - url: [ONLY FOR SERVER INSTANCES] the base URL/IP of the Jira server address.
 * - credentialId: [OPTIONAL] the credential ID from the 'Credentials' plugin that will be used to authenticate the jira REST API requests.
 */
JSONArray instances = [
        [
                name: 'my Jira server',
                hostingType: 'SERVER',
                url: 'http://example.com',
                credentialId: 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' // Credential ID from the 'Credentials' plugin.
        ],
        [
                name: 'my Jira cloud',
                hostingType: 'CLOUD',
                credentialId: 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' // Credential ID from the 'Credentials' plugin.
        ]
] as JSONArray
 
// ~~~ Saves the new Jira instances into the Jenkins global configuration ~~~
ServerConfiguration config = ServerConfiguration.get()
List<XrayInstance> xrayInstances = new ArrayList<XrayInstance>()
 
instances.each {instance ->
    String name = instance.optString('name', '')
    String hostingTypeString = instance.optString('hostingType', '')
    String url = instance.optString('url', '')
    String credentialId = instance.optString('credentialId', null)
 
    HostingType hostingType = hostingTypeString == 'CLOUD' ? HostingType.CLOUD : HostingType.SERVER
 
    xrayInstances.add(new XrayInstance(null, name, hostingType, url, credentialId))
}
 
List<XrayInstance> oldXrayInstances = config.getServerInstances()
if (!deleteOldInstances && oldXrayInstances != null) {
    xrayInstances.addAll(oldXrayInstances)
}
 
config.setServerInstances(xrayInstances)
config.save()
 
println('Xray Jira Instances created :)')
```
#### Troubleshooting
The build process is failing with status code **403**
When you check the log, it has the following:
![Troubleshooting](https://docs.getxray.app/download/attachments/68410704/Error403.PNG?version=3&modificationDate=1640102595424&api=v2&effects=border-simple,shadow-kn)
You will need to log into Jira via the browser and provide the CAPTCHA.
![CAPTCHA](https://docs.getxray.app/download/attachments/68410704/JIRALogIn.PNG?version=3&modificationDate=1640102611118&api=v2&effects=border-simple,shadow-kn)
If you are a Jira administrator, you can go to Jira administration > User Management and reset the failed login.
![Reset login](https://docs.getxray.app/download/attachments/68410704/resetFailedLogin.PNG?version=3&modificationDate=1640102611841&api=v2&effects=border-simple,shadow-kn)
#### The Jira xxx configuration of this task was not found
If you obtain this error, probably you have migrated from an old version of this plugin. You need to open each project/job configuration and save it.
![Configuration was not found](https://docs.getxray.app/download/attachments/68410704/image2020-5-26_9-32-53.png?version=3&modificationDate=1640102586875&api=v2&effects=border-simple,shadow-kn)

## [BDD with Gherkin based framework](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Cucumber+in+Java#TestingusingCucumberinJava-UsingGitorotherVCSasmaster)
### Using Jira and Xray as master

![Jira based Cucumber workflow](https://docs.getxray.app/download/attachments/31622264/standard_cucumber_workflow.png?version=1&modificationDate=1525873696604&api=v2)

The overall flow would be something like this, assuming Git as the source code versioning system:
1. Define the story in Jira
2. Create Scenario/Scenario Outline as a Test in Jira; usually, it would be linked to an existing "requirement"/Story (i.e. created from the respective issue screen)
3. Implement the code related to Gherkin statements/steps and export to Cucumber (.feature file), for example. To start, and during development, you may need to generate/export the .feature file to your local environment
4. Import the exported .feature file in test automation project, for example in Eclipse.
5. Implementing the step definition file, for example Selenium Web Driver for the given feature file, the Cucumber .json file will be generated under target folder in the Eclipse project.
6. Using Xray, export the generated json file back to Jira

To generate .feature file(s) based on Scenarios defined in Jira (i.e. Cucumber Tests and Preconditions), we can do it directly from Jira, by the REST API or using a CI tool; we'll see that ahead in more detail.

* In a real-world scenario, importing automated tests results in Jira through Xray provided APIs will be executed in conjunction with CI/CD tools, like Jenkins. 

![Jira and Xray as master](https://docs.getxray.app/download/attachments/31622111/image2020-11-9_14-21-59.png?version=1&modificationDate=1622319803832&api=v2)

### Step by step
1.Create a scenario on Jira with Cucumber statement
![Gherkin statement](https://docs.getxray.app/download/attachments/31622111/image2020-11-10_16-57-10.png?version=1&modificationDate=1622319803276&api=v2&effects=border-simple,shadow-kn)
The related statement's code is managed outside of Jira and stored in Git, for example.
The tests related code is stored under src/test directory, which itself contains several other directories. In this case, they're organized as follows:
- java/calculator: step implementation files and **test runner class**.
- The steps "glue-code" is defined in the **StepDefinitions class**.

**src/test/java/calculator/StepDefinitions.java**
~~~
package calculator;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import com.xray.tutorials.Calculator;
import static org.junit.Assert.*;
public class StepDefinitions {
    private Integer int1;
    private Integer int2;
    private Integer result;
    @Given("I have entered {int} into the calculator")
    public void i_have_entered_into_the_calculator(Integer int1) {
        this.int2 = this.int1;
        this.int1 = int1;
    }
    @When("I press add")
    public void i_press_add() {
        this.result =  Calculator.Add(this.int1, this.int2);
    }
    @When("I press multiply")
    public void i_press_multiply() {
        this.result =  Calculator.Multiply(this.int1, this.int2);
    }
    @Then("the result should be {int} on the screen")
    public void the_result_should_be_on_the_screen(Integer value) {
        assertEquals(value, this.result);
    }
}
~~~

The test runner is defined in the RunCucumberTest class. Cucumber options can be overriden from the command line, whenever executing Maven.

**src/test/java/calculator/RunCucumberTest.java**
~~~
package calculator;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;
@RunWith(Cucumber.class)
@CucumberOptions(plugin = {"pretty"})
public class RunCucumberTest {
}
~~~

You can then **export the specification of the test to a Cucumber** .feature file via the REST API, or the **Export to Cucumber** UI action from within the Test/Test Execution issue or even based on an existing saved filter. As source, you can identify Test, Test Set, Test Execution, Test Plan or "requirement" issues. A plugin for your CI tool of choice can be used to ease this task.

So, you can either:
- use one of the available CI/CD plugins (e.g. see details of [Integration with Jenkins](https://docs.getxray.app/display/XRAY500/Integration+with+Jenkins))
- use the REST API directly (more info [here](https://docs.getxray.app/display/XRAYCLOUD/Exporting+Cucumber+Tests+-+REST+v2))
**example of a shell script to export/generate .features from Xray**
~~~
#!/bin/bash
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" https://xray.cloud.getxray.app/api/v2/authenticate| tr -d '"')
curl -H "Content-Type: application/json" -X GET -H "Authorization: Bearer $token" "https://xray.cloud.getxray.app/api/v2/export/cucumber?keys=CALC-640;CALC-641" -o features.zip
rm -rf features/*.feature
unzip -o features.zip -d features
~~~
- or even use the UI (e.g. from a Test issue)
![Export to Cucumber](https://docs.getxray.app/download/attachments/31622111/image2020-11-10_17-0-10.png?version=1&modificationDate=1622319803222&api=v2&effects=border-simple,shadow-kn)

After being exported, the created .feature(s) will contain references to the Test issue key, eventually prefixed (e.g. "TEST_") depending on an Xray global setting, and the covered "requirement" issue key,  if that's the case. The naming of these files is detailed in [Generate Cucumber Features](https://docs.getxray.app/display/XRAYCLOUD/Generate+Cucumber+Features).
**features/2_CALC-640.feature**
~~~
@REQ_CALC-640
Feature: As a user, I can calculate the sum of 2 numbers
    #As a user, I can calculate the sum of 2 numbers
    #simple integer addition
    @TEST_CALC-642
    Scenario: simple integer addition
        Given I have entered 1 into the calculator
        And I have entered 2 into the calculator
        When I press add
        Then the result should be 3 on the screen
    #negative integer addition
    @TEST_CALC-643
    Scenario: negative integer addition
        Given I have entered -1 into the calculator
        And I have entered 2 into the calculator
        When I press add
        Then the result should be 1 on the screen
    #sum of two positive numbers
    @TEST_CALC-644
    Scenario Outline: sum of two positive numbers
        Given I have entered <input_1> into the calculator
        And I have entered <input_2> into the calculator
        When I press <button>
        Then the result should be <output> on the screen
         
          Examples:
            | input_1 | input_2 | button | output |
            | 20      | 30      | add    | 50     |
            | 2       | 5       | add    | 7      |
            | 0       | 40      | add    | 40     |
            | 4       | 50      | add    | 54     |
            | 5       | 50      | add    | 55     |
~~~

To run the tests and produce a Cucumber JSON report, we can run Maven and specify that we want a report in Cucumber JSON format and that it should process .features from the features/ directory.

**Please note**
As the report format in Cucumber JSON is being deprecated in favour of Cucumber Messages, a protocol buffer based implementation, the previous command needs to be adapted slightly.

The report starts by being generated in Cucumber Messages, using "-f message" argument, and then converted to the legacy Cucumber JSON report using the tool cucumber-json-formatter.
~~~
mvn compile test -Dcucumber.plugin="json:report.ndjson" -Dcucumber.features="features/"
cat report.ndjson | cucumber-json-formatter --format ndjson > report.json
~~~

### Using Git or other VCS as master

![VCS with Cucumber](https://docs.getxray.app/download/attachments/31622264/cucumber_tests_legacy_vcs_workflow2.png?version=2&modificationDate=1600508375329&api=v2)

The overall flow would be something like this:
1. look at the existing "requirement"/Story issue keys to guide your testing; keep their issue keys
2. specify Cucumber/Gherkin .feature files in your IDE supporting Cucumber/Gherkin and store it in Git, for example. Meanwhile, you may decide to import/synchronize them Xray to provision or update corresponding Test and/or Precondition entities
3. implement the code related to Gherkin statements/steps and store it in Git, for example. 
4. commit code and .feature file(s) to Git
5. checkout the code from Git
6. import/synchronize the .feature files to Xray to provision or update corresponding Test and/or Precondition entities
7. export/generate .feature files from Jira, so that they contain references to Tests and requirements in Jira
8. run the tests in the CI
9. obtain the report in Cucumber JSON format
10. import the results back to Jira

![Git or other VCS as master](https://docs.getxray.app/download/attachments/31622111/image2020-11-10_14-46-35.png?version=1&modificationDate=1622319804448&api=v2)

**Step by step**
1. All starts with a user story or some sort of “requirement” that you wish to validate. This is materialized as a Jira issue and identified by the corresponding issue key (e.g. CALC-640).
2. Having those to guide testing, we could then describe and implement the Cucumber test scenarios using our favourite IDE.
![IDE Interface](https://docs.getxray.app/download/attachments/31622111/image2020-11-11_10-0-42.png?version=1&modificationDate=1622319803033&api=v2&effects=border-simple,shadow-kn)

   [dill]: <https://github.com/joemccann/dillinger>

