FROM openjdk:11

RUN MKDIR /app/authservice
WORKDIR /app/authservice

COPY /target/*.jar /app/authservice/app.jar
EXPOSE 8040
# RUN ["mvnw","clean"]
# RUN ["mvnw" "install"]
ENTRYPOINT ["java","-jar","/app/authservice/app.jar"]