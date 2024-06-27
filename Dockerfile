FROM maven:3.8.5-openjdk-17

# Set the working directory
WORKDIR /app

# Verify Java version
RUN java -version

# Copy the entire project
COPY . .

# Build the project
RUN mvn package -DskipTests

# Expose the port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "target/hellocd-0.0.1-SNAPSHOT.jar"]
