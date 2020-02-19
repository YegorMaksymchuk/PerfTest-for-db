FROM mysql:latest

ENV DATABASE_HOST=db
ENV DATABASE_USER=root
ENV DATABASE_PASSWORD=root
ENV DATABASE_NAME=jmeter_demo
ENV DATABASE_PORT=3306
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=jmeter_demo

EXPOSE 4444/tcp
EXPOSE 4444/udp

WORKDIR jmeter_agent

COPY ./initdb.sql /docker-entrypoint-initdb.d/
COPY ServerAgent ./ServerAgent
COPY jdk8u242jre ./jdk8u242jre

#ENTRYPOINT "jdk8u242jre/bin/java -jar ServerAgent/CMDRunner.jar --tool PerfMonAgent"