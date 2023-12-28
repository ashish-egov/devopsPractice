# Use the specified builder image
FROM openjdk:8-jre-slim

# Set the working directory in the new image
WORKDIR /app

# Copy the JAR file from the builder stage
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Define the default command to run the application
CMD ["java", "-jar", "app.jar"]
