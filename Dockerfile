FROM n8nio/n8n:latest

USER root

# 在 Alpine 裡用 apk 安裝 ffmpeg
RUN apk update && apk add --no-cache ffmpeg

USER node
