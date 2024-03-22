FROM openjdk:8
EXPOSE 8080
#apt install maven
#RUN mvn install clean package
# RUN mvn clean package -DskipTests -U
ADD target/springboot-crud-k8s.jar springboot-crud-k8s.jar
ENTRYPOINT ["java","-jar","/springboot-crud-k8s.jar"]
