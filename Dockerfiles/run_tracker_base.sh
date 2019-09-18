sudo docker pull alexwitt23/tracker_base:latest

if [ $# -eq 0 ] ; then
  sudo docker run --runtime=nvidia -ti --net=host --ipc=host -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    alexwitt23/tracker_base:latest /bin/bash
else 
  sudo docker run --runtime=nvidia -ti --net=host --ipc=host -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $1:/data/sources/host \
  alexwitt23/tracker_base:latest /bin/bash

fi
