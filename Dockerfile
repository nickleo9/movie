# N8N with FFmpeg Docker Configuration
# 作者：Nick Chang｜nickleo051216@gmail.com｜0932-684-051
# 個人網站：ZN Studio｜https://portaly.cc/zn.studio
# Threads： ZN Studio ( @nickai216 )｜https://www.threads.com/@nickai216
# Line 社群：https://reurl.cc/1OZNAY
# Line OA：https://lin.ee/Faz0doj

FROM n8nio/n8n:1.108.2

# 切換到 root 用戶以安裝套件
USER root

# 更新套件列表並安裝 ffmpeg
# Alpine Linux 使用 apk 作為套件管理器
RUN apk update && \
    apk add --no-cache \
    ffmpeg \
    ffmpeg-dev \
    && rm -rf /var/cache/apk/*

# 切換回 node 用戶（n8n 的預設用戶）
USER node

# 設置工作目錄
WORKDIR /home/node

# 暴露 n8n 的預設端口
EXPOSE 5678

# 啟動 n8n
CMD ["n8n"]
