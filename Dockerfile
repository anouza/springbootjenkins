# Spring Boot Docker file

# OpenJDK
FROM openjdk:17-jdk-slim
# Use an official Maven image as the base image
FROM maven:3.8.4-openjdk-17-slim AS build

# Directory /app - shall start with service name /<service name/<working path>
WORKDIR /springboot/app

# Copy the pom.xml and the project files to the container
COPY . .

# Build the application using Maven
RUN mvn clean package -DskipTests

# open port 8080 (app port)
EXPOSE 8080

# run app
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]