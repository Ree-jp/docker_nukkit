FROM openjdk:8-jre-slim
LABEL maintainer="Ree-jp <mail@ree-jp.net>"

# add user
RUN useradd --user-group \
            --no-create-home \
            --home-dir /data \
            --shell /usr/sbin/nologin \
            minecraft

# port open
EXPOSE 19132

# wget install
RUN apt-get update && apt-get install -y wget

# server run directory
RUN mkdir /data
RUN chown -R minecraft:minecraft /data
USER minecraft:minecraft
VOLUME /data
WORKDIR /data

# get nukkit
RUN wget -o server.jar https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar

# run
CMD [ "java", "-jar", "/data/server.jar" ]
