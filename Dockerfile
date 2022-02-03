FROM maven:3-jdk-8 AS test
COPY ./ /tmp/springboot
RUN cd /tmp/springboot/ && mvn package -Dmaven.test.skip=true

FROM gcr.io/cloud-builders/docker
ARG JAR_FILE=/tmp/springboot/target/springboot-0.0.1-SNAPSHOT.jar
COPY --from=test ${JAR_FILE} testspringboot.jar
ENTRYPOINT ["java","-jar","./testspringboot.jar"]