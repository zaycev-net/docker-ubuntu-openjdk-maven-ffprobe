FROM zaycevnet/docker-ubuntu-openjdk-maven
# https://github.com/zaycev-net/docker-ubuntu-openjdk-maven/blob/master/Dockerfile

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg; \
    rm -rf /var/lib/apt/lists/*; \
    # \
    ffprobe -version;

CMD ["bash"]
