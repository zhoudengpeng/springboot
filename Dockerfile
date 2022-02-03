FROM gcr.io/cloud-builders/docker
RUN mvn package -Dmaven.test.skip=true
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} testspringboot.jar
ENTRYPOINT ["java","-jar","./testspringboot.jar"]