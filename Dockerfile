FROM n8nio/n8n:1.108.2

USER root

# Alpine Linux 安裝 ffmpeg
RUN apk update && apk add --no-cache ffmpeg

USER node
