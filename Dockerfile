# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM eclipse-temurin:17-jre-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the fat jar into the container at /app
COPY target/ spring-boot-web.jar/app
EXPOSE 8000
# This should not be changed
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
