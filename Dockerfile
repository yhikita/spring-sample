FROM adoptopenjdk:11-jre-openj9

WORKDIR /
EXPOSE 8080
CMD java -jar /spring-sample-*[0-9T].jar

COPY ./build/libs/spring-sample-*[0-9T].jar /
