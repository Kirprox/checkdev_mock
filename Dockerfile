FROM maven:3.9.6-eclipse-temurin-17

RUN mkdir checkdev_mock

WORKDIR checkdev_mock

COPY . .

RUN mvn package -Dmaven.test.skip=true

CMD ["java", "-jar", "target/mock-1.0.0.jar"]