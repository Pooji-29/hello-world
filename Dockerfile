# Use official Java image
FROM eclipse-temurin:17-jdk

# Set working directory inside container
WORKDIR /app

# Copy Java file into container
COPY HelloWorld.java .

# Compile the Java file
RUN javac HelloWorld.java

# Run the program
CMD ["java", "HelloWorld"]
