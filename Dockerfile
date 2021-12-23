FROM hub4.jtljia.com/base/alpine-oraclejdk8
MAINTAINER James Li <james.li@lxd.org.cn>
WORKDIR /app
ADD http://172.21.205.30/net-jar/furnish.jar .
ENV SW_AGENT_NAME=jtljia-furnish
ENV SW_AGENT_COLLECTOR_BACKEND_SERVICES='172.21.205.25:11800'
EXPOSE 8080
EXPOSE 3658
ENTRYPOINT ["java","-javaagent:/app/skywalking-agent.jar","-jar","furnish.jar","--server.port=8080"]
