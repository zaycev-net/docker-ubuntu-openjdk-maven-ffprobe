FROM zaycevnet/docker-ubuntu-openjdk-maven:ubuntu20.04.2-openjdk15.0.2-maven3.6.3-borg
# https://github.com/zaycev-net/docker-ubuntu-openjdk-maven/blob/master/Dockerfile

RUN set -eux; \
    apt-get update; \
    apt-get install -y software-properties-common; \
    apt-get install -y ffmpeg; \
    rm -rf /var/lib/apt/lists/*; \
    # \
    ffprobe -version; \
    ffmpeg -version;

CMD ["bash"]
