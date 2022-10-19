#FROM openjdk:8
#WORKDIR /app
#
#COPY .mvn/ .mvn
#COPY mvnw pom.xml ./
#RUN ./mvnw dependency:resolve
#
#COPY src ./src
#
#CMD ["./mvnw", "spring-boot:run"]




FROM openjdk:8
WORKDIR /app

RUN mvn package

COPY target/spring-docker-demo-0.0.1-SNAPSHOT.jar ./

CMD ["java", "-jar", "spring-docker-demo-0.0.1-SNAPSHOT.jar"]



