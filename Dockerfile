FROM maven:3-jdk-8 AS test
COPY ./ /tmp/springboot
RUN cd /tmp/springboot/ && mvn package -Dmaven.test.skip=true
ENTRYPOINT ["java","-jar","/tmp/springboot/target/springboot-0.0.1-SNAPSHOT.jar"]