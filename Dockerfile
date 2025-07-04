FROM public.ecr.aws/docker/library/gradle:7.6.3-jdk17-alpine AS build
ENV GRADLE_USER_HOME=/home/gradle/.gradle
WORKDIR /home/gradle/project
COPY --chown=gradle:gradle . .
RUN gradle clean build --no-daemon --no-build-cache
