# karate-crudtesting
This project basically covers the CRUD scenarios(POST, GET, PUT & DELETE) on REST api using karate framework and I have used Maven as build & Cucumber as reporting tool.

# Features
1. Create or POST operation is performed where the request payload is read from a resource folder, response is printed and validated.
2. Read or GET operation is performed and the response is printed and validated.
3. Update or PUT operation is performed  where the request payload is read from a resource folder, response is printed and validated.
4. Delete or DELETE operation is performed and the response is printed and validated.
5. Also, we can execute all the scenario at once.
Reports are generated at the end of every scenario execution.

# Maven
I have used Maven as build tool.

So we need two <dependencies>:

<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-apache</artifactId>
    <version>0.9.4</version>
    <scope>test</scope>
</dependency>
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit4</artifactId>
    <version>0.9.4</version>
    <scope>test</scope>
</dependency>

# IntelliJ
I have used IntelliJ as IDE for this project

# Folder Structure
As it is recommeded for karate framework to keep .feature file and .java file in same folder so I followed the same and created this structure.

The Maven tradition is to have non-Java source files in a separate src/test/resources folder structure - but we recommend that you keep them side-by-side with your *.java files. When you have a large and complex project, you will end up with a few data files (e.g. *.js, *.json, *.txt) as well and it is much more convenient to see the *.java and *.feature files and all related artifacts in the same place.

This can be easily achieved with the following tweak to your maven <build> section.

<build>
    <testResources>
        <testResource>
            <directory>src/test/java</directory>
            <excludes>
                <exclude>**/*.java</exclude>
            </excludes>
        </testResource>
    </testResources>        
    <plugins>
    ...
    </plugins>
</build>

With the above in place, you don’t have to keep switching between your src/test/java and src/test/resources folders, you can have all your test-code and artifacts under src/test/java and everything will work as expected.

# Test Execution
We can tes scenarios individually as well as we can use terminal to execute all the scenarios at once using mvn clean test command in terminal. It will generate a detailed cucumber report of all executed scenarios

# Command Line
Normally in dev mode, you will use your IDE to run a *.feature file directly or via the companion ‘runner’ JUnit Java class. When you have a ‘runner’ class in place, it would be possible to run it from the command-line as well.

Note that the mvn test command only runs test classes that follow the *Test.java naming convention by default. But you can choose a single test to run like this:

Test Reports
I have used cucumber to generate reports for this project where as we can see karate generated default reports as well.



