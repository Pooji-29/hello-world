# Use official Java image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy Java file into container
COPY HelloWorld.java .

# Compile the Java file
RUN javac HelloWorld.java

# Run the program
CMD ["java", "HelloWorld"]