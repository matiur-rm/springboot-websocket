# Use Eclipse Temurin OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom.xml first (layer caching optimization)
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# Make the Maven wrapper executable
RUN chmod +x mvnw

# Download dependencies (offline caching)
RUN ./mvnw dependency:go-offline

# Copy source code
COPY src ./src

# Build the application (without running tests)
RUN ./mvnw clean package -DskipTests

# Expose application port (change if needed)
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "target/websocket-demo-0.0.1-SNAPSHOT.jar"]
