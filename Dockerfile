# Stage 1: Build the Maven project
FROM maven:3.9.6-eclipse-temurin-17 AS builder

# Create app directory inside the container
WORKDIR /usr/src/mymaven

# Copy all files into the container
COPY . .

# Build the project, skipping tests for faster build
RUN mvn clean install -DskipTests

# Stage 2: Prepare the Tomcat runtime image
FROM tomcat:9.0.78-jdk17

# Set working directory to Tomcat's webapps folder
WORKDIR /usr/local/tomcat/webapps

# Remove default ROOT webapp if it exists
RUN rm -rf ROOT

# Copy the built WAR file from the builder stage and rename to ROOT.war
COPY --from=builder /usr/src/mymaven/target/java-tomcat-maven-example.war ROOT.war
