#!/bin/bash

# Create the main project directory
mkdir spring-app
cd spring-app

# Create the source directory
mkdir src
cd src

# Create the main package directory
mkdir main
cd main

# Create the example package directory
mkdir com
cd com

# Create the controller directory
mkdir example
cd example

# Create the MainController.java file
cat <<EOT >> MainController.java
package com.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class MainController {

    @GetMapping("/hello")
    public String hello() {
        return "Hello, World!";
    }

}
EOT

# Move back to the example package directory
cd ..

# Create the SpringBootApplication.java file
cat <<EOT >> SpringBootApplication.java
package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootApplication.class, args);
    }

}
EOT

# Move back to the main package directory
cd ..

# Create the resources directory
mkdir resources
cd resources

# Create the application.properties file
cat <<EOT >> application.properties
# Spring application properties
spring.application.name=ExampleApp
spring.datasource.url=jdbc:mysql://localhost:3306/exampledb
spring.datasource.username=root
spring.datasource.password=secret
EOT

# Move back to the src directory
cd ../../..

# Initialize Maven project
mvn init --batchmode -DgroupId=com.example -DartifactId=spring-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

# Move into the generated project
cd spring-app

# Replace the generated App.java with SpringBootApplication.java
rm -f src/main/java/com/example/App.java
cp ../src/main/com/example/SpringBootApplication.java src/main/java/com/example/

# Compile and package the application
mvn package

# Run the application using Maven
mvn spring-boot:run
