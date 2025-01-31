FROM openjdk:17
WORKDIR /app
COPY --from=user-management-builder /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
