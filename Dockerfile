FROM openjdk:8u191-jre-alpine
EXPOSE 8080
COPY target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar /
ENTRYPOINT [ "java", "-Djava.security.egd=file:/dev/./urandom" , "-jar", "spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar", "--spring.profiles.active=mysql" ]