# Use the OpenJDK 11 as the base image
FROM openjdk:11

# Running the application as a non-root user
RUN addgroup -S sushnag22 && adduser -S sushnag22 -G sushnag22
USER sushnag22:sushnag22

# Path to JAR file
ARG JAR_FILE=target/*.jar

# Copy the entire project, recursively into the container for the build
COPY ${JAR_FILE} app.jar

# Command to run the Spring Boot application from the JAR file
ENTRYPOINT ["java","-jar","/app.jar"]