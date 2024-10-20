FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . /app

RUN apt-get update && \
       apt-get install -y wget && \
       wget https://download.jboss.org/wildfly/24.0.1.Final/wildfly-24.0.1.Final.zip && \
       .Final\wildfly-24.0.1.Final.zip && \
       unzip wildfly-24.0.1.Final.zip && \
       mv wildfly-24.0.1.Final /opt/wildfly

EXPOSE 8861 \       # Management port
       8862         # Application port

# TODO 由于目前的项目还没有打包成 jar 包，所以暂时不需要这一步
CMD ["java", "-jar", "target/xxx.jar"]