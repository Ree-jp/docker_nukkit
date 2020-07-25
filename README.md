# docker_nukkit
 dockerfile for nukkit

# how to use
```
git clone https://github.com/Ree-jp/docker_nukkit.git nukkit

docker-compose up -d
```

# build
```
docker build -t nukkit .

docker run -it -p 19132:19132/udp -v $PWD/nukkit:/data nukkit
```

# dockerHub
https://hub.docker.com/r/reejp/nukkit
