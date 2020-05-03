FROM openjdk:14-jdk-alpine3.10 as builder
RUN apk add --no-cache maven
WORKDIR /java
COPY . /java
RUN mvn package -Dmaven.test.skip=true

FROM gcr.io/distroless/java
WORKDIR /home/application/java
COPY --from=builder "/java/target/spring-boot-0.0.1-SNAPSHOT.jar" .
EXPOSE 8085
ENTRYPOINT [ "java", "-Djava.security.egd=file:/dev/./urandom", "-Dserver.port=8085", "-jar", "/home/application/java/spring-boot-0.0.1-SNAPSHOT.jar"]