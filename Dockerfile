FROM openjdk:11-jre-slim
EXPOSE 8089
WORKDIR /app

RUN apt-get update && apt-get install -y curl
RUN curl -o Foyer-0.1.jar -L "http://192.168.33.10:8080/repository/maven-releases/tn/esprit/spring/Foyer/0.1/Foyer-0.1.jar"

ENTRYPOINT ["java", "-jar", "Foyer-0.1.jar"]