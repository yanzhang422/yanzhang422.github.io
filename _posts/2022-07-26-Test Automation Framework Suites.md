# Courses
## Test Automation Framework (Spring Boot+Selenium+BDD)
It is an automation framework to test Springboot application with Cucumber, Rest Assured and TestNG
![SpringBoot Testing with Cucumber and TestNG](https://qaautomationexpert.files.wordpress.com/2022/06/image-75.png?w=1200)

### Springboot
**Spring Boot** is an open-source micro-framework (**creaete microservice**) maintained by a company called Pivotal. It provides Java developers with a platform to get started with an auto-configurable production-grade Spring application. With it, developers can get started quickly without losing time on preparing and configuring their Spring application.

#### Microservices
Microservices are an architectural and organizational approach to software development where software is composed of small independent services that communicate over well-defined APIs. These services are owned by small, self-contained teams.

**Benefits of Microservices**
- Agility
Microservices foster an organization of small, independent teams that take ownership of their services. 
- Flexible Scaling
Microservices allow each service to be independently scaled to meet demand for the application feature it supports.
- Easy Deployment
Microservices enable continuous integration and continuous delivery, making it easy to try out new ideas and to roll back if something doesn’t work. 
- Technological Freedom
Microservices architectures don’t follow a “one size fits all” approach. Teams have the freedom to choose the best tool to solve their specific problems.
- Reusable Code
Dividing software into small, well-defined modules enables teams to use functions for multiple purposes.
- Resilience
Service independence increases an application’s resistance to failure. 

### TestNG
**TestNG (Test Next Generais a testing tion)** inspired from JUnit and NUnit, but introducing some new functionalities that make it more powerful and easier to use.

### Rest-Assured
REST Assured is a Java DSL for simplifying testing of REST based services built on top of HTTP Builder. It supports POST, GET, PUT, DELETE, OPTIONS, PATCH and HEAD requests and can be used to validate and verify the response of these requests.

Rest-Assured library also provides the ability to validate the HTTP Responses received from the server. For e.g. we can verify the Status code, Status message, Headers and even the Body of the response. This makes Rest-Assured a very flexible library that can be used for testing.

### Framework Requirement
- Springboot – 2.5.2
- Java 11
- JUnit – 4.12
- TestNG - 7.3.4
- Maven – 3.8.1
- RestAssured – 5.1.1

### Step by Step
1. Add SpringbootTest, Rest-Assured, JUnit, and Cucumber dependencies to the Maven project
![Structure of SpringBoot application](https://qaautomationexpert.files.wordpress.com/2022/07/image.png)

**SprtingBootRestServiceApplication.java**
~~~
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
 
@SpringBootApplication
public class SpringBootRestServiceApplication {
    public static void main(String[] args) {
         SpringApplication.run(SpringBootRestServiceApplication.class, args);
    }
}
~~~

**Student.java**
~~~
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
 
@Entity
public class Student {
    @Id
    @GeneratedValue
    private Long id;
 
    @NotNull
    @Size(min = 4, message = "Name should have atleast 4 characters")
    private String name;
 
    @NotBlank(message = "passportNumber is mandatory")
    private String passportNumber;
 
    public Student() {
        super();
    }
     public Student(Long id, String name, String passportNumber) {
        super();
        this.id = id;
        this.name = name;
        this.passportNumber = passportNumber;
    }
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassportNumber() {
        return passportNumber;
    }
    public void setPassportNumber(String passportNumber) {
        this.passportNumber = passportNumber;
    }
}
~~~

**StudentRepository.java**
~~~
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
 
@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{

    
}
~~~

**StudentController.java**
~~~
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import java.net.URI;
import java.util.List;
import java.util.Optional;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
 
@RestController
public class StudentController {
 
    @Autowired
    private StudentRepository studentRepository;
 
    @GetMapping("/students")
    public List<Student> retrieveAllStudents() {
        return studentRepository.findAll();
    }
 
    @GetMapping("/students/{id}")
    public EntityModel<Student> retrieveStudent(@PathVariable long id) {
        Optional<Student> student = studentRepository.findById(id);
 
        if (!student.isPresent())
            throw new StudentNotFoundException("id-" + id);
 
        EntityModel<Student> resource = EntityModel.of(student.get());
 
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).retrieveAllStudents());
 
        resource.add(linkTo.withRel("all-students"));
 
        return resource;
    }
 
    @PostMapping("/students")
    public ResponseEntity<Object> createStudent(@Valid @RequestBody Student student) {
        Student savedStudent = studentRepository.save(student);
 
        URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}")
                .buildAndExpand(savedStudent.getId()).toUri();
 
        return ResponseEntity.created(location).build();
 
    }
}
~~~

**application.properties**
Spring Boot automatically loads the application.properties whenever it starts up. You can de-reference values from the property file in the java code through the environment.
~~~
spring.jpa.defer-datasource-initialization=true
~~~

**data.sql**
Data is loaded from data.sql into the Student table. Spring Boot would execute this script after the tables are created from the entities.
~~~
insert into student values(10001,'Annie', 'E1234567');
insert into student values(20001,'John', 'A1234568');
insert into student values(30001,'David','C1232268');
insert into student values(40001,'Amy','D213458');
~~~

**Add SpringbootTest, Cucumber, Rest-Assured, and TestNG dependencies to the project (Maven project)**
~~~
<properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <rest-assured.version>5.1.1</rest-assured.version>
        <cucumber.version>7.3.4</cucumber.version>
    </properties>
 
<dependencies>
         
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-test</artifactId>
            <scope>test</scope>
        </dependency>
 
        <dependency>
            <groupId>io.rest-assured</groupId>
            <artifactId>rest-assured</artifactId>
            <version>${rest-assured.version}</version>
            <scope>test</scope>
        </dependency>
 
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-java</artifactId>
            <version>${cucumber.version}</version>
        </dependency>
 
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-testng</artifactId>
            <version>${cucumber.version}</version>
            <scope>test</scope>
        </dependency>
 
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-spring</artifactId>
            <version>${cucumber.version}</version>
            <scope>test</scope>
        </dependency>
 
</dependencies>
~~~

2.Create a source folder src/test/resources and create a feature file under src/test/resources
By default, the Maven project has a **src/test/java** directory only. Create a new Source Folder under **src/test** with the name of **resources**. Create a folder name as **Features** within the **src/test/resources** directory.
![Create features folder](https://qaautomationexpert.files.wordpress.com/2022/06/image-88.png)

**Create a feature file** to test the Springboot application
~~~
Feature: Verify springboot application using Cucumber and TestNG
 
  @ReceiveUserDetails
  Scenario Outline: Send a valid Request to get user details
    Given I send a request to the URL "/students" to get user details
    Then The response will return status 200
    And The response contains id <studentID> and names "<studentNames>" and passport_no "<studentPassportNo>"
 
    Examples:
      |studentID    |studentNames  |studentPassportNo|
      |10001        |Annie         |E1234567         |
      |20001        |John          |A1234568         |
      |30001        |David         |C1232268         |
      |40001        |Amy           |D213458          |
       
    
  @CreateUser
  Scenario: Send a valid Request to create a user 
    Given I send a request to the URL "/students" to create a user with name "Annie" and passportNo "E1234567"
    Then The response will return status 201
    And Resend the request to the URL "/students" and the response returned contains name "Annie" and passport_no "E1234567"
~~~

3.Create the Step **Definition class** or Glue Code for the Test Scenario under src/test/java
![Definition class](https://qaautomationexpert.files.wordpress.com/2022/06/image-89.png)

**Definition file details**
~~~
import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.containsString;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.hasItem;
import org.json.JSONObject;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.web.server.LocalServerPort;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.spring.CucumberContextConfiguration;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.ValidatableResponse;
import io.restassured.specification.RequestSpecification;
 
@CucumberContextConfiguration
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class SpringbootDefinitions {
 
    private final static String BASE_URI = "http://localhost";
 
    @LocalServerPort
    private int port;
 
    private ValidatableResponse validatableResponse, validatableResponse1;
 
    private void configureRestAssured() {
        RestAssured.baseURI = BASE_URI;
        RestAssured.port = port;
    }
 
    protected RequestSpecification requestSpecification() {
        configureRestAssured();
        return given();
    }
 
    @Given("I send a request to the URL {string} to get user details")
    public void getStudentDetails(String endpoint) throws Throwable {
        validatableResponse = requestSpecification().contentType(ContentType.JSON).when().get(endpoint).then();
        System.out.println("RESPONSE :" + validatableResponse.extract().asString());
    }
 
    @Given("I send a request to the URL {string} to create a user with name {string} and passportNo {string}")
    public void createStudent(String endpoint, String studentName, String studentPassportNumber) throws Throwable {
 
        JSONObject student = new JSONObject();
        student.put("name", studentName);
        student.put("passportNumber", studentPassportNumber);
 
        validatableResponse = requestSpecification().contentType(ContentType.JSON).body(student.toString()).when()
                .post(endpoint).then();
        System.out.println("RESPONSE :" + validatableResponse.extract().asString());
    }
 
    @Then("The response will return status {int}")
    public void verifyStatusCodeResponse(int status) {
        validatableResponse.assertThat().statusCode(equalTo(status));
 
    }
 
    @Then("The response contains id {int} and names {string} and passport_no {string}")
    public void verifyResponse(int id, String studentName, String passportNo) {
        validatableResponse.assertThat().body("id", hasItem(id)).body(containsString(studentName))
                .body(containsString(passportNo));
 
    }
 
    @Then("Resend the request to the URL {string} and the response returned contains name {string} and passport_no {string}")
    public void verifyNewStudent(String endpoint, String studentName, String passportNo) {
 
        validatableResponse1 = requestSpecification().contentType(ContentType.JSON).when().get(endpoint).then();
        System.out.println("RESPONSE :" + validatableResponse1.extract().asString());
        validatableResponse1.assertThat().body(containsString(studentName)).body(containsString(passportNo));
 
    }
}
~~~

To make Cucumber aware of your test configuration you can annotate a configuration class on your glue path with **@CucumberContextConfiguration** and with one of the following annotations: **@ContextConfiguration, @ContextHierarchy**, or **@BootstrapWith**.It is imported from:
~~~
import io.cucumber.spring.CucumberContextConfiguration;
~~~

As we are using SpringBoot, we are annotating the configuration class with **@SpringBootTest**. It is imported from:
~~~
import org.springframework.boot.test.context.SpringBootTest;
~~~

By default, **@SpringBootTest** does not start the webEnvironment to refine further how your tests run. It has several options: **MOCK(default), RANDOM_PORT, DEFINED_PORT, NONE**.

RANDOM_PORT loads a WebServerApplicationContext and provides a real web environment. The embedded server is started and listens on a random port. **LocalServerPort** is imported from the package:
~~~
import org.springframework.boot.web.server.LocalServerPort;
~~~

4.Create a Cucumber TestNG Runner class under src/test/java
A runner will help us to run the feature file and acts as an interlink between the feature file and StepDefinition Class. The TestRunner should be created within the directory **src/test/java**.
![Cucumber TestNG](https://qaautomationexpert.files.wordpress.com/2022/06/image-90.png)
~~~
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
 
@CucumberOptions(features = {"src/test/resources/Features"}, glue = {"com.example.demo.definitions"})
public class CucumberRunnerTests extends AbstractTestNGCucumberTests {
 
}
~~~
The **@CucumberOptions** annotation is responsible for pointing to the right feature package, configuring the plugin for a better reporting of tests in the console output, and specifying the package where extra glue classes may be found. We use it to load configuration and classes that are shared between tests.

5.Run the tests from Cucumber Test Runner
You can execute the test script by right-clicking on **TestRunner class -> Run As TestNG** in Eclipse. In case you are using IntelliJ, select **“Run CucumberRunnerTests“**. SpringBootTest creates an application context containing all the objects we need for the Integration Testing It, starts the embedded server, creates a web environment, and then enables methods to do Integration testing.
![Run from Cucumber Test Runner](https://qaautomationexpert.files.wordpress.com/2022/06/image-80.png?w=1200)

6.Run the tests from Command Line
Use the below command to run the tests through the command line.
~~~
mvn clean test
~~~
![Execute from command line](https://qaautomationexpert.files.wordpress.com/2022/06/image-81.png?w=1200)

7.Run the tests from TestNG
Create a testng.xml in the project as shown below:
~~~
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd">
<suite name = "Suite1">
  <test name = "SpringBoot Cucumber TestNG Demo">
    <classes>
          <class name = "com.example.demo.runner.CucumberRunnerTests"/>
     </classes>  
   </test>
</suite>
~~~

8.Generation of TestNG Reports
TestNG generates the various types of reports under **test-output** folder like **emailable-report.html, index.html, testng-results.xml**.
![Generate TestNG Reports](https://qaautomationexpert.files.wordpress.com/2022/06/image-82.png)

We are interested in the **’emailable-report.html’** report. Open “emailable-report.html”, as this is an HTML report, and open it with the browser. The below image shows emailable-report.html.
![Emailable Report html](https://qaautomationexpert.files.wordpress.com/2022/06/image-83.png)

TestNG also produce **“index.html”** report, and it resides under test-output folder. The below image shows **index.html** report.
![index.html](https://qaautomationexpert.files.wordpress.com/2022/06/image-85.png?w=1200)

9.Cucumber Report Generation
Add **cucumber.properties** under **src/test/resources** and add the below instruction in the file.
~~~
cucumber.publish.enabled=true
~~~

The link to the Cucumber Report is present in the execution status.
![Cucumber report](https://qaautomationexpert.files.wordpress.com/2022/06/image-87.png?w=1200)

Below is the image of the Cucumber Report generated using Cucumber Service.
![Cucumber report generate by cucumber service](https://qaautomationexpert.files.wordpress.com/2022/06/image-86.png?w=1050)

Refer to [GitHub](https://github.com/vibssingh/SpringBoot-Cucumber-TestNG) for source code.

## Selenium+Spring Boot+Cucumber+Junit 5
### Requirement
- Java 17
- Selenium 4.x
- JUnit 5.x (Jupiter)
- Cucumber 7.x
- Spring Boot 2.6.4

 ### Step by Step 
It is similar to previous framework with TestNG, more detailed steps can following in [here](https://www.swtestacademy.com/selenium-spring-boot-cucumber-junit5-project/).

Refer to [GitHub](https://github.com/swtestacademy/selenium-springboot/tree/junit-springboot-selenium) for source code.

## Gwen and Selenium
A Gwen is an automate web testing and robotic processing with Gherkin [feature specifications](https://cucumber.io/docs/gherkin/reference/). It embedded selenium engine executes to automate the browsers. Automation is achieved through Gherkin bindings called [meta specs](https://gweninterpreter.org/docs/get-started), composed with a prescribed DSL and maintained alongside your feature files.

### System Requirements
- Linux, Mac or Windows OS
- Chrome, Firefox, Safari, Edge or IE web browser
- Java 8 (version 1.8) or higher

### Other Requirements
- gwen
- gwen-web
- cucumber-json-merge
  - npm install -g cucumber-json-merge

### Description
We will use sample code from [gwen-web repository](https://github.com/gwen-interpreter/gwen-web), using some instructions available online.

#### Using Jira and Xray as master
**Step by Step**
1.Create a Cucumber Test, of Cucumber Type "Scenario", in Jira. The specification would be exactly the same as the one provided in the original repository
![Create Cucumber Test](https://docs.getxray.app/download/attachments/57477480/image2019-11-19_11-32-48.png?version=1&modificationDate=1583599839689&api=v2&effects=border-simple,shadow-kn)
2.After creating the Test in Jira and associating it with requirements, etc., export the specification of the test to a Cucumber .feature file via the REST API, or the Export to Cucumber 
![Export the specification to cucumber](https://docs.getxray.app/download/attachments/57477480/image2019-11-19_11-30-49.png?version=1&modificationDate=1583599839727&api=v2&effects=border-simple,shadow-kn)
3.After being exported, **the created .feature file** will be similar to the original but will contain the references to the **Test issue key** and the covered **requirement issue key**.
e.g.**features/google.feature**
~~~
@REQ_CALC-28317
Feature: Google search (gwen-web-demo)

    @TEST_CALC-28299
    Scenario: Perform a google search
        Given I have Google in my browser
        When I do a search for "Gwen automation"
        Then the first result should open a Gwen page
~~~
4.The steps correspond to reusable blocks, defined as @StepDef scenarios within **meta-feature files** like the following one. This is the automation glue.
**meta/google/Google.meta**
~~~
Feature: Google search meta
 
@StepDef
Scenario: I have Google in my browser
   Given I start a new browser
    When I navigate to "http://www.google.com"
    Then the page title should be "Google"
 
@StepDef
Scenario: I do a search for "<query>"
   Given the search field can be located by name "q"
    When I enter "$<query>" in the search field
    Then the page title should contain "$<query>"
 
@StepDef
Scenario: the first result should open a Gwen page
   Given the first match can be located by css selector ".r > a"
    When I click the first match
    Then the current URL should contain "gwen-interpreter"
~~~

In this example, we're assuming that this meta-feature is not imported to Xray nor managed there; thus, it will probably live in the VCS. Besides the previous example, there are also [additional tests](https://github.com/gwen-interpreter/gwen-web/blob/master/features/floodio/FloodIO.feature) for interacting with a demo page, with corresponding [meta specification](https://github.com/gwen-interpreter/gwen-web/blob/master/features/floodio/FloodIO.meta).

5.After running the tests and generating the Cucumber JSON  report (e.g., [merged-test-results.json](https://docs.getxray.app/download/attachments/57477480/merged-test-results.json?version=1&modificationDate=1583599839587&api=v2)), it can be imported to Xray via the REST API or the Import Execution Results action within the Test Execution.
The [cucumber-json-merge utility](https://github.com/bitcoder/cucumber-json-merge) may be handy to merge the results of each feature.

**Edit .feature and .meta file to generate report to Jira**
~~~
./gwen -b -m meta -f json -r target/reports features
cucumber-json-merge -d target/reports/json/

# submit from the command line
BASE_URL=https://xray.cloud.xpand-it.com
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" "$BASE_URL/api/v1/authenticate"| tr -d '"')
curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"merged-test-results.json" "$BASE_URL/api/v1/import/execution/cucumber"
~~~

#### Using Git or other VCS as master
You can edit your .feature and .meta files outside of Jira (eventually storing them in your VCS using Git, for example).
**Edit .feature and .meta file to generate report to VCS using Git**
~~~
zip -r features.zip features/ -i \*.feature
BASE_URL=https://xray.cloud.xpand-it.com
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" "$BASE_URL/api/v1/authenticate"| tr -d '"')
curl -H "Content-Type: multipart/form-data" -H "Authorization: Bearer $token"  -F "file=@features.zip" "$BASE_URL/api/v1/import/feature?projectKey=CALC"
~~~

## Appium
Appium是一款自动化软件测试工具，可与本机，混合和移动Web应用程序配合使用。随着移动应用程序的增加和主要应用程序商店的竞争日益激烈，迫切需要向消费者提供高质量的应用程序。

Appium的目标是在没有SDK或重新编译的情况下自动化移动应用程序测试。Appium允许测试人员使用他们喜欢的工具和编程语言编写测试。开始使用Appium几乎不容易，这个卓越的自动化软件测试工具是开源的，并在GitHub上公开托管。

Appium已成功用于自动化大型回归测试，将手动测试用例转换为自动脚本等。因为它既支持Android又支持iOS，因此无需为每个平台学习新语言，从而节省时间并符合大多数应用开发人员的需求。

Appium是一个开源、跨平台的自动化测试工具，用于测试原生和轻量**移动应用**，支持 iOS, Android和FirefoxOS平台。Appium 驱动苹果的UIAutomation库和Android的UiAutomator框架，使用Selenium的WebDriver JSON协议。Appinm的iOS支持是基于Dan Cuellar's的iOS Auto. Appium同时绑定了Selendroid用于老的Android平台测试

Refer to [GitHub](https://github.com/appium/appium) for source code.

## Carina
Carina是一款Java自动测试框架，实现很完善、功能齐全，但文档较少，对于测试人员学习难度有要求。

Refer to [GitHub](https://github.com/qaprosoft/carina) for source code.

## Galen
Galen是一个开放源码的测试网页布局和响应设计的开源工具。Galen框架使用 selenium 来打开网页浏览器，并在页面上选择测试元素。它有一种特殊的语言来描述不同浏览器大小的网页布局。你只需要为设备和大小定义自己的标签，然后使用Galen规范语言写入页面上的每个元素。

Refer to [GitHub](https://github.com/galenframework/galen) for source code.

## Gauge
Gauge是一种相对较新的测试自动化工具，具有轻巧和跨平台的特点。它的优点在于它基于插件体系结构，因此可以与任何语言，IDE和生态系统一起使用。主要具备以下特性：
- 支持用任何程序语言来编写测试代码。在 Test Code 查看当前支持的语言
- 支持 plugin 的模块化架构
- 跨语言实现一致性。
- 简单，灵活和丰富的语法

Refer to [GitHub](https://github.com/getgauge/gauge) for source code.

## Testproject.io
如果你不熟悉软件测试自动化，并且正在寻求一个拥有强大社区的免费平台，那么Testproject.io肯定不会出错。它基于两个开源工具（Selenium和Appium）构建，其目标是吸引新测试人员，并允许他们使用常用的自动化操作运行测试。

Refer to [GitHub](https://github.com/testproject-io) for source code.

## Serenity
Serenity（以前称为Thucydides）是一个基于Java的开源测试自动化框架，可以让你使用基于webdriver单位或BDD测试编写更加灵活、更加可重用webdriver基础测试，并生成验收测试文档，它包括叙述性描述的测试，以及相应的屏幕截图，还有高级总结和聚合的测试结果。

Refer to [GitHub](https://github.com/serenity-bdd/serenity-core) for source code.

## Cucumber
Cucumber是一种流行的自动化软件测试工具，支持行为驱动开发（BDD），这是一个软件开发过程，在开发过程中实现重要的验收测试场景，以帮助组织最大限度地利用软件测试。

虽然**Cucumber最初专门用于Ruby测试**，但它现在通过各种实现支持各种不同的编程语言，包括JavaScript，Java，PHP和Lua。Cucumber还有自己的编程语言，称为Gherkin。Gherkin用于定义测试用例，旨在提供人类可读性，其目的是促进BDD实践。

Cucumber非常适合那些希望专注于最终用户体验并且甚至涉及那些无法编码的利益相关者的人。它也是免费的，易于设置，已经下载超过3000万次，使其成为世界上最流行的BDD自动化软件测试工具。

## WinAMS/CasePlayer 2
GAIO公司的覆盖率专家winAMS获得机能安全标百准ISO26262/IEC61508工具认证,是日本工业制造度领域普遍使用的**针对C/C++的单元/集成测试工具**.winAMS将通过交叉编译生成的原始代码作为评价代码,具有使用芯片仿真器进行仿真功能的测试工具.不仅可以对C/C++语言编写的程序进行逻辑水平的测试,还可以对嵌入式软件特有的依存于芯片的问题点进行确认.

## Silk Test
Silk Test是来自Microfocus的一个测试自动化工具，用于**自动化功能测试和回归测试**。它因快速、高效和高质量的测试自动化而出名。支持跨浏览器测试和移动测试。测试的主要特点是通过关键字驱动的测试，提供协作的测试设计环境。

## Squish
Squish已经成为测试自动化领域的最新热点。当涉及到全球范围的GUI测试自动化时，它是组织的首选，Squish**完全支持所有移动、桌面、web和嵌入式平台**。

## Ranorex
Ranorex是一个多功能GUI测试自动化工具，用于移动、桌面和web应用程序的端到端测试。**通过智能对象识别功能**，可以自动检测用户界面的任何变化，是该工具的突出特点，并且可以用于跨浏览器测试。

**2018 Top 5 Automation Test Tools**
![Top 5](https://github.com/yanzhang422/yanzhang422.github.io/blob/main/img/Top%205%20Automation%20Test%20Tools.png?raw=true)
## Selenium
Selenium可以说是web开发人员和测试人员中最受欢迎的自动化软件测试工具。它于2004年首次发布，从那时起它发生了很大变化。最新版本的Selenium包含几个组件，包括Selenium IDE和Selenium WebDriver。

**Selenium IDE是一个用于Selenium测试的完整集成开发环境（IDE）**，主要用于创建快速错误复制脚本和脚本，以帮助进行自动化辅助探索性测试。另一方面，**Selenium WebDriver是一个用于驱动浏览器的特定于语言的绑定的集合**，它的开发是**为了更好地支持动态网页**。Selenium与所有主流Web浏览器兼容，并支持许多流行的编程语言，包括JavaScript，Java，Ruby，Python，PHP和C＃，仅举几例。虽然Selenium可以在没有任何编程技能的情况下编写自动化测试，但复杂的测试脚本需要高级编程技能。

Selenium无疑是最流行的Web应用程序开源测试自动化框架，因为它兼容多个操作系统，所以你可以使用多种语言编写测试脚本，这也是Selenium能够脱颖而出的原因。主要具备以下特性：
- 由于集成了多种API和编码语言（包括Java，Python，.NET，C＃，Ruby等），因此高度可定制
- 跨平台，操作系统和浏览器兼容

Refer to [GitHub](https://github.com/SeleniumHQ/selenium) for source code. 

## Katalon Studio
Katalon Studio是一个基于Selenium和Appium框架构建的跨平台自动化测试解决方案。它完全免费，易于部署，其超过100,000名自动化测试人员的活跃社区创建了大量的教程和指南，使学习如何轻松使用Katalon Studio。

非程序员可以使用Katalon Studio记录测试脚本，而具有一些编程知识的自动化测试人员可以探索Katalon Studio的一些更高级的功能，并使用Groove，Java或JavaScript创建功能强大的自动化脚本。

Katalon Studio可与QA流程中的常用工具配合使用，并可集成到CI/CD流程中。还有一个简化版的Katalon Studio，名为Katalon Recorder，它可以在几秒钟内安装在Chrome和Firefox上。

Katalon Studio是一个能提供一整套功能来**实现Web，API和Mobile的全自动测试解决方案**的自动化测试平台。Katalon Studio构建于开源Selenium和Appium框架之上，通过减少学习和集成这些框架以满足自动化测试需求所需的工作量和专业知识，使团队能够快速开始测试自动化.

Refer to [GitHub](https://github.com/katalon-studio) for source code.

## UFT 
UFT（统一功能测试）前身为Quick Test Professional (QTP)，是跨平台测试自动化工具，能为软件应用程序和环境提供回归和功能测试自动化。它可以用于自动化桌面、移动、web、net、SAP、ActiveX、Flex、Delphi、Java、Oracle、Visual Basic、PowerBuilder、PeopleSoft、Siebel、Stingray等许多应用程序。这个**工具有先进的图像识别，重用测试组件和自动生成文档功能**。

UFT 使用 VB 脚本来注册测试过程和对象控制。UFT 被集成到了 Mercury 商业流程测试和 Mercury 质量中心。这个工具也支持通过 CI 集成工具如 Jenkins 来支持 CI。

## Watir
Watir 是一个基于 Ruby 库的开源的网页自动化测试工具。Watir 支持跨浏览器测试，包括 Firefox，Opera，无头浏览器和 IE。它同样支持数据驱动测试和集成 BBD 工具，比如 RSpec，Cucumber 和 Test/Unit。

## IBM Rational Functional Tester
IBM RFT 是一个功能和回归测试的数据驱动的测试平台。它支持广泛的应用如 .Net，Java，SAP，Flex 和 Ajax。RFT 使用 VB，.Net 和 Java 作为脚本语言。RFT 有一个独特的功能叫故事版测试，用户对于 AUT 的操作通过应用截图以故事版的形式记录和可视化。

另一个有趣的功能是 RFT 与 IBM Jazz 应用生命周期管理系统如 IBM Rational Team Concert 和 Rational Quality Manager 集成。

## TestComplete
TestComplete 是由 SmartBear 开发的强大的商业的网页、移动和桌面测试工具。TestComplete 支持各种脚本语言如 JavaScript，VB，Python 和 C++ 脚本。和 Katalon Studio 一样，测试员可以用 TestComplete 部署关键字驱动和数据驱动。这个工具同样提供了容易使用的记录和回放功能。

TestComplete使软件测试人员能够为web、Microsoft Windows、iOS和Android应用程序创建自动化测试。亮点在于，它可以使用自动化构建执行并行回归测试，并创建稳定的回归测试。它可以在没有人工干预的情况下自动安排和运行回归测试，大大减少了测试时间和培训成本。

像 **UTF，TestComplete 的 GUI 对象识别能力可以自动检测和更新 UI 对象**，以便当 AUT 改变时减少维护测试脚本的工作。它同样可以在 CI 过程中集成 Jenkins。

## Eggplant Functional
Eggplant Functional由Doug Simons，Jonathan Gillaspie和John McIntosh构思，并于2002年由Redstone Software首次发布。与此列表中的其他自动化软件测试工具不同，Eggplant Functional使用基于图像的方法进行测试，而不是从对象角度查看测试的应用程序。这意味着用于构建测试应用程序的技术与应用程序运行的系统无关。可以让测试员像终端用户一样与 AUT 交互。TestPlant eggPlant 和传统的测试工具在方式上完全不同：建模用户的视图而不是测试员经常看到的测试脚本视图。这让测试员只需要学习少量的编程技巧就能直观地部署自动化测试。这个工具**支持各种平台如网页，移动应用和 POS 系统**。它同样提供实验室管理和 CI 集成。

EggPlant是一个黑盒GUI测试自动化工具，提供了一系列测试自动化工具。EggPlant的**功能测试分为功能测试和负载、性能测试**。它还可以很容易地与流行的测试管理工具集成。并且，只使用一个测试脚本，EggPlant可以创建多个设备场景。

可以使用一些最流行的**持续集成和应用程序生命周期管理（ALM）工具的插件**，包括**IBM UrbanCode，Bamboo，HP Application Lifecycle Management，IBM RQM和Jenkins等**。Eggplant Functional已经获得了其智能图像识别方法的专利

## Tricentis Tosca
Tricentis Tosca 是一个基于模型的自动化测试工具，它对于连续性测试提供了相当完善的功能包括仪表盘，分析工具和支持敏捷开发的集。

Tricentis Tosca 帮助用户优化测试资产的可重用性。和许多其自动化测试工具一样，支持广泛的技术和应用如网页，移动应用和 API。Tricentis Tosca 同样支持集成管理，风险分析，和分布式执行。

## Ranorex
Ranorex 是一个相当全面的网页，移动和桌面自动化测试工具。功能包括 GUI 识别，重用测试脚本，记录／回放。无代码的测试生成对于自动化测试新手来说同样是一个非常有用的功能。

这个工具支持集成 Selenium 来进行网页测试。测试员可以通过 Selenium 网格跨平台和浏览器进行分布式执行测试。Ranorex 商用价格较低。

## Robot Framework
Robot Framework是一个基于Python的，可扩展的关键字驱动的测试自动化框架，用于端到端验收测试和验收测试驱动开发（ATDD）。它可用于测试**分布式异构应用程序**，其中验证需要涉及多种技术和接口。Robot Framework 为不同的自动化测试需求提供了不同的框架。它的测试能力可以通过 Python 和 Java 测试库得到扩展。Selenium WebDriver 是 Robot Framework 中内置的流行库。

**Robot Framework 不仅仅是网页测试工具，同样可以用来做 Android 和 iOS 的自动化测试**。对于关键字测试驱动熟悉的测试员可以轻松上手 Robot Framework。

Refer to [GitHub](https://github.com/robotframework/robotframework) for source code.


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>