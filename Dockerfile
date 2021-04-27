FROM adoptopenjdk:11-jdk-openj9
#FROM adoptopenjdk:11-jre-openj9

WORKDIR /build
ADD . /build/

RUN ./gradlew build

EXPOSE 8080
CMD java -jar /spring-sample-*[0-9T].jar

RUN cp ./build/libs/spring-sample-*[0-9T].jar /
