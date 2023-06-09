docker run --gpus all --rm -it --ipc host \
    --net host \
    --volume="/dev:/dev" \
    --privileged \
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    mongo:ubuntu20.04 /sbin/init
