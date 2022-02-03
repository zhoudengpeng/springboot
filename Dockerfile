FROM maven:3-jdk-8 AS test
RUN mvn package -Dmaven.test.skip=true

FROM gcr.io/cloud-builders/docker
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} testspringboot.jar
ENTRYPOINT ["java","-jar","./testspringboot.jar"]