FROM adoptopenjdk:11-jre-openj9 as builder

WORKDIR /build
ADD . /build/

RUN ./gradlew

FROM adoptopenjdk:11-jre-openj9

COPY  --from=builder /build/build/libs/spring-sample-*[0-9T].jar /

WORKDIR /
EXPOSE 8080
CMD java -jar /spring-sample-*[0-9T].jar

COPY ./build/libs/spring-sample-*[0-9T].jar /
