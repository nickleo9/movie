FROM n8nio/n8n:latest

# 切換到 root 才能安裝軟體
USER root

# 安裝 ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# 切回 n8n 預設使用者
USER node
