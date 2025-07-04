FROM public.ecr.aws/docker/library/gradle:7.6.3-jdk17-alpine AS build
ENV GRADLE_USER_HOME=/tmp/gradle
WORKDIR /home/gradle/project
COPY --chown=gradle:gradle . .
RUN gradle clean build --no-daemon

FROM eclipse-temurin:17-alpine
WORKDIR /app
COPY --from=build /home/gradle/project/build/libs/*.jar ./app.jar
CMD ["java", "-jar", "app.jar"]
