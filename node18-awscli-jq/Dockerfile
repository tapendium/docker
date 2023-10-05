ARG NODE_VERSION=18.18.0
FROM node:${NODE_VERSION}

# zip
RUN apt-get update && apt-get install -y zip && rm -rf /var/lib/apt/lists/*

# aws
ARG TARGETPLATFORM
RUN echo "${TARGETPLATFORM}"
RUN if (echo "${TARGETPLATFORM}" | grep arm64); \
    then curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2-aarch64.zip" && unzip awscliv2-aarch64.zip; \
    else curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2-x86_64.zip" && unzip awscliv2-x86_64.zip; \
    fi
RUN ./aws/install
RUN aws --version

# jq
RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends jq && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
