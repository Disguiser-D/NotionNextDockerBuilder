# 指定基础镜像为 Node.js 镜像
FROM node:22.9.0

# 将当前目录下的所有文件复制到容器内的 /app 目录
COPY. /app

# 切换到 /app 目录并进行构建
WORKDIR /app
RUN npm install
RUN npm run build

# 运行项目
EXPOSE 3000
CMD ["npm", "run", "start"]