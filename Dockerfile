FROM openjdk:8-jdk-alpine
ADD ./target/spring-security-oauth-server.jar app.jar
ENV JAVA_OPTS=""

EXPOSE 8081
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar

