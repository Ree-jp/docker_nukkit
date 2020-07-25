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

# server run directory
RUN mkdir /data
RUN chown -R minecraft:minecraft /data
USER minecraft:minecraft
VOLUME /data
WORKDIR /data

# Run
CMD [ "java", "-jar", "/data/server.jar" ]
