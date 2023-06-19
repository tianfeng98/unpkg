
# 设置基础镜像,如果本地没有该镜像，会从Docker.io服务器pull镜像
FROM node:16-alpine

# 设置时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

# 创建$appName目录
RUN mkdir -p /app

# 设置工作目录
WORKDIR /app

COPY . .

RUN npm install && npm run build && npm cache clean --force

# 暴露容器端口
EXPOSE 8080

# 启动node应用
CMD [ "node", "server.js" ]
