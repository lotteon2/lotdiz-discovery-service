FROM openjdk:11-slim-buster

WORKDIR /app

ARG ORIGINAL_JAR_FILE=./build/libs/discovery-service-1.0.0.jar

COPY ${ORIGINAL_JAR_FILE} discovery-service.jar

ENV DEFAULT_PORT 8761

EXPOSE ${DEFAULT_PORT}

CMD ["java", "-jar", "/app/discovery-service.jar"]
