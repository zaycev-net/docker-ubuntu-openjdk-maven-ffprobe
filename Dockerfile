FROM zaycevnet/docker-ubuntu-openjdk-maven:ubuntu18.04-openjdk13-maven3.6
# https://github.com/zaycev-net/docker-ubuntu-openjdk-maven/blob/master/Dockerfile

RUN set -eux; \
    apt-get update; \
    apt-get install -y software-properties-common; \
    add-apt-repository ppa:jonathonf/ffmpeg-4; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg; \
    rm -rf /var/lib/apt/lists/*; \
    # \
    ffprobe -version;

CMD ["bash"]
