FROM ghcr.io/bunnymediaserver/proto-builder:v0.0.1 AS builder
WORKDIR /proto

# Copy our repo
COPY . ./

# Setup general includes
ENV PROTO_INC "-I ./ \
  -I ../ \
  -I ../../"

ENV PROTOC_CMD "protoc ${PROTO_INC} --python_out=. ./*.proto"
# Generate
RUN ls -R
RUN cd /proto/proto-android-utils/ && ${PROTOC_CMD}
RUN ls -R

CMD ["/bin/sh", "-c", "echo Docker done"]