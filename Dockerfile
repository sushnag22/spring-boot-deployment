# Use the OpenJDK 11 as the base image
FROM openjdk:11

# Path to JAR file
ARG JAR_FILE=target/*.jar

# Copy the entire project, recursively into the container for the build
COPY ${JAR_FILE} app.jar

# Command to run the Spring Boot application from the JAR file
ENTRYPOINT ["java","-jar","/app.jar"]