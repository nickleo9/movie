FROM n8nio/n8n:1.108.2

USER root

# 安裝 FFmpeg 和相關工具
RUN apk update && apk add --no-cache \
    ffmpeg \
    ffmpeg-dev \
    python3 \
    py3-pip \
    && rm -rf /var/cache/apk/*

USER node
