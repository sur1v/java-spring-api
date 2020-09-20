# Buildtime
FROM maven:3.6.3-jdk-11 AS builder
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/

# Versioning and building
RUN export API_VERSION="1.0.1" && export API_EPOCH=`date +%s` && mvn package -Dmaven.test.skip=true
 
# Runtime
FROM openjdk:11-jdk
COPY --from=builder /tmp/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]