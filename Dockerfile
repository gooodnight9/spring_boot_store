# Sử dụng OpenJDK 21 làm base
FROM openjdk:21-jdk-slim

# Đặt thư mục làm việc
WORKDIR /app

# Sao chép file JAR vào container
COPY target/*.jar /app/tony-stark-0.0.1-SNAPSHOT.jar

# Chạy ứng dụng khi container khởi động
CMD ["java", "-jar", "/app/tony-stark-0.0.1-SNAPSHOT.jar"]
