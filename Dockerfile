# Use official Java image
FROM eclipse-temurin:17-jdk

# Set working directory inside container
WORKDIR /app

# Copy Java file into container
COPY Hello-world.java .

# Compile the Java file
RUN javac Hello-world.java

# Run the program
CMD ["java", "Hello-world"]
