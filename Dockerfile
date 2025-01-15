# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory to /app
WORKDIR /app

# Copy the fat jar into the container at /app
COPY target/ spring-boot-web.jar/app
EXPOSE 8080
# This should not be changed
ENTRYPOINT ["java", "-jar", "/spring-boot-web.jar"]
