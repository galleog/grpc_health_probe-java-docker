FROM openjdk:8-jre-alpine

RUN apk add --no-cache curl
RUN cd /usr/bin && \
    curl -L https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/v0.2.1/grpc_health_probe-linux-amd64 -o grpc_health_probe && \
    chmod u+x grpc_health_probe
