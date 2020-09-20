FROM maven:3.6.3-jdk-11 AS builder

LABEL maintainer="Jose Ignacio Martinez <gsuriv@gmail.com>"
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/

# Versioning and building
RUN export API_VERSION="1.0.1" && export API_EPOCH=`date +%s` && mvn package

FROM openjdk:11-jdk
COPY --from=builder /tmp/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
