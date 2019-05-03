# Shadowcker

Docker version of Shadow for Ubuntu

## Build

```sh
sudo docker build -t shadowcker .
```

## Run

You have to enable the capacity for the container to connect to Host X11:

```sh
xhost +
```

You can now launch the application like so:

```sh
sudo docker run --rm --name shadow -e DISPLAY -e "XAUTHORITY=~/.Xauthority" -v /home/booyaa/.Xauthority:/root/.Xauthority:rw --net=host --privileged shadowcker:latest
```

The above command works on ubuntu 19.04. You may have to make some adaptation depending of your environment.