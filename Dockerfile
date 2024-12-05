# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk17:alpine-jre

# Set the working directory to /app
WORKDIR /app

# Copy the fat jar into the container at /app
COPY /target/SpringBoot-WebApplication.jar /app

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
