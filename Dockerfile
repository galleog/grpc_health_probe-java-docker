FROM openjdk:8-jre-slim

ARG GRPC_HEALTH_PROBE_VERSION=v0.3.0
RUN apt-get update && apt-get install -y curl
RUN curl -L https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/$GRPC_HEALTH_PROBE_VERSION/grpc_health_probe-linux-amd64 -o /bin/grpc_health_probe && \
    chmod +x /bin/grpc_health_probe