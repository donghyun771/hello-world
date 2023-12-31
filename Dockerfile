#!/bin/bash

# base 이미지 설정
FROM openjdk:17-alpine

# jar 파일 위치를 변수로 설정
ARG JAR_FILE=build\libs\hello-world-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} hello-world-0.0.1-SNAPSHOT.jar

# 외부 호스트 8080 포트로 노출
EXPOSE 8080

# 실행 명령어
ENTRYPOINT ["java", "-jar", "/hello-world-0.0.1-SNAPSHOT.jar"]