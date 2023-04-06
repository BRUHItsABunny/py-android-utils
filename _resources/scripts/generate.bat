@echo off
docker build -t protos .
docker run --name="protos_run" protos
docker cp protos_run:proto/proto-android-utils/android_utils_pb2.py ./androidutils/android_utils_pb2.py
docker rm protos_run
docker rmi protos
echo "BAT done"