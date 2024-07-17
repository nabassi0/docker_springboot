FROM openjdk:24-ea-6-jdk-oraclelinux9

WORKDIR /otp

ENV PORT 8181

EXPOSE 8181

COPY target/*.jar /otp/app.jar

ENTRYPOINT exec java $JAVA_OPT -jar app.jar
